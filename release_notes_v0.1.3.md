# Bakumatsu 简体中文汉化 v0.1.3

适配：**BakumatsuModels v1.0.3**。

## 重要依赖变化

从 v0.1.3 开始，**Shokuho_CNs_HL 被设为正式依赖**。

原因已经通过游戏内实测确认：Bakumatsu 的人物创建与文化特性界面会直接复用 Shokuho 的部分 localization ID。此前只审计 `BakumatsuModels/ModuleData`，会漏掉这些跨模块依赖字符串，因此会出现同一页面中英混排。

推荐加载顺序：

```text
Shokuho
Shokuho_CNs_HL
BakumatsuModels
Bakumatsu 简体中文汉化
```

## 本次新增修复

除正式依赖 Shokuho_CNs_HL 外，本汉化还对游戏内已经实测出现的 4 个 Shokuho runtime ID 做了最后加载覆盖：

- `mAVRtypJ` → 招募和升级火器部队的费用降低 10%。
- `s9og1E3Z` → 藩国决策造成的关系损失增加 20%。
- `bo8sZ7gY` → 与山阳势力控制的港口相连的城镇税收收入增加 20%。
- `iKA94zCe` → 南海势力控制的城镇民兵增长 +1。

这四条正对应此前角色创建界面中仍显示英文的典型项目。

## 保留修复

- 修复语言 XML namespace，采用与已工作的 Shokuho 汉化一致的无默认命名空间格式；
- 39 个 `Kingdom.short_name` 独立本地化；
- 人物名、势力名、兵种名、组织名、武术流派等历史化润色；
- 改革、社会身分、外国商人、野战炮兵等说明文本润色；
- 加载结构继续使用 `ModuleData/Languages/CNs/language_data.xml`。

## 安装

1. 完整删除旧的 `Modules/Bakumatsu_CNs_HL`。
2. 确认已经安装并启用 `Shokuho_CNs_HL`。
3. 解压 `Bakumatsu_CNs_HL-v0.1.3.zip` 到 Bannerlord 的 `Modules` 目录。
4. 最终路径应为：`Modules/Bakumatsu_CNs_HL/SubModule.xml`。
5. Launcher 中按 `Shokuho → Shokuho_CNs_HL → BakumatsuModels → Bakumatsu 简体中文汉化` 加载。
6. 游戏语言选择简体中文。

如果仍看到英文残留，请截图具体页面与英文文本；现在应优先按“跨模块依赖 localization ID”继续定位，而不是再按单模块缺失处理。
