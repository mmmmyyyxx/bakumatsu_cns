#!/usr/bin/env python3
import csv, html, re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CN = ROOT / "ModuleData" / "Languages" / "CNs" / "bak_strings.xml"
KINGDOMS = ROOT / "ModuleData" / "spkingdoms" / "spkingdoms.xml"
REPORT = ROOT / "reports" / "second_pass_finalize.csv"

ENTRY_RE = re.compile(r'(<string\s+id="(?P<id>[^"]+)"\s+text=")(?P<text>[^"]*)("\s*/>)')
FIXES = {
    "g0DodcKB": "公家",
    "iDHwU4Af": "大名",
    "TzEzDGuV": "武家",
    "3VfyBmWe": "百姓",
    "91xgVL5T": "町人",
    "MkoGgYTI": "秽多·非人",
    "mqDjDWjC": "外国人",
    "rW0j3kZA": "无赖浪人",
}
changes = []
raw = CN.read_text(encoding="utf-8-sig")

def repl(m):
    sid = m.group("id")
    old = html.unescape(m.group("text"))
    new = FIXES.get(sid)
    if new is None or new == old:
        return m.group(0)
    changes.append({"file":"ModuleData/Languages/CNs/bak_strings.xml","key":sid,"old":old,"new":new,"reason":"final historical label cleanup"})
    return m.group(1) + html.escape(new, quote=True) + m.group(4)

new_raw = ENTRY_RE.sub(repl, raw)
if new_raw != raw:
    CN.write_text(new_raw, encoding="utf-8")

# Kingdom short_name fields are naked English. Reuse the already-localized title ID on the same tag.
kraw = KINGDOMS.read_text(encoding="utf-8-sig")
tag_re = re.compile(r"<Kingdom\b[^>]*>", re.S)
attr_re = re.compile(r'(?<![A-Za-z0-9_])(?P<key>short_name|title)="(?P<value>[^"]*)"')

def kingdom_repl(m):
    tag = m.group(0)
    attrs = {x.group("key"): x.group("value") for x in attr_re.finditer(tag)}
    short = attrs.get("short_name")
    title = attrs.get("title")
    if not short or not title or "{=" in short:
        return tag
    tm = re.match(r"\{=([^}]+)\}(.*)", title)
    if not tm:
        return tag
    new = f"{{={tm.group(1)}}}{short}"
    kid = re.search(r'(?<![A-Za-z0-9_])id="([^"]+)"', tag)
    changes.append({"file":"ModuleData/spkingdoms/spkingdoms.xml","key":kid.group(1) if kid else "","old":short,"new":new,"reason":"localize Kingdom.short_name via title ID"})
    return tag.replace(f'short_name="{short}"', f'short_name="{new}"', 1)

knew = tag_re.sub(kingdom_repl, kraw)
if knew != kraw:
    KINGDOMS.write_text(knew, encoding="utf-8")

REPORT.parent.mkdir(exist_ok=True)
with REPORT.open("w", encoding="utf-8-sig", newline="") as f:
    fields = ["file","key","old","new","reason"]
    w = csv.DictWriter(f, fieldnames=fields); w.writeheader(); w.writerows(changes)
print(f"finalize second pass: {len(changes)} changes")
