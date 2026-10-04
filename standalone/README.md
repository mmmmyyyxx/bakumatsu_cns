# Bakumatsu 简体中文汉化 — standalone package

这是 `BakumatsuModels` 的独立简体中文汉化模块模板。运行时包由 `tools/build_standalone_mod.py` 从当前仓库的已审校中文文件生成。

## 依赖与兼容版本

- Mount & Blade II: Bannerlord
- Shokuho
- BakumatsuModels `v1.0.3`
- 本汉化：`Bakumatsu_CNs_HL v0.1.0`

推荐加载顺序：

1. Native / SandBoxCore / Sandbox
2. Shokuho
3. BakumatsuModels
4. Bakumatsu 简体中文汉化

## 独立 MOD 结构

构建后：

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

`spkingdoms.xml` 是基于 BakumatsuModels v1.0.3 的完整 `Kingdoms` 覆盖文件。Bakumatsu 原版 39 个 `Kingdom.short_name` 使用裸英文；本汉化复用各 Kingdom 已存在的 `title` localization ID，使 `Aizu / Choshu / Satsuma / Jozai / Ou Reppan Domei` 等短名也能读取简中。由于该文件覆盖的是 Bakumatsu 1.0.3 的 Kingdom 数据，Bakumatsu 更新后应重新对比上游文件再发布兼容版。

## 手动安装

将 Release 中的 ZIP 解压到 Bannerlord `Modules` 目录，最终应为：

```text
Mount & Blade II Bannerlord/Modules/Bakumatsu_CNs_HL/SubModule.xml
```

不要形成双层目录：

```text
Modules/Bakumatsu_CNs_HL/Bakumatsu_CNs_HL/SubModule.xml
```

然后在 Launcher 勾选 `Bakumatsu 简体中文汉化`，并确保它加载在 `Shokuho` 与 `BakumatsuModels` 之后。游戏语言设为简体中文。

## 构建

```bash
python tools/build_standalone_mod.py --version v0.1.0
python tools/validate_standalone_mod.py dist/Bakumatsu_CNs_HL
```

输出：

```text
dist/Bakumatsu_CNs_HL/
dist/Bakumatsu_CNs_HL-v0.1.0.zip
```
