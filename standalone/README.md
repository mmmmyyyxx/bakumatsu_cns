# Bakumatsu 简体中文汉化 — standalone package

这是 `BakumatsuModels` 的独立简体中文汉化模块。运行时包由 `tools/build_standalone_mod.py` 从当前仓库的已审校中文文件生成。

## 依赖与兼容版本

- Mount & Blade II: Bannerlord
- Shokuho
- BakumatsuModels `v1.0.3`
- 本汉化：`Bakumatsu_CNs_HL v0.1.2`

推荐加载顺序：

1. Native / SandBoxCore / Sandbox
2. Shokuho
3. BakumatsuModels
4. Bakumatsu 简体中文汉化

**必须在 Launcher 中实际勾选 `Bakumatsu 简体中文汉化`。** Launcher 能显示模块并不代表它已被传给游戏；只有启用后运行命令行中才会包含 `Bakumatsu_CNs_HL`。

## 独立 MOD 结构

```text
Bakumatsu_CNs_HL/
├─ SubModule.xml
└─ ModuleData/
   ├─ Languages/
   │  └─ CNs/
   │     ├─ bak_strings.xml
   │     ├─ class_system_strings.xml
   │     ├─ concept_strings.xml
   │     ├─ generated_dll_strings.xml
   │     ├─ guns.xml
   │     ├─ modern_guns.xml
   │     ├─ module_strings.xml
   │     └─ language_data.xml
   └─ spkingdoms.xml
```

v0.1.2 的语言结构直接对齐本机已验证可工作的 `Shokuho_CNs_HL`：只保留 `ModuleData/Languages/CNs/language_data.xml`，不再附带 v0.1.1 中实验性的根 `Languages/language_data.xml`。

所有发布版中文字符串表会在构建时去掉 TaleWorlds 默认 XML namespace，输出 literal `<base> / <tags> / <strings> / <string>` 元素，与原版简中和 Shokuho 汉化格式一致。构建校验器会拒绝任何仍带 `{http://schemas.taleworlds.com/...}` namespace 的语言 XML。

`spkingdoms.xml` 基于 BakumatsuModels v1.0.3。构建时为 39 个裸英文 `Kingdom.short_name` 生成独立 `BCNSK_<kingdom_id>` localization ID，并把中文写入运行时 `CNs/bak_strings.xml`。

## 手动安装

先删除旧的 `Bakumatsu_CNs_HL` 文件夹，再把 Release ZIP 解压到 Bannerlord `Modules`：

```text
Mount & Blade II Bannerlord/Modules/Bakumatsu_CNs_HL/SubModule.xml
```

不要形成双层目录。随后在 Launcher 中实际勾选 `Bakumatsu 简体中文汉化`，确认它位于 `Shokuho` 和 `BakumatsuModels` 后面，游戏语言设为简体中文。

## 构建

```bash
python tools/build_standalone_mod.py --version v0.1.2
python tools/validate_standalone_mod.py dist/Bakumatsu_CNs_HL
```

输出：

```text
dist/Bakumatsu_CNs_HL/
dist/Bakumatsu_CNs_HL-v0.1.2.zip
```
