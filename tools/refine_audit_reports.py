#!/usr/bin/env python3
"""Refine full-module audit reports after generation.

`full_module_audit.py` intentionally chooses one canonical English source for each ID. Upstream
Bakumatsu reuses some localization IDs for multiple source strings, so a CN translation can be valid
for one real occurrence while differing from the arbitrary canonical occurrence. This post-pass
removes those false-positive control-token mismatches whenever the CN token multiset matches *any*
actual source occurrence recorded by the full audit.
"""
from __future__ import annotations

import csv
import json
import re
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
REPORTS = ROOT / "reports"
OCC = REPORTS / "explicit_source_occurrences.csv"
VAR = REPORTS / "variable_mismatch.csv"
QUEUE = REPORTS / "translation_review_queue.csv"
SUMMARY = REPORTS / "summary.json"

TOKEN_RE = re.compile(r"\{[^{}]+\}")


def tokens(s: str):
    return [t for t in TOKEN_RE.findall(s or "") if not t.startswith("{=") and not t.startswith("{=!")]


def read_csv(path):
    if not path.exists():
        return [], []
    with path.open("r", encoding="utf-8-sig", newline="") as f:
        r = csv.DictReader(f)
        return list(r), (r.fieldnames or [])


def write_csv(path, rows, fields):
    with path.open("w", encoding="utf-8-sig", newline="") as f:
        w = csv.DictWriter(f, fieldnames=fields)
        w.writeheader(); w.writerows(rows)


occ_rows, _ = read_csv(OCC)
var_rows, var_fields = read_csv(VAR)
by_id = defaultdict(list)
for r in occ_rows:
    by_id[r.get("id", "")].append(r.get("source", ""))

kept = []
resolved = []
for row in var_rows:
    sid = row.get("id", "")
    cn = row.get("current_cn", "")
    cn_counter = Counter(tokens(cn))
    variants = by_id.get(sid, [])
    if any(Counter(tokens(src)) == cn_counter for src in variants):
        resolved.append(row)
    else:
        kept.append(row)

if var_fields:
    write_csv(VAR, kept, var_fields)

queue_rows, queue_fields = read_csv(QUEUE)
if queue_fields:
    keep_ids = {r.get("id", "") for r in kept}
    new_queue = []
    for r in queue_rows:
        if r.get("category") == "control_token_mismatch" and r.get("key", "") not in keep_ids:
            continue
        new_queue.append(r)
    write_csv(QUEUE, new_queue, queue_fields)
else:
    new_queue = queue_rows

if SUMMARY.exists():
    data = json.loads(SUMMARY.read_text(encoding="utf-8"))
    data["explicit_control_token_mismatches"] = len(kept)
    data["control_token_false_positives_resolved_by_source_variants"] = len(resolved)
    # review queue after filtering
    data["review_queue_items"] = len(new_queue)
    SUMMARY.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

resolved_path = REPORTS / "variable_mismatch_resolved_conflicts.csv"
if var_fields:
    write_csv(resolved_path, resolved, var_fields)

print(f"token refinement: kept={len(kept)}, resolved_conflict_false_positives={len(resolved)}")
