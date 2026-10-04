# Bakumatsu 全模块简中覆盖审计

本报告递归扫描 `ModuleData/`，并将结果与 `ModuleData/Languages/CNs/` 全部简中字符串表对照。

## 高置信度：显式 `{=ID}` 本地化

- 唯一 localization ID：**5703**
- 源文件引用/语言表记录：**43348**
- 缺失中文 ID：**0**
- 与英文相同或纯拉丁待审：**14**
- 控制变量/token 不一致：**33**
- 上游同 ID 多英文冲突：**119**

## 启发式：无 `{=ID}` 的裸英文

- 扫描到的裸英文候选总数：**76**
- 其中技术/XSLT 候选（保留记录但不进入翻译队列）：**31**
- 可操作候选：**45**
- 已匹配 CN override：**6**
- 未匹配、建议人工检查：**39**
- 已有 override 但仍为英文/罗马字待审：**0**

> 裸英文层是‘待审候选’，不是对运行时 UI 的绝对证明；技术 action/flag/XSLT 名称单独标记，不再污染缺译统计。

## CN 源外条目

- 无法在当前 `ModuleData` 中反向匹配的 CN 条目：**7**
- `generated_dll_strings.xml` 标记为 `external_dll_source_not_in_ModuleData`，不会被误判为多余翻译。

## 推荐人工检查顺序

1. `translation_review_queue.csv`：P0 → P1 → P2。
2. `missing.csv`：显式 ID 真缺失。
3. `variable_mismatch.csv`：变量/条件 token 风险。
4. `naked_untranslated.csv`：最可能解释‘游戏里仍出现英文’的来源。
5. `explicit_conflicts.csv`：上游重复 ID 导致的一对多歧义。

## 主要产物

- `audit.csv`：显式 ID 总表
- `explicit_source_occurrences.csv`：每个 `{=ID}` 的具体来源
- `naked_candidates.csv`：全部裸英文候选、可见性分类与自动匹配结果
- `coverage_by_file.csv`：按源文件统计覆盖情况
- `translation_review_queue.csv`：按优先级合并的人工审阅队列
- `terms.csv`：全模块高频英文术语

扫描 XML/XSLT 源文件：**116**；解析错误：**0**。
