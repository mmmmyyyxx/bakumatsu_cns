#!/usr/bin/env python3
"""Full-module localization coverage audit for Bakumatsu.

High-confidence layer:
- canonical English strings in ModuleData/Languages/bak_strings.xml
- every explicit Bannerlord localization reference of the form {=ID}English

Heuristic layer:
- likely user-facing naked English in XML attributes/text that has no {=ID}
- synthetic CN overrides such as BakumatsuModels_<object>_<text>_<hash>

The heuristic layer is a review aid, not proof that every candidate is rendered in game.
"""

from __future__ import annotations

import csv
import json
import re
from collections import Counter, defaultdict
from difflib import SequenceMatcher
from pathlib import Path
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
MODULE = ROOT / "ModuleData"
CNS = MODULE / "Languages" / "CNs"
EN_TABLE = MODULE / "Languages" / "bak_strings.xml"
OUT = ROOT / "reports"
OUT.mkdir(exist_ok=True)

# {=!} is Bannerlord's explicit do-not-localize/debug form and must not become a fake ID "!".
LOC_RE = re.compile(r"\{=(?!\!)([^}]+)\}")
CONTROL_RE = re.compile(r"\{[^{}]+\}")
ASCII_RE = re.compile(r"[A-Za-z]")
CJK_RE = re.compile(r"[\u3400-\u9fff]")
WORD_RE = re.compile(r"[A-Za-z][A-Za-z'’-]{2,}")
HASH_SUFFIX_RE = re.compile(r"_[0-9a-fA-F]{4,8}$")

VISIBLE_ATTRS = {
    "name", "text", "description", "title", "label", "tooltip", "hint",
    "short_name", "display_name", "plural_name", "singular_name",
}
VISIBLE_TAGS = {"name", "text", "description", "title", "label", "tooltip", "hint"}
TECHNICAL_NAKED_TAGS = {
    "action", "flag", "attribute", "hair_mesh", "style_tag",
    "xsl:attribute", "xsl:template", "template",
}

STOP = set(
    "the a an and or of to in on for with from by as at is are was were be been being this that "
    "these those it its their his her they them you your we our not all into over under after before "
    "during through if then than can could would should may might will do does did done has have had "
    "more most less very such each any some only also both own same new old one two three first second "
    "which who whom whose what when where why how".split()
)


def localname(tag: str) -> str:
    return tag.rsplit("}", 1)[-1]


def compact(s: str) -> str:
    return re.sub(r"[^A-Za-z0-9]+", "", s).lower()


def clean_ws(s: str) -> str:
    return re.sub(r"\s+", " ", s).strip()


def source_rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def parse_string_table(path: Path):
    rows = []
    duplicates = []
    seen = Counter()
    if not path.exists():
        return rows, duplicates
    try:
        root = ET.parse(path).getroot()
    except ET.ParseError:
        return rows, duplicates
    for el in root.iter():
        if localname(el.tag).lower() != "string":
            continue
        sid = el.attrib.get("id")
        if not sid:
            continue
        txt = el.attrib.get("text", "")
        seen[sid] += 1
        if seen[sid] > 1:
            duplicates.append(sid)
        rows.append({"id": sid, "text": txt})
    return rows, duplicates


def cn_status(source: str, cn: str | None) -> str:
    if cn is None:
        return "missing"
    if cn.strip() == source.strip():
        return "untranslated_equal"
    if ASCII_RE.search(cn) and not CJK_RE.search(cn):
        return "latin_only_review"
    return "translated"


def control_tokens(s: str):
    out = []
    for tok in CONTROL_RE.findall(s or ""):
        if tok.startswith("{="):
            continue
        out.append(tok)
    return out


def natural_visible_text(s: str) -> bool:
    s = clean_ws(s)
    if not s or not ASCII_RE.search(s):
        return False
    low = s.lower()
    if low in {"true", "false", "none", "null"}:
        return False
    if re.fullmatch(r"[-+]?\d+(?:\.\d+)?%?", s):
        return False
    if s.startswith("{") and s.endswith("}") and " " not in s:
        return False
    if " " not in s and re.fullmatch(r"[A-Za-z0-9_.:/\\-]+", s):
        if any(x in s for x in (".", "/", "\\", ":")):
            return False
    return True


