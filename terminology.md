# Bakumatsu 简中术语规范（第一版）

目标：优先采用中文幕末史、日史中文出版物与历史题材游戏中容易辨认的通行译法；避免把日语罗马字机械音译，也避免把 Bannerlord 原版的欧洲封建术语硬套到日本语境。

## 政治与制度

| English / Romaji | 统一译法 | 备注 |
|---|---|---|
| Bakufu / Shogunate | 幕府 | 特指德川政权时可写“德川幕府” |
| Shogun | 将军 / 征夷大将军 | UI 短称用“将军” |
| Imperial Court / Court | 朝廷 | 避免“皇帝的法庭” |
| Emperor (Japan) | 天皇 | 日本语境不用“皇帝” |
| Imperial Army / Imperial forces | 官军 / 朝廷方 | 戊辰战争军事语境优先“官军” |
| pro-Imperial / loyalist | 尊王派 / 朝廷方 | 依上下文选择 |
| Sonno-joi | 尊王攘夷 | 固定历史术语 |
| Domain / -han | 藩 | 如 Satsuma-han → 萨摩藩 |
| clan (historical house) | 氏 / 家 | 如 Shimazu clan → 岛津氏；游戏机制泛称可用“氏族” |
| retainer | 家臣 / 藩士 | 幕臣特指幕府直属家臣；各藩军政语境优先“藩士” |
| Kuge | 公家 | 不译为一般“贵族” |
| Daimyo | 大名 | 不追加“封建领主” |
| Buke | 武家 / 武士 | 视阶层或个人语境 |
| Gokenin | 御家人 | 固定术语 |
| Hatamoto | 旗本 | 固定术语 |
| Doshin | 同心 | 固定术语 |
| Yoriki | 与力 | 固定术语 |

## 事件与组织

| English / Romaji | 统一译法 |
|---|---|
| Boshin War | 戊辰战争 |
| Kinmon Incident | 禁门之变 |
| Second Choshu Expedition | 第二次长州征讨 |
| Ouetsu Reppan Domei / Dōmei | 奥羽越列藩同盟 |
| Satcho Alliance | 萨长同盟 |
| Shinsengumi | 新选组 |
| Mimawari-gumi | 见回组 |
| Kiheitai | 奇兵队 |
| Shogitai | 彰义队 |
| Denshutai | 传习队 |
| Yugekitai | 游击队 |
| Hoheitai | 步兵队 |
| Jinshotai | 迅冲队 |
| Tosa Kinno-to | 土佐勤王党 |

## 主要藩名

Satsuma 萨摩、Choshu/Chōshū 长州、Tosa 土佐、Aizu 会津、Sendai 仙台、Shonai 庄内、Morioka 盛冈、Hirosaki 弘前、Kubota 久保田、Yonezawa 米泽、Nagaoka 长冈、Kuwana 桑名、Owari 尾张、Kishu 纪州、Hikone 彦根、Fukui 福井、Saga 佐贺、Kumamoto 熊本、Uwajima 宇和岛、Hiroshima 广岛、Okayama 冈山、Mito 水户、Tsu 津、Kaga 加贺、Matsue 松江、Kokura 小仓、Fukuoka 福冈、Kurume 久留米、Yodo 淀、Obama 小滨、Jozai 请西。

## 武术流派与道场

- `-ryu / -ryū` → “流”，不得机械译成“龙”。
- `-ha` → “派”，不得译成“叶 / 羽 / 霸”。
- `-den` → “传”，不得译成“殿”。
- Itto-ryu 一刀流；Hokushin Itto-ryu 北辰一刀流；Shinkage-ryu 新阴流；Jigen-ryu 示现流；Hozoin-ryu 宝藏院流；Heki-ryu 日置流；Shinto Munen-ryu 神道无念流；Ogasawara-ryu 小笠原流；Hoki-ryu 伯耆流；Tennen Rishin-ryu 天然理心流；Kyoshin Meiichi-ryu 镜新明智流。
- Shieikan 试卫馆；Genbukan 玄武馆；Renpeikan 练兵馆；Kodokan（本作幕末语境）弘道馆。

## 翻译风格

1. UI 名称短而准，优先历史专名，不在名称后追加解释性括号。
2. 事件说明采用现代中文历史叙述，不追求文言化；避免机翻句法。
3. 人名、地名若能确定汉字写法，优先使用汉字；不确定时宁可保留罗马字待审，也不要臆造汉字。
4. 必须原样保留 `{VARIABLE}`、条件分支 token、`[ib:...]` 等 Bannerlord 控制标记。
5. 同一专名在全文件保持一致。
