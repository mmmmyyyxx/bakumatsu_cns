#!/usr/bin/env python3
from __future__ import annotations

import argparse
import shutil
import zipfile
from pathlib import Path
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
TEMPLATE = ROOT / "standalone" / "Bakumatsu_CNs_HL"
SOURCE_CN = ROOT / "ModuleData" / "Languages" / "CNs"
SOURCE_KINGDOMS = ROOT / "ModuleData" / "spkingdoms" / "spkingdoms.xml"
DIST = ROOT / "dist"
MODULE_NAME = "Bakumatsu_CNs_HL"

KINGDOM_SHORT_NAMES = {
    "ashina": ("Aizu", "会津"), "soma": ("Tottori", "鸟取"), "date": ("Sendai", "仙台"),
    "mogami": ("Fukushima", "福岛"), "ando": ("Hirosaki", "弘前"), "nanbu": ("Morioka", "盛冈"),
    "hojo": ("Mito", "水户"), "satomi": ("Jozai", "请西"), "utsunomiya": ("Nagaoka", "长冈"),
    "satake": ("Kubota", "久保田"), "asakura": ("Fukui", "福井"), "anekouji": ("Obama", "小滨"),
    "tokugawa": ("Tokugawa", "德川"), "uesugi": ("Ou Reppan Domei", "奥羽越列藩同盟"),
    "honjo": ("Shonai", "庄内"), "takeda": ("Himeji", "姬路"), "imagawa": ("Iyo Matsuyama", "伊予松山"),
    "ashikaga": ("Hikone", "彦根"), "hatakeyama": ("Kishu", "纪州"), "rokkaku": ("Kuwana", "桑名"),
    "azai": ("Owari", "尾张"), "oda": ("Tsu", "津"), "ikko_shu": ("Kaga", "加贺"),
    "uragami": ("Hiroshima", "广岛"), "amago": ("Matsue", "松江"), "mori": ("Choshu", "长州"),
    "saionji": ("Ozu", "大洲"), "ichijo": ("Uwajima", "宇和岛"), "chosokabe": ("Tosa", "土佐"),
    "miyoshi": ("Tokushima", "德岛"), "shimazu": ("Satsuma", "萨摩"), "kimotsuki": ("Tenguto", "天狗党"),
    "ito": ("Kokura", "小仓"), "aso": ("Kumamoto", "熊本"), "sagara": ("Hitoyoshi", "人吉"),
    "otomo": ("Yodo", "淀"), "arima": ("Kurume", "久留米"), "ryuzoji": ("Saga", "佐贺"),
    "akamatsu": ("Fukuoka", "福冈"),
}


def localname(tag: str) -> str:
    return tag.rsplit("}", 1)[-1]


def parse_args():
    p = argparse.ArgumentParser(description="Build the standalone Bakumatsu CN localization module")
    p.add_argument("--version", default="v0.1.4")
    return p.parse_args()


def set_version(submodule: Path, version: str) -> None:
    tree = ET.parse(submodule)
    node = tree.getroot().find("Version")
    if node is None:
        raise RuntimeError("SubModule.xml has no <Version>")
    node.set("value", version)
    tree.write(submodule, encoding="utf-8", xml_declaration=True)


def normalize_language_xml(path: Path) -> None:
    """Match working Bannerlord/Shokuho language tables: no TaleWorlds default namespace."""
    tree = ET.parse(path)
    root = tree.getroot()
    for elem in root.iter():
        if isinstance(elem.tag, str):
            elem.tag = localname(elem.tag)
    if root.tag == "base":
        root.set("xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance")
        root.set("xmlns:xsd", "http://www.w3.org/2001/XMLSchema")
    tree.write(path, encoding="utf-8", xml_declaration=True)


def patch_kingdom_short_names(kingdoms_path: Path, cn_bak_strings_path: Path) -> None:
    ktree = ET.parse(kingdoms_path)
    kroot = ktree.getroot()
    kingdoms = [n for n in kroot.iter() if localname(n.tag) == "Kingdom"]
    source_ids = {k.get("id") for k in kingdoms if k.get("id")}
    expected_ids = set(KINGDOM_SHORT_NAMES)
    if source_ids != expected_ids:
        raise RuntimeError(
            "BakumatsuModels Kingdom set no longer matches v1.0.3 mapping; "
            f"missing={sorted(expected_ids-source_ids)}, extra={sorted(source_ids-expected_ids)}"
        )
    for kingdom in kingdoms:
        kid = kingdom.get("id")
        english, _ = KINGDOM_SHORT_NAMES[kid]
        kingdom.set("short_name", f"{{=BCNSK_{kid}}}{english}")
    ktree.write(kingdoms_path, encoding="utf-8", xml_declaration=True)

    ctree = ET.parse(cn_bak_strings_path)
    croot = ctree.getroot()
    strings = croot.find("strings")
    if strings is None:
        raise RuntimeError("CN bak_strings.xml has no <strings> container")
    for node in list(strings):
        if node.tag == "string" and (node.get("id") or "").startswith("BCNSK_"):
            strings.remove(node)
    for kid, (_, chinese) in KINGDOM_SHORT_NAMES.items():
        ET.SubElement(strings, "string", {"id": f"BCNSK_{kid}", "text": chinese})
    ctree.write(cn_bak_strings_path, encoding="utf-8", xml_declaration=True)
    normalize_language_xml(cn_bak_strings_path)


def main() -> None:
    args = parse_args()
    version = args.version
    for required in (TEMPLATE, SOURCE_CN, SOURCE_KINGDOMS):
        if not required.exists():
            raise FileNotFoundError(required)

    DIST.mkdir(exist_ok=True)
    build_dir = DIST / MODULE_NAME
    zip_path = DIST / f"{MODULE_NAME}-{version}.zip"
    if build_dir.exists():
        shutil.rmtree(build_dir)
    if zip_path.exists():
        zip_path.unlink()

    shutil.copytree(TEMPLATE, build_dir)
    cn_dst = build_dir / "ModuleData" / "Languages" / "CNs"
    cn_dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copytree(SOURCE_CN, cn_dst)

    root_manifest = build_dir / "ModuleData" / "Languages" / "language_data.xml"
    if root_manifest.exists():
        root_manifest.unlink()

    for path in sorted(cn_dst.glob("*.xml")):
        if path.name != "language_data.xml":
            normalize_language_xml(path)

    kingdoms_dst = build_dir / "ModuleData" / "spkingdoms.xml"
    kingdoms_dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(SOURCE_KINGDOMS, kingdoms_dst)

    set_version(build_dir / "SubModule.xml", version)
    patch_kingdom_short_names(kingdoms_dst, cn_dst / "bak_strings.xml")

    for path in sorted(build_dir.rglob("*.xml")):
        ET.parse(path)

    with zipfile.ZipFile(zip_path, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=9) as zf:
        for path in sorted(build_dir.rglob("*")):
            if path.is_file():
                zf.write(path, (Path(MODULE_NAME) / path.relative_to(build_dir)).as_posix())

    print(f"Built: {build_dir}")
    print(f"Archive: {zip_path}")


if __name__ == "__main__":
    main()