def naked_visibility(path: Path, tag: str, field: str) -> str:
    t = tag.lower()
    if path.suffix.lower() == ".xslt":
        return "technical_or_transform"
    if t in TECHNICAL_NAKED_TAGS:
        return "technical_or_internal"
    # short_name on kingdoms and item/string names are known game-facing patterns in this module.
    if field.lower() == "short_name" or t in {"item", "kingdom", "clan", "settlement", "concept", "string", "npccharacter", "culture", "hero"}:
        return "likely_user_facing"
    return "review_visibility"


def iter_source_files():
    cn_root = CNS.resolve()
    for p in sorted(MODULE.rglob("*")):
        if not p.is_file() or p.suffix.lower() not in {".xml", ".xslt"}:
            continue
        try:
            rp = p.resolve()
            if cn_root == rp or cn_root in rp.parents:
                continue
        except OSError:
            pass
        yield p


# ---------------------------- Load CN tables ----------------------------
cn_entries = []
cn_by_id = defaultdict(list)
cn_file_counts = Counter()
cn_duplicates = []
for p in sorted(CNS.glob("*.xml")):
    if p.name == "language_data.xml":
        continue
    rows, dups = parse_string_table(p)
    cn_file_counts[p.name] += len(rows)
    for d in dups:
        cn_duplicates.append({"cn_file": p.name, "id": d})
    for r in rows:
        rec = {"id": r["id"], "text": r["text"], "cn_file": p.name}
        cn_entries.append(rec)
        cn_by_id[r["id"]].append(rec)


def choose_cn(sid: str):
    entries = cn_by_id.get(sid, [])
    if not entries:
        return None
    entries = sorted(entries, key=lambda x: (0 if x["cn_file"] == "bak_strings.xml" else 1, x["cn_file"]))
    return entries[0]


# ----------------------- Canonical English table ------------------------
en_rows, en_dups = parse_string_table(EN_TABLE)
explicit_occurrences = []
for idx, r in enumerate(en_rows):
    explicit_occurrences.append({
        "id": r["id"],
        "source": r["text"],
        "source_file": source_rel(EN_TABLE),
        "source_kind": "english_language_table",
        "element_tag": "string",
        "object_id": r["id"],
        "field": "text",
        "occurrence": idx + 1,
    })

parse_errors = []
naked = []
source_files = list(iter_source_files())

# ------------------------ Scan every source XML -------------------------
for path in source_files:
    if path == EN_TABLE:
        continue
    try:
        root = ET.parse(path).getroot()
    except (ET.ParseError, UnicodeDecodeError) as e:
        parse_errors.append({"source_file": source_rel(path), "error": str(e)})
        continue

    rel = source_rel(path)
    occ = 0
    for el in root.iter():
        tag = localname(el.tag)
        object_id = el.attrib.get("id", "")
        for field, raw in sorted(el.attrib.items()):
            value = raw or ""
            markers = list(LOC_RE.finditer(value))
            if markers:
                for i, m in enumerate(markers):
                    end = markers[i + 1].start() if i + 1 < len(markers) else len(value)
                    english = value[m.end():end]
                    occ += 1
                    explicit_occurrences.append({
                        "id": m.group(1),
                        "source": english,
                        "source_file": rel,
                        "source_kind": "explicit_ref",
                        "element_tag": tag,
                        "object_id": object_id,
                        "field": field,
                        "occurrence": occ,
                    })
                continue
            if "{=!}" in value:
                continue
            if field.lower() in VISIBLE_ATTRS and natural_visible_text(value):
                naked.append({
                    "source_file": rel,
                    "element_tag": tag,
                    "object_id": object_id,
                    "field": field,
                    "source": clean_ws(value),
                    "visibility_class": naked_visibility(path, tag, field),
                })

        if localname(el.tag).lower() in VISIBLE_TAGS and el.text:
            value = clean_ws(el.text)
            if value and not LOC_RE.search(value) and "{=!}" not in value and natural_visible_text(value):
                naked.append({
                    "source_file": rel,
                    "element_tag": tag,
                    "object_id": object_id,
                    "field": "#text",
                    "source": value,
                    "visibility_class": naked_visibility(path, tag, "#text"),
                })

