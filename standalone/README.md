# Bakumatsu 简体中文汉化 — standalone package

这是 `BakumatsuModels` 的独立简体中文汉化模块。运行时包由 `tools/build_standalone_mod.py` 从当前仓库的已审校中文文件生成。

## 依赖与兼容版本

- Mount & Blade II: Bannerlord
- Shokuho
- BakumatsuModels `v1.0.3`
- 本汉化：`Bakumatsu_CNs_HL v0.1.4`

**不依赖 `Shokuho_CNs_HL`。** Bakumatsu 会复用少量 Shokuho 本体 localization ID；这些已确认会在 Bakumatsu 页面出现的字符串由本汉化自己的 `dependency_strings.xml` 提供中文，避免 Shokuho 汉化与 Bakumatsu 对同一 ID 的不同语义互相覆盖。

推荐加载顺序：

1. Native / SandBoxCore / Sandbox
2. Shokuho
3. BakumatsuModels
4. Bakumatsu 简体中文汉化

## 为什么 v0.1.4 移除 Shokuho_CNs_HL 依赖

实测发现 Shokuho 与 Bakumatsu 会复用部分 localization ID，但同一个 ID 在两个时代设定中可能已经换了语义。例如 `DEmMv6H8` 在 Shokuho 中表示 `Nankai`，而 Bakumatsu 将该文化改成了 `Tosa`。如果同时加载 `Shokuho_CNs_HL`，就可能把 Bakumatsu 应显示的“土佐”重新覆盖成“南海”。

因此 v0.1.4 改回自包含策略：

1. 只依赖 Shokuho 本体和 BakumatsuModels；
2. 不要求、也不建议把 `Shokuho_CNs_HL` 作为本汉化的依赖；
3. 对已经确认在 Bakumatsu 页面实际出现、且来自 Shokuho 本体的少量字符串，继续在本包 `dependency_strings.xml` 中提供中文：
   - `mAVRtypJ` — 火器部队招募/升级费用降低 10%
   - `s9og1E3Z` — 藩国决策关系损失增加 20%
   - `bo8sZ7gY` — 山阳港口关联城镇税收增加 20%
   - `iKA94zCe` — 南海势力城镇民兵增长 +1

以后若再发现 Bakumatsu 实际复用的 Shokuho 字符串，会继续按“选择性自包含”方式加入，而不是重新依赖整个 Shokuho 汉化包。

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

然后在 Launcher 中勾选：

```text
Shokuho
BakumatsuModels
Bakumatsu 简体中文汉化
```

并保证上述顺序。游戏语言设为简体中文。

如果本机另外安装了 `Shokuho_CNs_HL`，建议测试 Bakumatsu 时先不要启用它，以避免共享 localization ID 的语义冲突。

## 构建

```bash
python tools/build_standalone_mod.py --version v0.1.4
python tools/validate_standalone_mod.py dist/Bakumatsu_CNs_HL
```

输出：

```text
dist/Bakumatsu_CNs_HL/
dist/Bakumatsu_CNs_HL-v0.1.4.zip
```
