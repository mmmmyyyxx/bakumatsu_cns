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
    sm_root = ET.parse(submodule).getroot()
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

    kingdom_xml_nodes = [n for n in sm_root.findall("./Xmls/XmlNode/XmlName")
                         if n.get("id") == "Kingdoms" and n.get("path") == "spkingdoms"]
    if len(kingdom_xml_nodes) != 1:
        fail("SubModule.xml must register exactly one Kingdoms -> spkingdoms XmlName")

    languages_dir = module_dir / "ModuleData" / "Languages"
    # Match the known-working Shokuho CN module exactly: no root Languages/language_data.xml.
    if (languages_dir / "language_data.xml").exists():
        fail("unexpected ModuleData/Languages/language_data.xml; working layout uses only CNs/language_data.xml")

    cn_dir = languages_dir / "CNs"
    lang_data = cn_dir / "language_data.xml"
    if not lang_data.exists():
        fail("ModuleData/Languages/CNs/language_data.xml missing")
    lang_root = ET.parse(lang_data).getroot()
    if lang_root.tag != "LanguageData" or lang_root.get("id") != "简体中文":
        fail("CNs/language_data.xml must be unqualified <LanguageData id=简体中文>")

    referenced = []
    for node in lang_root.iter("LanguageFile"):
        rel = node.get("xml_path")
        if not rel:
            fail("LanguageFile without xml_path")
        target = languages_dir / Path(rel)
        if not target.exists():
            fail(f"language_data.xml references missing file: {rel}")
        referenced.append(target)
    if not referenced:
        fail("CNs/language_data.xml references no language files")

    # Every language table must use literal unqualified base/tags/tag/strings/string elements.
    seen: dict[str, Path] = {}
    duplicates = []
    empty = []
    for path in sorted(cn_dir.glob("*.xml")):
        if path.name == "language_data.xml":
            continue
        root = ET.parse(path).getroot()
        if root.tag != "base":
            fail(f"{path.name}: root must be unqualified <base>, got {root.tag!r}")
        for elem in root.iter():
            if isinstance(elem.tag, str) and elem.tag.startswith("{"):
                fail(f"{path.name}: namespaced element remains: {elem.tag}")
        tags = root.find("tags")
        strings = root.find("strings")
        if tags is None or strings is None:
            fail(f"{path.name}: expected unqualified <tags> and <strings>")
        cn_tag = tags.find("tag")
        if cn_tag is None or cn_tag.get("language") != "简体中文":
            fail(f"{path.name}: missing <tag language=简体中文>")
        for node in strings.findall("string"):
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

    # Parse all runtime XML after the stricter language checks.
    xml_files = sorted(module_dir.rglob("*.xml"))
    for path in xml_files:
        try:
            ET.parse(path)
        except ET.ParseError as exc:
            fail(f"XML parse error in {path.relative_to(module_dir)}: {exc}")

    kingdoms_path = module_dir / "ModuleData" / "spkingdoms.xml"
    if not kingdoms_path.exists():
        fail("ModuleData/spkingdoms.xml missing")
    kingdoms_root = ET.parse(kingdoms_path).getroot()
    kingdoms = [n for n in kingdoms_root.iter() if localname(n.tag) == "Kingdom"]
    if len(kingdoms) != EXPECTED_KINGDOMS:
        fail(f"expected {EXPECTED_KINGDOMS} Kingdom entries for BakumatsuModels v1.0.3, got {len(kingdoms)}")

    bak_root = ET.parse(cn_dir / "bak_strings.xml").getroot()
    bak_cn = {n.get("id"): n.get("text", "") for n in bak_root.find("strings").findall("string") if n.get("id")}
    raw_short_names, missing_short_ids, non_cn_short_ids, non_dedicated_ids = [], [], [], []
    for kingdom in kingdoms:
        kid = kingdom.get("id", "")
        short = kingdom.get("short_name", "")
        m = LOC_PREFIX.match(short)
        if not m:
            raw_short_names.append((kid, short)); continue
        sid = m.group(1)
        if sid != f"BCNSK_{kid}":
            non_dedicated_ids.append((kid, sid, short))
        cn = bak_cn.get(sid)
        if cn is None:
            missing_short_ids.append((kid, sid, short))
        elif not CJK.search(cn):
            non_cn_short_ids.append((kid, sid, cn))
    if raw_short_names: fail(f"Kingdom.short_name still contains raw text: {raw_short_names[:10]}")
    if non_dedicated_ids: fail(f"Kingdom.short_name does not use dedicated BCNSK IDs: {non_dedicated_ids[:10]}")
    if missing_short_ids: fail(f"Kingdom.short_name IDs missing in CN bak_strings.xml: {missing_short_ids[:10]}")
    if non_cn_short_ids: fail(f"Kingdom.short_name IDs do not resolve to Chinese: {non_cn_short_ids[:10]}")

    runtime_files = [p.relative_to(module_dir).as_posix() for p in module_dir.rglob("*") if p.is_file()]
    allowed_non_language = {"SubModule.xml", "ModuleData/spkingdoms.xml"}
    unexpected = [p for p in runtime_files
                  if not p.startswith("ModuleData/Languages/CNs/") and p not in allowed_non_language]
    if unexpected:
        fail(f"unexpected runtime files in standalone package: {unexpected[:20]}")

    print("VALIDATION OK")
    print(f"Module: {EXPECTED_MODULE_ID} {version_node.get('value')}")
    print("Language layout: Shokuho-compatible CNs-only manifest")
    print("Language XML namespace check: OK (unqualified elements)")
    print(f"Language files referenced: {len(referenced)}")
    print(f"CN string IDs: {len(seen)}")
    print(f"Kingdom short names localized: {len(kingdoms)}")
    print(f"Runtime XML files parsed: {len(xml_files)}")


if __name__ == "__main__":
    main()