seen_naked = set()
naked_unique = []
for r in naked:
    k = (r["source_file"], r["element_tag"], r["object_id"], r["field"], r["source"])
    if k not in seen_naked:
        seen_naked.add(k)
        naked_unique.append(r)
naked = naked_unique

# ------------------------ Explicit-ID audit -----------------------------
by_id = defaultdict(list)
for r in explicit_occurrences:
    by_id[r["id"]].append(r)

explicit_audit = []
conflicts = []
token_bad = []
for sid in sorted(by_id):
    occs = by_id[sid]
    texts = []
    for r in occs:
        if r["source"] not in texts:
            texts.append(r["source"])
    table_texts = [r["source"] for r in occs if r["source_kind"] == "english_language_table"]
    canonical = table_texts[-1] if table_texts else texts[0]
    cn_rec = choose_cn(sid)
    cn = cn_rec["text"] if cn_rec else None
    status = cn_status(canonical, cn)
    files = sorted({r["source_file"] for r in occs})
    row = {
        "id": sid,
        "canonical_source": canonical,
        "current_cn": cn or "",
        "cn_file": cn_rec["cn_file"] if cn_rec else "",
        "status": status,
        "source_text_variants": len(texts),
        "usage_occurrences": len(occs),
        "source_files": " | ".join(files),
    }
    explicit_audit.append(row)
    if len(texts) > 1:
        conflicts.append({
            "id": sid,
            "text_variants": " || ".join(texts),
            "source_files": " | ".join(files),
            "current_cn": cn or "",
        })
    if cn is not None:
        src_tokens = Counter(control_tokens(canonical))
        cn_tokens = Counter(control_tokens(cn))
        if src_tokens != cn_tokens:
            token_bad.append({
                "id": sid,
                "source": canonical,
                "current_cn": cn,
                "cn_file": cn_rec["cn_file"],
                "source_tokens": " | ".join(control_tokens(canonical)),
                "cn_tokens": " | ".join(control_tokens(cn)),
                "source_files": " | ".join(files),
            })

explicit_by_id = {r["id"]: r for r in explicit_audit}
missing = [r for r in explicit_audit if r["status"] == "missing"]
untranslated = [r for r in explicit_audit if r["status"] in {"untranslated_equal", "latin_only_review"}]

# ----------------------- Naked-English matching -------------------------
synthetic_entries = [r for r in cn_entries if r["id"].lower().startswith("bakumatsumodels_")]
synthetic_used = set()


def synthetic_match(rec):
    oid = compact(rec["object_id"])
    text = compact(rec["source"])
    if not oid:
        return None, "", 0.0

    # Prefer synthetic overrides for naked source strings: these files exist specifically to localize
    # raw XML values that do not carry a normal {=ID} marker.
    scored = []
    for c in synthetic_entries:
        cid = compact(HASH_SUFFIX_RE.sub("", c["id"]))
        if oid not in cid:
            continue
        score = 0.72
        if text and text in cid:
            score = 1.0
        else:
            pos = cid.find(oid)
            tail = cid[pos + len(oid):] if pos >= 0 else cid
            ratio = SequenceMatcher(None, text, tail).ratio() if text and tail else 0.0
            score += min(0.27, ratio * 0.27)
        scored.append((score, c))
    if scored:
        scored.sort(key=lambda x: (-x[0], x[1]["id"]))
        best_score, best = scored[0]
        if len(scored) == 1 or abs(best_score - scored[1][0]) >= 0.03 or best_score >= 0.95:
            return best, "synthetic_object_text", best_score
        return None, "ambiguous_synthetic", best_score

    # Fallback for source string tables whose raw id itself also appears in the main CN table.
    direct = choose_cn(rec["object_id"])
    if direct:
        return direct, "direct_object_id", 1.0
    return None, "", 0.0


