# Bakumatsu 简体中文汉化 v0.1.2

适配：**BakumatsuModels v1.0.3**，依赖 **Shokuho**。

## 本次修复

- 根据本机运行时审计，确认此前“完全不生效”的最近一次启动中 `Bakumatsu_CNs_HL` 实际未被 Launcher 选中；Launcher 扫描到模块不等于模块已启用。安装后必须在 Launcher 中实际勾选本汉化。
- 修复发布包语言 XML 的格式：移除 TaleWorlds 默认 namespace，避免输出 `ns0:base / ns0:string`，改为与原版简中和已工作的 `Shokuho_CNs_HL` 一致的无默认命名空间 `<base> / <string>` 结构。
- 删除 v0.1.1 中实验性的 `ModuleData/Languages/language_data.xml`，恢复为已工作 Shokuho 汉化使用的 `ModuleData/Languages/CNs/language_data.xml` 单一入口结构。
- 构建校验新增 namespace 检查：任何中文字符串表若仍包含 namespaced element，Release 构建直接失败。

## 保留内容

- 人物名、势力名、兵种名、流派名和幕末历史术语润色。
- 改革、社会身分、外国商人、野战炮兵等说明文本润色。
- 39 个 `Kingdom.short_name` 继续使用独立 `BCNSK_<kingdom_id>` localization ID。

## 安装

1. 完整删除旧的 `Modules/Bakumatsu_CNs_HL` 文件夹。
2. 下载并解压 `Bakumatsu_CNs_HL-v0.1.2.zip` 到 Bannerlord 的 `Modules` 目录。
3. 确认最终路径为：`Modules/Bakumatsu_CNs_HL/SubModule.xml`。
4. 在 Launcher 中**实际勾选** `Bakumatsu 简体中文汉化`。
5. 加载顺序：`Shokuho → BakumatsuModels → Bakumatsu 简体中文汉化`。
6. 游戏语言选择简体中文。

如果仍无汉化效果，先检查 `LauncherData.xml` 中 `Bakumatsu_CNs_HL` 是否为 `IsSelected=true`，以及最新 `rgl_log_*.txt` 的 `_MODULES_` 启动参数是否确实包含 `Bakumatsu_CNs_HL`。
