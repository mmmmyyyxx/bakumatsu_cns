# Bakumatsu 简体中文汉化 v0.1.0

适配：**BakumatsuModels v1.0.3**，依赖 **Shokuho**。

这是把当前审校后的简体中文内容整理成可在 Bannerlord Launcher 中单独勾选的社区模块的首个发布版。

## 主要内容

- 打包现有 `ModuleData/Languages/CNs/` 全部简中语言文件。
- 修复并统一大量幕末历史术语、人物名、势力名、兵种名与武术流派名。
- 处理高可见度改革、社会身分、外国商人、野战炮兵等说明文本。
- 为 39 个原本无法通过语言文件覆盖的 `Kingdom.short_name` 生成独立 `BCNSK_<kingdom_id>` localization ID，并写入运行时中文表，使会津、长州、萨摩、请西、奥羽越列藩同盟等短名可稳定显示中文。
- 全模块静态审计结果：显式缺失中文 ID = 0；实际 control-token mismatch = 0；可操作裸英文未覆盖 = 0。

## 安装

1. 安装并启用 Shokuho。
2. 安装并启用 BakumatsuModels v1.0.3。
3. 下载 `Bakumatsu_CNs_HL-v0.1.0.zip`。
4. 解压到 Bannerlord 的 `Modules` 目录。
5. 确保最终路径为：
   `Modules/Bakumatsu_CNs_HL/SubModule.xml`
6. Launcher 加载顺序：`Shokuho → BakumatsuModels → Bakumatsu 简体中文汉化`。
7. 游戏语言选择简体中文。

## 注意

本版为了修复 39 个势力短名，包含基于 BakumatsuModels v1.0.3 的 `ModuleData/spkingdoms.xml` 覆盖文件。因此 Bakumatsu 本体升级后，应等待汉化同步更新后再继续使用，避免覆盖新版 Kingdom 数据。