naked_rows = []
for rec in naked:
    match, method, score = synthetic_match(rec)
    if match:
        synthetic_used.add((match["cn_file"], match["id"]))
    current = match["text"] if match else ""
    if not match:
        status = "uncovered_candidate"
    elif current.strip() == rec["source"].strip():
        status = "untranslated_equal"
    elif ASCII_RE.search(current) and not CJK_RE.search(current):
        status = "latin_only_review"
    else:
        status = "covered"
    naked_rows.append({
        **rec,
        "status": status,
        "match_method": method,
        "match_score": f"{score:.3f}" if score else "",
        "cn_id": match["id"] if match else "",
        "cn_file": match["cn_file"] if match else "",
        "current_cn": current,
    })

naked_actionable = [r for r in naked_rows if r["visibility_class"] != "technical_or_transform" and r["visibility_class"] != "technical_or_internal"]
naked_uncovered = [r for r in naked_actionable if r["status"] == "uncovered_candidate"]
naked_untranslated = [r for r in naked_actionable if r["status"] in {"untranslated_equal", "latin_only_review"}]

# ----------------------- CN-only / external-source ----------------------
explicit_ids = set(by_id)
cn_unmatched = []
for c in sorted(cn_entries, key=lambda x: (x["cn_file"], x["id"])):
    key = (c["cn_file"], c["id"])
    if c["id"] in explicit_ids or key in synthetic_used:
        continue
    if c["cn_file"] == "generated_dll_strings.xml":
        cls = "external_dll_source_not_in_ModuleData"
    elif c["cn_file"] == "class_system_strings.xml" and "ERRORSHOULDNOTS" in c["id"]:
        cls = "suppressed_debug_string"
    elif c["id"].lower().startswith("bakumatsumodels_"):
        cls = "unmatched_synthetic_review"
    else:
        cls = "cn_only_review"
    cn_unmatched.append({**c, "classification": cls})

# --------------------------- By-file stats ------------------------------
file_stats = defaultdict(Counter)
for r in explicit_occurrences:
    file_stats[r["source_file"]]["explicit_occurrences"] += 1
    aud = explicit_by_id.get(r["id"])
    if aud and aud["status"] == "missing":
        file_stats[r["source_file"]]["explicit_missing_occurrences"] += 1
for r in naked_rows:
    file_stats[r["source_file"]]["naked_candidates"] += 1
    if r["visibility_class"].startswith("technical_"):
        file_stats[r["source_file"]]["naked_technical"] += 1
    elif r["status"] == "uncovered_candidate":
        file_stats[r["source_file"]]["naked_uncovered"] += 1
    elif r["status"] == "covered":
        file_stats[r["source_file"]]["naked_covered"] += 1
    else:
        file_stats[r["source_file"]]["naked_review"] += 1

coverage_by_file = []
for path in sorted(file_stats):
    c = file_stats[path]
    coverage_by_file.append({
        "source_file": path,
        "explicit_occurrences": c["explicit_occurrences"],
        "explicit_missing_occurrences": c["explicit_missing_occurrences"],
        "naked_candidates": c["naked_candidates"],
        "naked_covered": c["naked_covered"],
        "naked_uncovered": c["naked_uncovered"],
        "naked_review": c["naked_review"],
        "naked_technical": c["naked_technical"],
    })

# --------------------------- Terms --------------------------------------
freq = Counter()
examples = defaultdict(list)
term_sources = [(r["id"], r["canonical_source"]) for r in explicit_audit]
term_sources += [(r["object_id"] or r["source_file"], r["source"]) for r in naked_actionable]
for key, txt in term_sources:
    for w in WORD_RE.findall(txt):
        lw = w.lower().replace("’", "'")
        if lw in STOP:
            continue
        freq[lw] += 1
        if len(examples[lw]) < 3:
            examples[lw].append(f"{key}: {clean_ws(txt)[:180]}")
terms = [{"term": t, "count": n, "examples": " || ".join(examples[t])} for t, n in freq.most_common(500)]

# ---------------------- Review queue / priorities -----------------------
review_queue = []
for r in missing:
    review_queue.append({
        "priority": "P0", "category": "explicit_missing", "source_file": r["source_files"],
        "key": r["id"], "source": r["canonical_source"], "current_cn": "", "reason": "explicit {=ID} has no CN entry"
    })
for r in token_bad:
    review_queue.append({
        "priority": "P0", "category": "control_token_mismatch", "source_file": r["source_files"],
        "key": r["id"], "source": r["source"], "current_cn": r["current_cn"], "reason": "control tokens differ"
    })
