"""Build the minimal standalone Bakumatsu translation module and Workshop zip."""

from __future__ import annotations

import shutil
import sys
import xml.etree.ElementTree as ET
from pathlib import Path
from zipfile import ZIP_DEFLATED, ZipFile


ROOT = Path(__file__).resolve().parents[1]
MODULE_NAME = "Bakumatsu_CNs_HL"
TEMPLATE = ROOT / "standalone" / MODULE_NAME
LANGUAGE_SOURCE = ROOT / "ModuleData" / "Languages" / "CNs"
DIST = ROOT / "dist"
OUTPUT = DIST / MODULE_NAME
ZIP_PATH = DIST / f"{MODULE_NAME}.zip"
FORBIDDEN_PARTS = {"reports", "tools", ".git", ".github", "__pycache__"}


def parse_xml(path: Path) -> ET.Element:
    try:
        return ET.parse(path).getroot()
    except ET.ParseError as exc:
        raise RuntimeError(f"invalid XML: {path}: {exc}") from exc


def validate_language_data(module_root: Path) -> None:
    languages_root = module_root / "ModuleData" / "Languages"
    language_dir = languages_root / "CNs"
    language_data = language_dir / "language_data.xml"
    root = parse_xml(language_data)
    for node in root.findall("LanguageFile"):
        relative = Path(node.attrib["xml_path"])
        target = languages_root / relative
        if relative.is_absolute() or ".." in relative.parts or not target.is_file():
            raise RuntimeError(f"language_data.xml references missing file: {relative}")


def write_kingdom_patch(target: Path) -> None:
    source = ROOT / "ModuleData" / "spkingdoms" / "spkingdoms.xml"
    source_root = parse_xml(source)
    kingdoms = source_root.findall("Kingdom")
    if len(kingdoms) != 39:
        raise RuntimeError(f"expected 39 source Kingdoms, found {len(kingdoms)}")
    patch_root = ET.Element("Kingdoms")
    for kingdom in kingdoms:
        kingdom_id = kingdom.attrib.get("id")
        short_name = kingdom.attrib.get("short_name", "")
        if not kingdom_id or not short_name.startswith("{="):
            raise RuntimeError(f"source Kingdom is not localized: {kingdom_id}")
        ET.SubElement(patch_root, "Kingdom", {"id": kingdom_id, "short_name": short_name})
    ET.indent(patch_root, space="  ")
    ET.ElementTree(patch_root).write(target, encoding="utf-8", xml_declaration=True)


def validate_output(module_root: Path) -> None:
    if not (module_root / "SubModule.xml").is_file():
        raise RuntimeError("SubModule.xml was not built")
    validate_language_data(module_root)
    for path in module_root.rglob("*"):
        if path.is_file():
            relative_parts = set(path.relative_to(module_root).parts)
            if relative_parts & FORBIDDEN_PARTS:
                raise RuntimeError(f"forbidden path in output: {path}")
            if path.suffix.lower() == ".xml":
                parse_xml(path)


def build() -> Path:
    if not LANGUAGE_SOURCE.is_dir():
        raise RuntimeError(f"language source missing: {LANGUAGE_SOURCE}")
    if not TEMPLATE.is_dir():
        raise RuntimeError(f"module template missing: {TEMPLATE}")

    DIST.mkdir(exist_ok=True)
    if OUTPUT.exists():
        shutil.rmtree(OUTPUT)
    if ZIP_PATH.exists():
        ZIP_PATH.unlink()

    OUTPUT.mkdir(parents=True)
    shutil.copy2(TEMPLATE / "SubModule.xml", OUTPUT / "SubModule.xml")
    patch_target = OUTPUT / "ModuleData" / "spkingdoms" / "spkingdoms.xml"
    patch_target.parent.mkdir(parents=True)
    write_kingdom_patch(patch_target)
    language_target = OUTPUT / "ModuleData" / "Languages" / "CNs"
    shutil.copytree(LANGUAGE_SOURCE, language_target)

    validate_output(OUTPUT)
    with ZipFile(ZIP_PATH, "w", ZIP_DEFLATED) as archive:
        for path in sorted(OUTPUT.rglob("*")):
            if path.is_file():
                relative = path.relative_to(DIST).as_posix()
                archive.write(path, relative)

    print(f"built: {OUTPUT}")
    print(f"zip:   {ZIP_PATH}")
    return ZIP_PATH


if __name__ == "__main__":
    try:
        build()
    except (OSError, RuntimeError, ET.ParseError) as exc:
        print(f"build failed: {exc}", file=sys.stderr)
        raise SystemExit(1)
