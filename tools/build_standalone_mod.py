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
