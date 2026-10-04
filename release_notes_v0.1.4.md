# Bakumatsu 简体中文汉化 v0.1.4

本版本撤销 v0.1.3 对 `Shokuho_CNs_HL` 的强依赖，恢复为自包含汉化策略。

## 主要变化

- 移除 `SubModule.xml` 中的 `Shokuho_CNs_HL` 依赖。
- 保留对 Shokuho 本体和 `BakumatsuModels` 的依赖。
- 继续由本包 `dependency_strings.xml` 自行覆盖已确认会在 Bakumatsu 页面出现的 Shokuho runtime 字符串。
- 避免 Shokuho 汉化与 Bakumatsu 对共享 localization ID 的不同语义互相覆盖。

已确认的典型冲突：`DEmMv6H8` 在 Shokuho 中表示 `Nankai`，而 Bakumatsu 中表示 `Tosa`。同时加载完整 `Shokuho_CNs_HL` 会导致 Bakumatsu 页面把“土佐”显示成“南海”。v0.1.4 不再把 Shokuho 汉化包作为依赖，从结构上消除这类冲突来源。

## 推荐加载顺序

1. Shokuho
2. BakumatsuModels
3. Bakumatsu 简体中文汉化

游戏语言设为简体中文。

如果你另外安装了 `Shokuho_CNs_HL`，测试 Bakumatsu 时建议先不要启用它。
