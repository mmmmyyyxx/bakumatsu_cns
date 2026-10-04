# Localization audit tools

- `apply_first_pass.py`: applies conservative, high-confidence historical terminology fixes to `ModuleData/Languages/CNs/bak_strings.xml`.
- `full_module_audit.py`: recursively scans `ModuleData/` for explicit `{=ID}` strings and likely user-facing naked English, then compares them with all `ModuleData/Languages/CNs/*.xml` tables and writes deterministic CSV/JSON/Markdown reports under `reports/`.

`naked_*` reports are heuristic review queues; explicit-ID coverage is the high-confidence coverage metric.
