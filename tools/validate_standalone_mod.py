#!/usr/bin/env python3
from __future__ import annotations

import argparse
import re
from pathlib import Path
import xml.etree.ElementTree as ET

EXPECTED_MODULE_ID = "Bakumatsu_CNs_HL"
EXPECTED_DEPENDENCIES = {"Native", "SandBoxCore", "Sandbox", "Shokuho", "BakumatsuModels"}
EXPECTED_KINGDOMS = 39
LOC_PREFIX = re.compile(r"^\{=([^}]+)\}")
CJK = re.compile(r"[\u3400-\u9fff]")


def localname(tag: str) -> str:
    return tag.rsplit("}", 1)[-1]


def parse_args():
    p = argparse.ArgumentParser(description="Validate standalone Bakumatsu CN localization module")
    p.add_argument("module_dir", type=Path)
    return p.parse_args()


def fail(message: str) -> None:
    raise SystemExit(f"VALIDATION FAILED: {message}")


def main() -> None:
    args = parse_args()
    module_dir = args.module_dir.resolve()
    if not module_dir.is_dir():
        fail(f"module directory not found: {module_dir}")

    submodule = module_dir / "SubModule.xml"
    if not submodule.exists():
        fail("SubModule.xml missing")

    try:
        sm_root = ET.parse(submodule).getroot()
    except ET.ParseError as exc:
        fail(f"SubModule.xml parse error: {exc}")

    id_node = sm_root.find("Id")
    version_node = sm_root.find("Version")
    if id_node is None or id_node.get("value") != EXPECTED_MODULE_ID:
        fail(f"module Id must be {EXPECTED_MODULE_ID}")
    if version_node is None or not version_node.get("value"):
        fail("module Version missing")

    deps = {n.get("Id") for n in sm_root.findall("./DependedModules/DependedModule")}
    missing_deps = EXPECTED_DEPENDENCIES - deps
    if missing_deps:
        fail(f"missing dependencies: {sorted(missing_deps)}")

    kingdom_xml_nodes = [
        n for n in sm_root.findall("./Xmls/XmlNode/XmlName")
        if n.get("id") == "Kingdoms" and n.get("path") == "spkingdoms"
    ]
    if len(kingdom_xml_nodes) != 1:
        fail("SubModule.xml must register exactly one Kingdoms -> spkingdoms XmlName")

    languages_dir = module_dir / "ModuleData" / "Languages"
    root_lang_data = languages_dir / "language_data.xml"
    if not root_lang_data.exists():
        fail("ModuleData/Languages/language_data.xml root language manifest missing")
    try:
        root_lang = ET.parse(root_lang_data).getroot()
    except ET.ParseError as exc:
        fail(f"root language_data.xml parse error: {exc}")
    if localname(root_lang.tag) != "LanguageData" or root_lang.get("id") != "English":
        fail("root ModuleData/Languages/language_data.xml must be an English LanguageData anchor")

    cn_dir = languages_dir / "CNs"
    lang_data = cn_dir / "language_data.xml"
    if not lang_data.exists():
        fail("ModuleData/Languages/CNs/language_data.xml missing")

    try:
        lang_root = ET.parse(lang_data).getroot()
    except ET.ParseError as exc:
        fail(f"CNs language_data.xml parse error: {exc}")
    if localname(lang_root.tag) != "LanguageData" or lang_root.get("id") != "简体中文":
        fail("CNs language_data.xml must use LanguageData id=简体中文")

    referenced = []
    for node in lang_root.iter():
        if localname(node.tag) != "LanguageFile":
            continue
        rel = node.get("xml_path")
        if not rel:
            fail("LanguageFile without xml_path")
        target = languages_dir / Path(rel)
        if not target.exists():
            fail(f"language_data.xml references missing file: {rel}")
        referenced.append(target)

    if not referenced:
        fail("CNs language_data.xml references no language files")

    xml_files = sorted(module_dir.rglob("*.xml"))
    for path in xml_files:
        try:
            ET.parse(path)
        except ET.ParseError as exc:
            fail(f"XML parse error in {path.relative_to(module_dir)}: {exc}")

    seen: dict[str, Path] = {}
    duplicates = []
    empty = []
    for path in sorted(cn_dir.glob("*.xml")):
        if path.name == "language_data.xml":
            continue
        root = ET.parse(path).getroot()
        for node in root.iter():
            if localname(node.tag) != "string":
                continue
            sid = node.get("id")
            text = node.get("text")
            if not sid:
                continue
            if sid in seen:
                duplicates.append((sid, seen[sid].name, path.name))
            else:
                seen[sid] = path
            if text is None or text == "":
                empty.append((sid, path.name))
    if duplicates:
        fail(f"duplicate CN string IDs found, first examples: {duplicates[:5]}")
    if empty:
        fail(f"empty CN string text found, first examples: {empty[:5]}")

    kingdoms_path = module_dir / "ModuleData" / "spkingdoms.xml"
    if not kingdoms_path.exists():
        fail("ModuleData/spkingdoms.xml missing")
    kingdoms_root = ET.parse(kingdoms_path).getroot()
    kingdoms = [n for n in kingdoms_root.iter() if localname(n.tag) == "Kingdom"]
    if len(kingdoms) != EXPECTED_KINGDOMS:
        fail(f"expected {EXPECTED_KINGDOMS} Kingdom entries for BakumatsuModels v1.0.3, got {len(kingdoms)}")

    bak_strings_path = cn_dir / "bak_strings.xml"
    bak_root = ET.parse(bak_strings_path).getroot()
    bak_cn = {
        n.get("id"): n.get("text", "")
        for n in bak_root.iter()
        if localname(n.tag) == "string" and n.get("id")
    }

    raw_short_names = []
    missing_short_ids = []
    non_cn_short_ids = []
    non_dedicated_ids = []
    for kingdom in kingdoms:
        kid = kingdom.get("id", "")
        short = kingdom.get("short_name", "")
        m = LOC_PREFIX.match(short)
        if not m:
            raw_short_names.append((kid, short))
            continue
        sid = m.group(1)
        if sid != f"BCNSK_{kid}":
            non_dedicated_ids.append((kid, sid, short))
        cn = bak_cn.get(sid)
        if cn is None:
            missing_short_ids.append((kid, sid, short))
        elif not CJK.search(cn):
            non_cn_short_ids.append((kid, sid, cn))

    if raw_short_names:
        fail(f"Kingdom.short_name still contains raw text: {raw_short_names[:10]}")
    if non_dedicated_ids:
        fail(f"Kingdom.short_name does not use dedicated BCNSK IDs: {non_dedicated_ids[:10]}")
    if missing_short_ids:
        fail(f"Kingdom.short_name localization IDs missing in CN bak_strings.xml: {missing_short_ids[:10]}")
    if non_cn_short_ids:
        fail(f"Kingdom.short_name localization IDs do not resolve to Chinese: {non_cn_short_ids[:10]}")

    runtime_files = [p.relative_to(module_dir).as_posix() for p in module_dir.rglob("*") if p.is_file()]
    allowed_non_cn = {
        "SubModule.xml",
        "ModuleData/spkingdoms.xml",
        "ModuleData/Languages/language_data.xml",
    }
    unexpected = [
        p for p in runtime_files
        if not p.startswith("ModuleData/Languages/CNs/") and p not in allowed_non_cn
    ]
    if unexpected:
        fail(f"unexpected runtime files in standalone package: {unexpected[:20]}")

    print("VALIDATION OK")
    print(f"Module: {EXPECTED_MODULE_ID} {version_node.get('value')}")
    print("Root language discovery manifest: OK (English)")
    print(f"Language files referenced: {len(referenced)}")
    print(f"CN string IDs: {len(seen)}")
    print(f"Kingdom short names localized: {len(kingdoms)}")
    print(f"Runtime XML files parsed: {len(xml_files)}")


if __name__ == "__main__":
    main()