for r in naked_uncovered:
    review_queue.append({
        "priority": "P1", "category": "naked_english_uncovered", "source_file": r["source_file"],
        "key": r["object_id"], "source": r["source"], "current_cn": "", "reason": f"{r['visibility_class']} field {r['field']} has no matched CN override"
    })
for r in untranslated:
    review_queue.append({
        "priority": "P1", "category": r["status"], "source_file": r["source_files"],
        "key": r["id"], "source": r["canonical_source"], "current_cn": r["current_cn"], "reason": "translation may still be English/romaji"
    })
for r in naked_untranslated:
    review_queue.append({
        "priority": "P1", "category": r["status"], "source_file": r["source_file"],
        "key": r["object_id"], "source": r["source"], "current_cn": r["current_cn"], "reason": "naked-source override may still be English/romaji"
    })
for r in conflicts:
    review_queue.append({
        "priority": "P2", "category": "source_id_conflict", "source_file": r["source_files"],
        "key": r["id"], "source": r["text_variants"], "current_cn": r["current_cn"], "reason": "same localization ID maps to multiple English strings"
    })
review_queue.sort(key=lambda x: (x["priority"], x["category"], x["source_file"], x["key"]))

# ---------------------------- CSV writers -------------------------------
def write_csv(name, rows, fields):
    with (OUT / name).open("w", encoding="utf-8-sig", newline="") as f:
        w = csv.DictWriter(f, fieldnames=fields, extrasaction="ignore")
        w.writeheader()
        w.writerows(rows)


write_csv("audit.csv", explicit_audit, ["id", "canonical_source", "current_cn", "cn_file", "status", "source_text_variants", "usage_occurrences", "source_files"])
write_csv("explicit_source_occurrences.csv", explicit_occurrences, ["id", "source", "source_file", "source_kind", "element_tag", "object_id", "field", "occurrence"])
write_csv("missing.csv", missing, ["id", "canonical_source", "current_cn", "cn_file", "status", "source_text_variants", "usage_occurrences", "source_files"])
write_csv("untranslated.csv", untranslated, ["id", "canonical_source", "current_cn", "cn_file", "status", "source_text_variants", "usage_occurrences", "source_files"])
write_csv("variable_mismatch.csv", token_bad, ["id", "source", "current_cn", "cn_file", "source_tokens", "cn_tokens", "source_files"])
write_csv("explicit_conflicts.csv", conflicts, ["id", "text_variants", "source_files", "current_cn"])
write_csv("naked_candidates.csv", naked_rows, ["source_file", "element_tag", "object_id", "field", "source", "visibility_class", "status", "match_method", "match_score", "cn_id", "cn_file", "current_cn"])
write_csv("naked_untranslated.csv", naked_uncovered + naked_untranslated, ["source_file", "element_tag", "object_id", "field", "source", "visibility_class", "status", "match_method", "match_score", "cn_id", "cn_file", "current_cn"])
write_csv("extra_cn.csv", cn_unmatched, ["id", "text", "cn_file", "classification"])
write_csv("coverage_by_file.csv", coverage_by_file, ["source_file", "explicit_occurrences", "explicit_missing_occurrences", "naked_candidates", "naked_covered", "naked_uncovered", "naked_review", "naked_technical"])
write_csv("parse_errors.csv", parse_errors, ["source_file", "error"])
write_csv("terms.csv", terms, ["term", "count", "examples"])
write_csv("translation_review_queue.csv", review_queue, ["priority", "category", "source_file", "key", "source", "current_cn", "reason"])
write_csv("cn_duplicate_ids.csv", cn_duplicates, ["cn_file", "id"])

