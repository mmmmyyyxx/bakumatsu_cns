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

# BakumatsuModels v1.0.3 Kingdom.short_name values are naked English in the upstream module.
# The standalone localization cannot safely assume the title IDs are also present in the CN table,
# so the release build creates dedicated localization IDs for every short name.
KINGDOM_SHORT_NAMES = {
    "ashina": ("Aizu", "会津"),
    "soma": ("Tottori", "鸟取"),
    "date": ("Sendai", "仙台"),
    "mogami": ("Fukushima", "福岛"),
    "ando": ("Hirosaki", "弘前"),
    "nanbu": ("Morioka", "盛冈"),
    "hojo": ("Mito", "水户"),
    "satomi": ("Jozai", "请西"),
    "utsunomiya": ("Nagaoka", "长冈"),
    "satake": ("Kubota", "久保田"),
    "asakura": ("Fukui", "福井"),
    "anekouji": ("Obama", "小滨"),
    "tokugawa": ("Tokugawa", "德川"),
    "uesugi": ("Ou Reppan Domei", "奥羽越列藩同盟"),
    "honjo": ("Shonai", "庄内"),
    "takeda": ("Himeji", "姬路"),
    "imagawa": ("Iyo Matsuyama", "伊予松山"),
    "ashikaga": ("Hikone", "彦根"),
    "hatakeyama": ("Kishu", "纪州"),
    "rokkaku": ("Kuwana", "桑名"),
    "azai": ("Owari", "尾张"),
    "oda": ("Tsu", "津"),
    "ikko_shu": ("Kaga", "加贺"),
    "uragami": ("Hiroshima", "广岛"),
    "amago": ("Matsue", "松江"),
    "mori": ("Choshu", "长州"),
    "saionji": ("Ozu", "大洲"),
    "ichijo": ("Uwajima", "宇和岛"),
    "chosokabe": ("Tosa", "土佐"),
    "miyoshi": ("Tokushima", "德岛"),
    "shimazu": ("Satsuma", "萨摩"),
    "kimotsuki": ("Tenguto", "天狗党"),
    "ito": ("Kokura", "小仓"),
    "aso": ("Kumamoto", "熊本"),
    "sagara": ("Hitoyoshi", "人吉"),
    "otomo": ("Yodo", "淀"),
    "arima": ("Kurume", "久留米"),
    "ryuzoji": ("Saga", "佐贺"),
    "akamatsu": ("Fukuoka", "福冈"),
}


def localname(tag: str) -> str:
    return tag.rsplit("}", 1)[-1]


def parse_args():
    p = argparse.ArgumentParser(description="Build the standalone Bakumatsu CN localization module")
    p.add_argument("--version", default="v0.1.0")
    return p.parse_args()


def set_version(submodule: Path, version: str) -> None:
    tree = ET.parse(submodule)
    root = tree.getroot()
    node = root.find("Version")
    if node is None:
        raise RuntimeError("SubModule.xml has no <Version>")
    node.set("value", version)
    tree.write(submodule, encoding="utf-8", xml_declaration=True)


def patch_kingdom_short_names(kingdoms_path: Path, cn_bak_strings_path: Path) -> None:
    ktree = ET.parse(kingdoms_path)
    kroot = ktree.getroot()
    kingdoms = [n for n in kroot.iter() if localname(n.tag) == "Kingdom"]
    source_ids = {k.get("id") for k in kingdoms if k.get("id")}
    expected_ids = set(KINGDOM_SHORT_NAMES)
    if source_ids != expected_ids:
        missing = sorted(expected_ids - source_ids)
        extra = sorted(source_ids - expected_ids)
        raise RuntimeError(
            "BakumatsuModels Kingdom set no longer matches v1.0.3 mapping; "
            f"missing={missing}, extra={extra}"
        )

    for kingdom in kingdoms:
        kid = kingdom.get("id")
        english, _ = KINGDOM_SHORT_NAMES[kid]
        loc_id = f"BCNSK_{kid}"
        kingdom.set("short_name", f"{{={loc_id}}}{english}")
    ktree.write(kingdoms_path, encoding="utf-8", xml_declaration=True)

    ctree = ET.parse(cn_bak_strings_path)
    croot = ctree.getroot()
    strings = next((node for node in croot.iter() if localname(node.tag) == "strings"), None)
    if strings is None:
        raise RuntimeError("CN bak_strings.xml has no <strings> container")

    sample_string = next((node for node in strings if localname(node.tag) == "string"), None)
    string_tag = sample_string.tag if sample_string is not None else "string"

    # Remove stale generated entries if the build script is run on an already-generated tree.
    for node in list(strings):
        if localname(node.tag) == "string" and (node.get("id") or "").startswith("BCNSK_"):
            strings.remove(node)

    for kid, (_, chinese) in KINGDOM_SHORT_NAMES.items():
        ET.SubElement(strings, string_tag, {"id": f"BCNSK_{kid}", "text": chinese})
    ctree.write(cn_bak_strings_path, encoding="utf-8", xml_declaration=True)


def main() -> None:
    args = parse_args()
    version = args.version

    if not TEMPLATE.exists():
        raise FileNotFoundError(TEMPLATE)
    if not SOURCE_CN.exists():
        raise FileNotFoundError(SOURCE_CN)
    if not SOURCE_KINGDOMS.exists():
        raise FileNotFoundError(SOURCE_KINGDOMS)

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

    kingdoms_dst = build_dir / "ModuleData" / "spkingdoms.xml"
    kingdoms_dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(SOURCE_KINGDOMS, kingdoms_dst)

    set_version(build_dir / "SubModule.xml", version)
    patch_kingdom_short_names(kingdoms_dst, cn_dst / "bak_strings.xml")

    # Parse every XML in the runtime module before archiving.
    for path in sorted(build_dir.rglob("*.xml")):
        ET.parse(path)

    with zipfile.ZipFile(zip_path, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=9) as zf:
        for path in sorted(build_dir.rglob("*")):
            if path.is_file():
                arcname = Path(MODULE_NAME) / path.relative_to(build_dir)
                zf.write(path, arcname.as_posix())

    print(f"Built: {build_dir}")
    print(f"Archive: {zip_path}")


if __name__ == "__main__":
    main()
