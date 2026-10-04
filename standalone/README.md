# Bakumatsu 简体中文汉化

这是一个可独立安装或发布到 Steam Workshop 的 Bannerlord 汉化模块。

## 依赖与加载顺序

- Shokuho
- Bakumatsu（实际 Module ID：`BakumatsuModels`，版本：`v1.0.3`）
- Bakumatsu 简体中文汉化（本模块，版本：`v0.1.0`）

加载顺序应为：`Shokuho → Bakumatsu → Bakumatsu 简体中文汉化`。

游戏语言：简体中文。

## 手动安装

将 `Bakumatsu_CNs_HL` 整个目录放入：

`Mount & Blade II Bannerlord\Modules\`

确保最终路径为：

`Modules\Bakumatsu_CNs_HL\SubModule.xml`

不要多套一层 `Bakumatsu_CNs_HL\Bakumatsu_CNs_HL\`。

## Workshop 发布

上传 `Bakumatsu_CNs_HL/` 这个 Module 根目录。不要上传仓库的 `reports/`、`tools/`、`.git/` 或 `.github/`。

## Kingdom.short_name 修复

模块注册与 Bakumatsu 本体相同的 `Kingdoms → spkingdoms` XML 节点，但只提供 39 个同 ID 的 `Kingdom` patch。每个 patch 仅覆盖 `short_name`，并复用该 Kingdom 已有的 `title` 本地化 ID；这样不会重新生成 Kingdom、重复定义其他势力数据或复制整个 Bakumatsu `ModuleData/`。

该方案依据 Bannerlord 的 managed XML merge 行为：相同 XML 节点会合并，重复对象 ID 按模块加载顺序覆盖。当前仓库已做静态验证；尚未自动启动游戏进行运行时验证。

## 人工测试清单

1. Launcher 能看到并勾选“Bakumatsu 简体中文汉化”。
2. 模块自动排在 Shokuho 和 Bakumatsu 后。
3. 启动游戏无 XML error，并能开新档。
4. 世界地图势力简称显示为会津、长州、萨摩、请西、奥羽越列藩同盟等中文。
5. 检查井伊直弼、高杉晋作、西乡隆盛、大久保利通、松平容保等人物名。
6. 检查奇兵队、彰义队、传习队等兵种。
7. 在 Encyclopedia / Concepts 中检查改革、社会身分、炮兵说明。