summary = {
    "module_source_files_scanned": len(source_files),
    "source_parse_errors": len(parse_errors),
    "cn_files": dict(sorted(cn_file_counts.items())),
    "cn_strings_total": len(cn_entries),
    "explicit_unique_ids": len(explicit_audit),
    "explicit_occurrences": len(explicit_occurrences),
    "explicit_missing_unique_ids": len(missing),
    "explicit_untranslated_or_latin_only": len(untranslated),
    "explicit_control_token_mismatches": len(token_bad),
    "explicit_conflicting_ids": len(conflicts),
    "naked_candidates_total": len(naked_rows),
    "naked_technical_or_transform": sum(r["visibility_class"].startswith("technical_") for r in naked_rows),
    "naked_actionable_candidates": len(naked_actionable),
    "naked_covered_actionable": sum(r["status"] == "covered" for r in naked_actionable),
    "naked_uncovered_actionable": len(naked_uncovered),
    "naked_untranslated_or_latin_only_actionable": len(naked_untranslated),
    "cn_entries_without_module_source_match": len(cn_unmatched),
    "english_language_table_duplicate_ids": len(en_dups),
    "cn_duplicate_ids": len(cn_duplicates),
    "review_queue_items": len(review_queue),
}
(OUT / "summary.json").write_text(json.dumps(summary, ensure_ascii=False, indent=2), encoding="utf-8")

md = [
    "# Bakumatsu 全模块简中覆盖审计", "",
    "本报告递归扫描 `ModuleData/`，并将结果与 `ModuleData/Languages/CNs/` 全部简中字符串表对照。", "",
    "## 高置信度：显式 `{=ID}` 本地化", "",
    f"- 唯一 localization ID：**{summary['explicit_unique_ids']}**",
    f"- 源文件引用/语言表记录：**{summary['explicit_occurrences']}**",
    f"- 缺失中文 ID：**{summary['explicit_missing_unique_ids']}**",
    f"- 与英文相同或纯拉丁待审：**{summary['explicit_untranslated_or_latin_only']}**",
    f"- 控制变量/token 不一致：**{summary['explicit_control_token_mismatches']}**",
    f"- 上游同 ID 多英文冲突：**{summary['explicit_conflicting_ids']}**", "",
    "## 启发式：无 `{=ID}` 的裸英文", "",
    f"- 扫描到的裸英文候选总数：**{summary['naked_candidates_total']}**",
    f"- 其中技术/XSLT 候选（保留记录但不进入翻译队列）：**{summary['naked_technical_or_transform']}**",
    f"- 可操作候选：**{summary['naked_actionable_candidates']}**",
    f"- 已匹配 CN override：**{summary['naked_covered_actionable']}**",
    f"- 未匹配、建议人工检查：**{summary['naked_uncovered_actionable']}**",
    f"- 已有 override 但仍为英文/罗马字待审：**{summary['naked_untranslated_or_latin_only_actionable']}**", "",
    "> 裸英文层是‘待审候选’，不是对运行时 UI 的绝对证明；技术 action/flag/XSLT 名称单独标记，不再污染缺译统计。", "",
    "## CN 源外条目", "",
    f"- 无法在当前 `ModuleData` 中反向匹配的 CN 条目：**{summary['cn_entries_without_module_source_match']}**",
    "- `generated_dll_strings.xml` 标记为 `external_dll_source_not_in_ModuleData`，不会被误判为多余翻译。", "",
    "## 推荐人工检查顺序", "",
    "1. `translation_review_queue.csv`：P0 → P1 → P2。",
    "2. `missing.csv`：显式 ID 真缺失。",
    "3. `variable_mismatch.csv`：变量/条件 token 风险。",
    "4. `naked_untranslated.csv`：最可能解释‘游戏里仍出现英文’的来源。",
    "5. `explicit_conflicts.csv`：上游重复 ID 导致的一对多歧义。", "",
    "## 主要产物", "",
    "- `audit.csv`：显式 ID 总表",
    "- `explicit_source_occurrences.csv`：每个 `{=ID}` 的具体来源",
    "- `naked_candidates.csv`：全部裸英文候选、可见性分类与自动匹配结果",
    "- `coverage_by_file.csv`：按源文件统计覆盖情况",
    "- `translation_review_queue.csv`：按优先级合并的人工审阅队列",
    "- `terms.csv`：全模块高频英文术语", "",
    f"扫描 XML/XSLT 源文件：**{summary['module_source_files_scanned']}**；解析错误：**{summary['source_parse_errors']}**。",
]
(OUT / "README.md").write_text("\n".join(md) + "\n", encoding="utf-8")
print(json.dumps(summary, ensure_ascii=False, indent=2))
