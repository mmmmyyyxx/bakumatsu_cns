# Bakumatsu 简体中文汉化 — standalone package

这是 `BakumatsuModels` 的独立简体中文汉化模块。运行时包由 `tools/build_standalone_mod.py` 从当前仓库的已审校中文文件生成。

## 依赖与兼容版本

- Mount & Blade II: Bannerlord
- Shokuho
- **Shokuho_CNs_HL**（必需；Bakumatsu 会复用 Shokuho 的部分文化/特性字符串）
- BakumatsuModels `v1.0.3`
- 本汉化：`Bakumatsu_CNs_HL v0.1.3`

推荐加载顺序：

1. Native / SandBoxCore / Sandbox
2. Shokuho
3. Shokuho_CNs_HL
4. BakumatsuModels
5. Bakumatsu 简体中文汉化

## 为什么 v0.1.3 开始要求 Shokuho_CNs_HL

游戏内实测确认，Bakumatsu 的人物创建/文化特性界面会直接复用 Shokuho 的 localization ID。此前只审计 `BakumatsuModels/ModuleData` 会漏掉这些跨模块依赖字符串，因此会出现同一页面中文和英文混排。

v0.1.3 做两层处理：

1. 在 `SubModule.xml` 中把 `Shokuho_CNs_HL` 设为正式依赖，让 Shokuho 本体字符串由其对应汉化提供；
2. 对已在 Bakumatsu 页面实测出现的 4 个 Shokuho runtime ID 在 `dependency_strings.xml` 中再次覆盖，保证本汉化最后加载时使用统一术语：
   - `mAVRtypJ` — 火器部队招募/升级费用降低 10%
   - `s9og1E3Z` — 藩国决策关系损失增加 20%
   - `bo8sZ7gY` — 山阳港口关联城镇税收增加 20%
   - `iKA94zCe` — 南海势力城镇民兵增长 +1

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
   │     ├─ dependency_strings.xml
   │     ├─ generated_dll_strings.xml
   │     ├─ guns.xml
   │     ├─ modern_guns.xml
   │     ├─ module_strings.xml
   │     └─ language_data.xml
   └─ spkingdoms.xml
```

`spkingdoms.xml` 是基于 BakumatsuModels v1.0.3 的完整 `Kingdoms` 覆盖文件。Bakumatsu 原版 39 个 `Kingdom.short_name` 使用裸英文。构建时，本汉化为每个势力生成独立的 `BCNSK_<kingdom_id>` localization ID，并把对应中文写入运行时 `CNs/bak_strings.xml`。

由于该文件覆盖的是 BakumatsuModels v1.0.3 的 Kingdom 数据，Bakumatsu 更新后应重新对比上游文件再发布兼容版。

## 手动安装

将 Release 中的 ZIP 解压到 Bannerlord `Modules` 目录，最终应为：

```text
Mount & Blade II Bannerlord/Modules/Bakumatsu_CNs_HL/SubModule.xml
```

不要形成双层目录：

```text
Modules/Bakumatsu_CNs_HL/Bakumatsu_CNs_HL/SubModule.xml
```

然后在 Launcher 中同时勾选：

```text
Shokuho
Shokuho_CNs_HL
BakumatsuModels
Bakumatsu 简体中文汉化
```

并保证上述顺序。游戏语言设为简体中文。

## 构建

```bash
python tools/build_standalone_mod.py --version v0.1.3
python tools/validate_standalone_mod.py dist/Bakumatsu_CNs_HL
```

输出：

```text
dist/Bakumatsu_CNs_HL/
dist/Bakumatsu_CNs_HL-v0.1.3.zip
```
