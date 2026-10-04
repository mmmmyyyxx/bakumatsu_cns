#!/usr/bin/env python3
import csv, json, re
from collections import Counter, defaultdict
from pathlib import Path
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "bak_strings.xml"
CNS = ROOT / "CNs"
OUT = ROOT / "reports"
OUT.mkdir(exist_ok=True)

VAR_RE = re.compile(r"\{[^{}]+\}")
WORD_RE = re.compile(r"[A-Za-z][A-Za-z'-]{2,}")
CJK_RE = re.compile(r"[\u3400-\u9fff]")
STOP = set("the a an and or of to in on for with from by as at is are was were be been being this that these those it its their his her they them you your we our not all into over under after before during through if then than can could would should may might will do does did done has have had more most less very such each any some only also both own same new old one two three first second which who whom whose what when where why how".split())


def parse_strings(path):
    tree = ET.parse(path)
    out = {}
    dup = []
    for el in tree.getroot().iter("string"):
        sid = el.attrib.get("id")
        txt = el.attrib.get("text", "")
        if not sid:
            continue
        if sid in out:
            dup.append(sid)
        out[sid] = txt
    return out, dup

source, src_dups = parse_strings(SRC)
cn_by_file = {}
cn_all = {}
cn_origin = {}
cn_dups = []
for path in sorted(CNS.glob("*.xml")):
    if path.name == "language_data.xml":
        continue
    d, dups = parse_strings(path)
    cn_by_file[path.name] = d
    cn_dups.extend((path.name, x) for x in dups)
    for sid, txt in d.items():
        if sid in cn_all:
            cn_dups.append((path.name, sid))
        cn_all[sid] = txt
        cn_origin[sid] = path.name

rows = []
missing = []
untranslated = []
varbad = []
for sid, src in source.items():
    cn = cn_all.get(sid)
    srcvars = VAR_RE.findall(src)
    cnvars = VAR_RE.findall(cn or "")
    if cn is None:
        status = "missing"
    elif cn.strip() == src.strip():
        status = "untranslated_equal"
    elif not CJK_RE.search(cn) and re.search(r"[A-Za-z]", cn):
        status = "latin_only_review"
    else:
        status = "translated"
    var_ok = Counter(srcvars) == Counter(cnvars) if cn is not None else False
    row = {
        "id": sid,
        "source": src,
        "current_cn": cn or "",
        "cn_file": cn_origin.get(sid, ""),
        "status": status,
        "variable_ok": "yes" if var_ok else "no",
        "source_variables": " | ".join(srcvars),
        "cn_variables": " | ".join(cnvars),
    }
    rows.append(row)
    if status == "missing": missing.append(row)
    if status in ("untranslated_equal", "latin_only_review"): untranslated.append(row)
    if cn is not None and not var_ok: varbad.append(row)

extra = []
for sid, cn in cn_all.items():
    if sid not in source:
        extra.append({"id": sid, "cn": cn, "cn_file": cn_origin.get(sid, "")})

# Frequency list aimed at localization review: words + title-cased/proper-name candidates.
freq = Counter()
examples = defaultdict(list)
proper = Counter()
for sid, txt in source.items():
    words = WORD_RE.findall(txt)
    for w in words:
        lw = w.lower()
        if lw not in STOP:
            freq[lw] += 1
            if len(examples[lw]) < 3:
                examples[lw].append(f"{sid}: {txt[:180]}")
        if w[:1].isupper() and lw not in STOP:
            proper[w] += 1

term_rows = []
for term, n in freq.most_common(300):
    term_rows.append({
        "term": term,
        "count": n,
        "proper_case_count": sum(v for k, v in proper.items() if k.lower() == term),
        "examples": " || ".join(examples[term]),
    })

fields = ["id","source","current_cn","cn_file","status","variable_ok","source_variables","cn_variables"]
with open(OUT / "audit.csv", "w", encoding="utf-8-sig", newline="") as f:
    w = csv.DictWriter(f, fieldnames=fields); w.writeheader(); w.writerows(rows)
for name, data in [("missing.csv", missing), ("untranslated.csv", untranslated), ("variable_mismatch.csv", varbad)]:
    with open(OUT / name, "w", encoding="utf-8-sig", newline="") as f:
        w = csv.DictWriter(f, fieldnames=fields); w.writeheader(); w.writerows(data)
with open(OUT / "extra_cn.csv", "w", encoding="utf-8-sig", newline="") as f:
    w = csv.DictWriter(f, fieldnames=["id","cn","cn_file"]); w.writeheader(); w.writerows(extra)
with open(OUT / "terms.csv", "w", encoding="utf-8-sig", newline="") as f:
    w = csv.DictWriter(f, fieldnames=["term","count","proper_case_count","examples"]); w.writeheader(); w.writerows(term_rows)

summary = {
    "source_strings": len(source),
    "cn_strings_total": len(cn_all),
    "translated": sum(r["status"] == "translated" for r in rows),
    "missing": len(missing),
    "untranslated_or_latin_only": len(untranslated),
    "variable_mismatches": len(varbad),
    "extra_cn_ids_not_in_root_source": len(extra),
    "source_duplicate_ids": src_dups,
    "cn_duplicate_ids": cn_dups,
    "cn_files": {k: len(v) for k, v in cn_by_file.items()},
}
(OUT / "summary.json").write_text(json.dumps(summary, ensure_ascii=False, indent=2), encoding="utf-8")
md = [
    "# Bakumatsu CN translation audit", "",
    f"- Source strings: **{summary['source_strings']}**",
    f"- CN strings across files: **{summary['cn_strings_total']}**",
    f"- Translated: **{summary['translated']}**",
    f"- Missing: **{summary['missing']}**",
    f"- Equal-to-English / Latin-only review: **{summary['untranslated_or_latin_only']}**",
    f"- Variable mismatches: **{summary['variable_mismatches']}**",
    f"- CN-only IDs not present in root source: **{summary['extra_cn_ids_not_in_root_source']}**",
    "", "Generated deterministically from `bak_strings.xml` and every string table in `CNs/`.",
]
(OUT / "README.md").write_text("\n".join(md) + "\n", encoding="utf-8")
print(json.dumps(summary, ensure_ascii=False, indent=2))
