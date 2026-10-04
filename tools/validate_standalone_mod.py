"""Static validation for the standalone Bakumatsu translation module."""

from __future__ import annotations

import re
import sys
import xml.etree.ElementTree as ET
from collections import Counter
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
MODULE_NAME = "Bakumatsu_CNs_HL"
MODULE_ROOT = ROOT / "dist" / MODULE_NAME
LANGUAGE_NS = "http://schemas.taleworlds.com/2007/04/GameSystem/"
LOCALIZATION_RE = re.compile(r"^\{=([^}]+)\}")
FORBIDDEN_PARTS = {"reports", "tools", ".git", ".github", "__pycache__"}


def fail(message: str) -> None:
    raise RuntimeError(message)


def parse_xml(path: Path) -> ET.Element:
    try:
        return ET.parse(path).getroot()
    except ET.ParseError as exc:
        fail(f"invalid XML: {path}: {exc}")


def check_submodule(module_root: Path) -> ET.Element:
    path = module_root / "SubModule.xml"
    if not path.is_file():
        fail("SubModule.xml is missing")
    root = parse_xml(path)
    if root.tag != "Module":
        fail("SubModule.xml root is not Module")
    if root.find("./Name").get("value") != "Bakumatsu 简体中文汉化":
        fail("Module Name is incorrect")
    if root.find("./Version").get("value") != "v0.1.0":
        fail("Module Version is incorrect")
    if root.find("./ModuleCategory").get("value") != "Singleplayer":
        fail("ModuleCategory is not Singleplayer")
    if root.find("./ModuleType").get("value") != "Community":
        fail("ModuleType is not Community")
    values = {node.attrib.get("Id") for node in root.findall("./DependedModules/DependedModule")}
    module_id = root.find("./Id")
    if module_id is None or module_id.get("value") != MODULE_NAME:
        fail("Module Id is not Bakumatsu_CNs_HL")
    required = {"Native", "SandBoxCore", "Sandbox", "Shokuho", "BakumatsuModels"}
    if not required.issubset(values):
        fail(f"missing dependencies: {sorted(required - values)}")
    metadata = {
        node.get("id"): node.get("order")
        for node in root.findall("./DependedModuleMetadatas/DependedModuleMetadata")
    }
    if metadata.get("BakumatsuModels") != "LoadBeforeThis":
        fail("BakumatsuModels is not ordered before this translation module")
    if metadata.get("Shokuho") != "LoadBeforeThis":
        fail("Shokuho is not ordered before this translation module")
    kingdom_node = root.find("./Xmls/XmlNode/XmlName[@id='Kingdoms'][@path='spkingdoms']")
    if kingdom_node is None:
        fail("Kingdoms -> spkingdoms XML registration is missing")
    return root


def check_language_files(module_root: Path) -> dict[str, str]:
    languages_root = module_root / "ModuleData" / "Languages"
    language_dir = languages_root / "CNs"
    language_data = language_dir / "language_data.xml"
    if not language_data.is_file():
        fail("language_data.xml is missing")
    data_root = parse_xml(language_data)
    referenced = []
    for node in data_root.findall("LanguageFile"):
        relative = Path(node.get("xml_path", ""))
        if relative.is_absolute() or ".." in relative.parts:
            fail(f"unsafe language path: {relative}")
        target = languages_root / relative
        if not target.is_file():
            fail(f"language_data.xml references missing file: {relative}")
        referenced.append(target)

    strings: dict[str, str] = {}
    duplicate_ids: Counter[str] = Counter()
    for path in referenced:
        root = parse_xml(path)
        for element in root.findall(f".//{{{LANGUAGE_NS}}}string"):
            string_id = element.get("id")
            if not string_id:
                fail(f"string without id: {path}")
            duplicate_ids[string_id] += 1
            text = element.get("text")
            if text is None or not text.strip():
                fail(f"empty text for {string_id}: {path}")
            strings[string_id] = text
    duplicates = sorted(string_id for string_id, count in duplicate_ids.items() if count > 1)
    if duplicates:
        fail(f"duplicate localization IDs: {duplicates[:10]}")
    return strings


def check_kingdom_patch(module_root: Path, strings: dict[str, str]) -> None:
    path = module_root / "ModuleData" / "spkingdoms" / "spkingdoms.xml"
    if not path.is_file():
        fail("Kingdom short_name patch is missing")
    root = parse_xml(path)
    kingdoms = root.findall("Kingdom")
    if len(kingdoms) != 39:
        fail(f"expected 39 Kingdom patches, found {len(kingdoms)}")
    ids = []
    for kingdom in kingdoms:
        kingdom_id = kingdom.get("id")
        short_name = kingdom.get("short_name", "")
        match = LOCALIZATION_RE.match(short_name)
        if not kingdom_id or not match:
            fail(f"Kingdom short_name is not localized: {kingdom_id}")
        localization_id = match.group(1)
        if localization_id not in strings:
            fail(f"missing Chinese localization string: {localization_id}")
        if not any("\u4e00" <= char <= "\u9fff" for char in strings[localization_id]):
            fail(f"localization is not Chinese text: {localization_id}")
        ids.append(kingdom_id)
    if len(set(ids)) != len(ids):
        fail("duplicate Kingdom IDs in short_name patch")

    source = ROOT / "ModuleData" / "spkingdoms" / "spkingdoms.xml"
    source_root = parse_xml(source)
    source_ids = {node.get("id") for node in source_root.findall("Kingdom")}
    if set(ids) != source_ids:
        fail("standalone Kingdom patch does not match current Bakumatsu source IDs")


def check_minimal_output(module_root: Path) -> None:
    allowed = {
        Path("SubModule.xml"),
        Path("ModuleData/Languages/CNs"),
        Path("ModuleData/spkingdoms/spkingdoms.xml"),
    }
    for path in module_root.rglob("*"):
        relative = path.relative_to(module_root)
        if set(relative.parts) & FORBIDDEN_PARTS:
            fail(f"forbidden path in output: {relative}")
        if path.is_file() and not (
            relative == Path("SubModule.xml")
            or relative.as_posix().startswith("ModuleData/Languages/CNs/")
            or relative == Path("ModuleData/spkingdoms/spkingdoms.xml")
        ):
            fail(f"unexpected non-minimal output file: {relative}")
        if path.suffix.lower() == ".xml":
            parse_xml(path)


def validate(module_root: Path = MODULE_ROOT) -> None:
    if not module_root.is_dir():
        fail(f"module directory is missing: {module_root}")
    check_submodule(module_root)
    strings = check_language_files(module_root)
    check_kingdom_patch(module_root, strings)
    check_minimal_output(module_root)
    print(f"PASS: {module_root}")
    print("PASS: SubModule dependencies and load order")
    print("PASS: language_data.xml references and XML parsing")
    print("PASS: no duplicate or empty localization strings")
    print("PASS: 39 Kingdom.short_name localization IDs with Chinese text")
    print("PASS: minimal output does not include full source ModuleData")


if __name__ == "__main__":
    target = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else MODULE_ROOT
    try:
        validate(target)
    except RuntimeError as exc:
        print(f"FAIL: {exc}", file=sys.stderr)
        raise SystemExit(1)
