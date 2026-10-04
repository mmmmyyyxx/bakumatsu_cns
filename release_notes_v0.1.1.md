# Bakumatsu 简体中文汉化 v0.1.1

适配：**BakumatsuModels v1.0.3**，依赖 **Shokuho**。

## 修复

- 修复 v0.1.0 中独立汉化模块完全不生效的问题。
- 原因：独立模块只有 `ModuleData/Languages/CNs/language_data.xml`，缺少 Bannerlord 用于发现模块语言资源的根 `ModuleData/Languages/language_data.xml`。
- v0.1.1 新增 English 根语言 manifest，并在构建验证中强制检查该文件存在且可解析。

## 保留内容

- 幕末人物名、势力名、兵种名、流派名和历史术语润色。
- 高可见度改革、社会身分、外国商人、野战炮兵等说明文本润色。
- 39 个 `Kingdom.short_name` 使用独立 `BCNSK_<kingdom_id>` localization ID，避免裸英文短名。

## 安装

1. 删除旧的 `Bakumatsu_CNs_HL` 文件夹，避免残留文件。
2. 下载 `Bakumatsu_CNs_HL-v0.1.1.zip`。
3. 解压到 Bannerlord 的 `Modules` 目录。
4. 确保最终路径为 `Modules/Bakumatsu_CNs_HL/SubModule.xml`。
5. Launcher 加载顺序：`Shokuho → BakumatsuModels → Bakumatsu 简体中文汉化`。
6. 游戏语言选择简体中文。

本版已通过静态构建/结构验证；仍需游戏内运行时验证。
