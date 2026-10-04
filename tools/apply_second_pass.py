#!/usr/bin/env python3
"""Second-pass Bakumatsu CN polish.

Goals:
- repair Bannerlord conditional closer tokens without blindly trusting one conflicting source occurrence;
- make every Kingdom.short_name localizable by reusing its already-localized title id;
- apply high-confidence historical names/terms and source-aware machine-translation cleanups;
- rewrite the most visible reform/social-class/help concepts in consistent historical Chinese.

The pass is intentionally conservative around upstream duplicate localization ids. Exact source-driven
replacement is only applied when an id has one source meaning, or every source variant maps to the same
Chinese target. A small ID_FIXES table handles a few known safe exceptions.
"""
from __future__ import annotations

import csv
import html
import re
from collections import Counter, defaultdict
from pathlib import Path
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
MODULE = ROOT / "ModuleData"
CN_DIR = MODULE / "Languages" / "CNs"
CN_MAIN = CN_DIR / "bak_strings.xml"
KINGDOMS = MODULE / "spkingdoms" / "spkingdoms.xml"
REPORT = ROOT / "reports" / "second_pass_changes.csv"
SOURCE_PATCH_REPORT = ROOT / "reports" / "second_pass_source_patches.csv"

LOC_RE = re.compile(r"\{=([^}]+)\}")
TOKEN_RE = re.compile(r"\{[^{}]+\}")
CLOSE_RE = re.compile(r"\{(?P<slashes>\\+)\?\}")
ENTRY_RE = re.compile(r'(<string\s+id="(?P<id>[^"]+)"\s+text=")(?P<text>[^"]*)("\s*/>)')

PLACES = {
    "Aizu":"会津", "Akita":"秋田", "Choshu":"长州", "Chōshū":"长州", "Fukui":"福井",
    "Fukuoka":"福冈", "Fukushima":"福岛", "Hikone":"彦根", "Himeji":"姬路", "Hirosaki":"弘前",
    "Hiroshima":"广岛", "Hitoyoshi":"人吉", "Iyo Matsuyama":"伊予松山", "Jozai":"请西",
    "Kaga":"加贺", "Kii":"纪伊", "Kishu":"纪州", "Kokura":"小仓", "Kubota":"久保田",
    "Kumamoto":"熊本", "Kurume":"久留米", "Kuwana":"桑名", "Matsue":"松江", "Mito":"水户",
    "Morioka":"盛冈", "Nagaoka":"长冈", "Nihonmatsu":"二本松", "Obama":"小滨", "Okayama":"冈山",
    "Owari":"尾张", "Ozu":"大洲", "Saga":"佐贺", "Satsuma":"萨摩", "Sendai":"仙台",
    "Shonai":"庄内", "Tosa":"土佐", "Tottori":"鸟取", "Tokushima":"德岛", "Tsu":"津",
    "Uwajima":"宇和岛", "Yodo":"淀", "Yonezawa":"米泽",
}

# Exact English -> preferred Chinese. These are only used on unambiguous source ids unless every
# conflicting source variant maps to the same target.
EXACT = {
    # political / social / organizational terms
    "Bakufu":"幕府", "Tokugawa Bakufu":"德川幕府", "Shogunate":"幕府", "Shogun":"将军",
    "Daimyo":"大名", "Kuge":"公家", "Buke":"武家", "Hyakusho":"百姓", "Chonin":"町人",
    "Gaikokujin":"外国人", "Eta-Hinin":"秽多·非人", "Tenryo":"天领", "Fudai":"谱代",
    "Tozama":"外样", "Shinpan":"亲藩", "Gosanke":"御三家", "Gosankyo":"御三卿",
    "Sakoku":"锁国", "Jōi":"攘夷", "Joi":"攘夷", "Sonnō":"尊王", "Sonno":"尊王",
    "Sonno-Joi":"尊王攘夷", "Sonnō Jōi":"尊王攘夷", "Kōbu Gattai":"公武合体",
    "Kobu Gattai":"公武合体", "Foreign Influence":"西洋影响", "Reformer":"改革派",
    "Imperial Court":"朝廷", "The Court of the Emperor":"朝廷", "Imperial Army":"官军",
    "Ouetsu Reppan Dōmei":"奥羽越列藩同盟", "Ouetsu Reppan Domei":"奥羽越列藩同盟",
    "Ou Reppan Domei":"奥羽越列藩同盟", "Satcho Alliance":"萨长同盟",
    "Shinsengumi":"新选组", "Mimawari-gumi":"见回组", "Kiheitai":"奇兵队",
    "Shogitai":"彰义队", "Sekihotai":"赤报队", "Jinshotai":"迅冲队", "Tenguto":"天狗党",
    "Tengu-to":"天狗党", "Tosa Kinno-to":"土佐勤王党",
    "Byakkotai":"白虎队", "Suzakutai":"朱雀队", "Seiryutai":"青龙队", "Genbutai":"玄武队",
    # martial schools
    "Martial Schools":"武术流派", "Itto-ryu":"一刀流", "Itto-Ryu":"一刀流",
    "Hokushin Itto-ryu":"北辰一刀流", "Shinkage-ryu":"新阴流", "Jigen-ryu":"示现流",
    "Hozoin-ryu":"宝藏院流", "Tanegashima-ryu":"种子岛流", "Takashima-ryu":"高岛流",
    "Heki-ryu":"日置流", "Shinto Munen-ryu":"神道无念流", "Ogasawara-ryu":"小笠原流",
    "Hoki-ryu":"伯耆流", "Shingyoto-ryu":"心形刀流", "Oshima-ryu":"大岛流",
    "Tamiya-ryu":"田宫流", "Moriuchi-ryu":"森内流", "Owari Kan-ryu":"尾张贯流",
    "Shinshin-ryu":"神心流", "Tatsumi-ryu":"辰巳流", "Tennen Rishin-ryu":"天然理心流",
    "Nanbu-ryu":"南部流", "Kyoshin Meiichi-ryu":"镜新明智流",
    # common historical people
    "Tokugawa Yoshinobu":"德川庆喜", "Tokugawa Iemochi":"德川家茂", "Tokugawa Nariaki":"德川齐昭",
    "Matsudaira Katamori":"松平容保", "Shimazu Nariakira":"岛津齐彬", "Shimazu Hisamitsu":"岛津久光",
    "Saigo Takamori":"西乡隆盛", "Saigō Takamori":"西乡隆盛", "Okubo Toshimichi":"大久保利通",
    "Ōkubo Toshimichi":"大久保利通", "Komatsu Kiyokado":"小松清廉", "Kuroda Kiyotaka":"黑田清隆",
    "Godai Tomoatsu":"五代友厚", "Oyama Iwao":"大山岩", "Ōyama Iwao":"大山岩",
    "Kawamura Sumiyoshi":"川村纯义", "Kirino Toshiaki":"桐野利秋", "Sakamoto Ryoma":"坂本龙马",
    "Sakamoto Ryōma":"坂本龙马", "Nakaoka Shintaro":"中冈慎太郎", "Nakaoka Shintarō":"中冈慎太郎",
    "Goto Shojiro":"后藤象二郎", "Gotō Shōjirō":"后藤象二郎", "Itagaki Taisuke":"板垣退助",
    "Yamauchi Toyoshige":"山内丰信", "Takechi Hanpeita":"武市半平太", "Kido Takayoshi":"木户孝允",
    "Katsura Kogoro":"桂小五郎", "Katsura Kogorō":"桂小五郎", "Takasugi Shinsaku":"高杉晋作",
    "Yoshida Shoin":"吉田松阴", "Yoshida Shōin":"吉田松阴", "Kusaka Genzui":"久坂玄瑞",
    "Ito Hirobumi":"伊藤博文", "Itō Hirobumi":"伊藤博文", "Inoue Kaoru":"井上馨",
    "Yamagata Aritomo":"山县有朋", "Omura Masujiro":"大村益次郎", "Ōmura Masujirō":"大村益次郎",
    "Mori Takachika":"毛利敬亲", "Mōri Takachika":"毛利敬亲", "Mori Motonori":"毛利元德",
    "Kawai Tsugunosuke":"河井继之助", "Kawai Tsuginosuke":"河井继之助", "Date Munenari":"伊达宗城",
    "Matsudaira Shungaku":"松平春岳", "Hashimoto Sanai":"桥本左内", "Yokoi Shonan":"横井小楠",
    "Yokoi Shōnan":"横井小楠", "Nabeshima Naomasa":"锅岛直正", "Okuma Shigenobu":"大隈重信",
    "Ōkuma Shigenobu":"大隈重信", "Eto Shimpei":"江藤新平", "Etō Shimpei":"江藤新平",
    "Soejima Taneomi":"副岛种臣", "Iwakura Tomomi":"岩仓具视", "Sanjo Sanetomi":"三条实美",
    "Sanjō Sanetomi":"三条实美", "Katsu Kaishu":"胜海舟", "Katsu Kaishū":"胜海舟",
    "Enomoto Takeaki":"榎本武扬", "Otori Keisuke":"大鸟圭介", "Ōtori Keisuke":"大鸟圭介",
    "Kondo Isami":"近藤勇", "Kondō Isami":"近藤勇", "Hijikata Toshizo":"土方岁三",
    "Hijikata Toshizō":"土方岁三", "Okita Soji":"冲田总司", "Okita Sōji":"冲田总司",
    "Saito Hajime":"斋藤一", "Saitō Hajime":"斋藤一", "Nagakura Shinpachi":"永仓新八",
    "Harada Sanosuke":"原田左之助", "Todo Heisuke":"藤堂平助", "Tōdō Heisuke":"藤堂平助",
    "Yamanami Keisuke":"山南敬助", "Serizawa Kamo":"芹泽鸭", "Ito Kashitaro":"伊东甲子太郎",
    "Itō Kashitarō":"伊东甲子太郎", "Sakuma Shozan":"佐久间象山", "Sakuma Shōzan":"佐久间象山",
    "Fukuzawa Yukichi":"福泽谕吉", "Ii Naosuke":"井伊直弼", "Abe Masahiro":"阿部正弘",
    "Hotta Masayoshi":"堀田正睦", "Ando Nobumasa":"安藤信正", "Andō Nobumasa":"安藤信正",
    "Saigo Tanomo":"西乡赖母", "Saigō Tanomo":"西乡赖母", "Nakano Takeko":"中野竹子",
    "Yamakawa Hiroshi":"山川浩", "Sagawa Kanbei":"佐川官兵卫", "Kazu-no-miya Chikako":"和宫亲子内亲王",
    "Tenshoin":"天璋院", "Tenshōin":"天璋院",
}

# Place names and common place-qualified labels.
for en, zh in PLACES.items():
    EXACT.setdefault(en, zh)
    EXACT.setdefault(f"{en}-han", f"{zh}藩")
    EXACT.setdefault(f"{en} Retainers", f"{zh}藩士")
    EXACT.setdefault(f"{en} Caravan Master", f"{zh}商队首领")

UNIT_SUFFIX = {
    "Denshutai":"传习队", "Noheitai":"农兵队", "Fuheitai":"步兵队", "Hoheitai":"步兵队",
    "Jutai":"铳队", "Jushitai":"铳士队", "Teppotai":"铁炮队", "Seieitai":"精锐队",
    "Yugekitai":"游击队", "Sogekitai":"狙击队", "Mimawari-gumi":"见回组",
    "Kiheitai":"奇兵队", "Shogitai":"彰义队", "Jinshotai":"迅冲队",
}
for en, zh in PLACES.items():
    for suffix, zhs in UNIT_SUFFIX.items():
        EXACT.setdefault(f"{en} {suffix}", f"{zh}{zhs}")
for suffix, zhs in UNIT_SUFFIX.items():
    EXACT.setdefault(f"Bakufu {suffix}", f"幕府{zhs}")

# High-visibility concept/help text rewritten from the supplied English source. Control/link tokens are kept.
ID_FIXES = {
    # reform/help titles
    "551Rfsop":"改革",
    "a3BLERbz":"庆应改革（1865）",
    "hEIiqFOl":"庆应改革（1866）",
    "LQZzQOJr":"明治改革（1867）",
    "aEbjnf41":"戊辰战争改革（1868）",
    "9v5f6eq6":"四神体制改革（1868）",
    "ON8mqnxs":"明治维新改革（1870）",
    "lXePKasd":"社会身分",
    "IG1fHpiV":"公家", "7cuzdfbI":"大名", "01dc0ds8":"武家", "DoSReZx1":"百姓",
    "qun3E3A7":"町人", "4zs9V9yN":"秽多·非人", "osiwP5oL":"外国人",
    "pX2AJ9oC":"外国商人", "1yyVKFnY":"野战炮兵", "Zt4XMACT":"特种弹药",

    "REFS21al":"日本的变革并非一蹴而就。自1853年开国、1868年戊辰战争，再到其后的明治时期，日本社会在社会、军事与经济领域经历了规模巨大但循序渐进的改革。因此，启用改革机制后，并非所有兵种从开局即可使用；随着年代推进，或玩家所属势力通过相应政策，更先进的近代化兵种将逐步解锁。",
    "uzonvUWW":"1865年初，幕府开始有计划地推进军制近代化。此前设立的“三兵队”并未取得成功。禁门之变与长州内部的武装冲突进一步暴露了旧军制的问题；幕府随后尝试依武士身分等级重新编组部队，结果仍不理想，却由此开启了此后席卷日本的大规模军事改革。此前，这类改革主要只见于少数藩。此阶段将解锁步兵队及其多数同类兵种，也包括见回组、新选组等特殊组织的部队。{newline}{newline}若启用政策制改革，则这些兵种改由“西式操练”政策解锁。",
    "sgDswQVO":"1866年，幕府遭遇了此前难以想象的失败：第二次长州征讨本意在于重申幕府权威并彻底压服长州，结果十五万幕府军却被约四千名装备近代步枪的长州军击溃，幕府损失数千人，而对方伤亡仅数百。战败之后，德川庆喜又继任将军，日本由此进入军制改革的高潮。庆喜着手整顿幕府军，编成步兵队、游击队与传习队；其他各藩也受到刺激，开始建立真正意义上的近代步兵。{newline}{newline}若启用政策制改革，则这些兵种主要由“统一军服”政策解锁。",
    "tkAa93qw":"孝明天皇强烈排斥外国势力，并支持尊王攘夷。然而，他的继承者并没有如此固执。1867年初孝明天皇因天花去世后，年少的新天皇及其近臣也开始推行改革，组建新的朝廷近卫部队；与此同时，土佐迅冲队等尊王派武装逐渐汇合为一支近代军队。长州也开始把残余的诸队民兵改编为正规部队，为所有人都已预感到的动乱做准备。{newline}{newline}若启用政策制改革，则这些兵种由“统一军服”或“军官学校”政策解锁。",
    "uKN9qS6E":"当日本各地陆续改革时，北方许多藩以及关西少数藩仍停滞不前。1868年初戊辰战争爆发后，这种选择的代价迅速显现：旧式武士部队在装备近代步枪的农兵面前遭到惨败。以官军一方的久保田藩和幕府一方的仙台藩为代表，这些藩不得不仓促重组军队，以求抵御进入本藩领地的敌军。{newline}{newline}若启用政策制改革，则这些兵种由“统一军服”或“西式操练”政策解锁。",
    "BWWqeWJi":"会津藩的改革在时间和动因上与{BOSHIN_REFORMS_LINK}大体相同，但其军制重组采取了相当独特的方式。会津仍不愿让农民进入军队，于是按年龄把藩内武士编入“四神”诸队：最年轻的白虎队由16至17岁者组成，其后依次为朱雀队（18至35岁）、青龙队（36至49岁）与玄武队（50岁以上），此外还有遍布全藩的多支志愿部队。最终，这套编制仍不足以阻止敌军入侵，也未能避免若松城遭到惨烈围攻。{newline}{newline}若启用政策制改革，则这些兵种由“西式操练”政策解锁。",
    "CR3jonLR":"纪州藩由德川御三家之一的纪州德川家统治，其军制改革比日本多数地区都来得更晚。与多以英国或法国为范本的诸藩不同，纪州选择仿效普鲁士军制，实行征兵制度：服若干年现役，随后转入预备役，最后编入民兵。然而，这些改革发生在戊辰战争之后；随着幕藩体制解体，大名私军最终并入新的官军体系，纪州的改革也未能继续发展。{newline}{newline}若启用政策制改革，则这些兵种由“实施征兵制”政策解锁。",
    "4iDrvn26":"这是最后一轮规模较小的改革，用来表现本模组加入的明治时期部队，例如拔刀队与海军陆战队。严格来说，这些部队的出现时间已经略超出模组主要年代范围，而且部分单位实际形成得更晚；之所以仍加入游戏，是为了补足相应的战术定位。{newline}{newline}若启用政策制改革，则这些兵种由“实施征兵制”政策解锁。",

    "9NAB4L1k":"身分机制是《Bakumatsu》加入的可选规则，用于表现江户时代的身分秩序。游戏将这种秩序理解为德川幕府建立统治后，为维持既有政治结构而形成的一系列限制。因此，它带来的约束通常多于收益；如果只想进行较轻松、直接的游戏流程，可以关闭这一机制。",
    "vnNCl4Cz":"公家是以京都朝廷为中心的宫廷贵族，名义上位居社会秩序顶端。许多公家出自皇族支系，传统上承担朝廷礼仪、文书与辅弼天皇等职责。自武家政权确立以后，公家的实际政治权力长期有限，许多人依靠教授和歌、礼法、经典等维持家计，也常受聘教育富商与高级武士乃至大名子弟。幕末随着朝廷重新介入政治，公家的影响力再次上升，随后又在身分制度废除后被纳入新的贵族体系。{newline}{newline}优点：{newline}可以统率私人随从（氏族等级与管理技能提供的部队上限+50%）{newline}高度影响力（每日额外获得2点影响力）{newline}{newline}限制：无",
    "wTxCBzId":"大名是江户时代各藩的统治者。全日本约有二百五十家大名，分领各地。成为大名的最低标准通常是领有一万石以上的石高；一万石大致相当于每年约一百五十万公斤稻米的产出，而最富有的大名则超过百万石。名义上，大名受将军节制，将军可以改易其领地与家名；但对实力强大的大藩而言，实际关系远比制度规定复杂。只要维持对幕府的名义服从并保持秩序，不少大名在藩内事实上拥有高度自主权。玩家夺取或建立一个势力后，将自动成为大名。{newline}{newline}优点：{newline}作为势力领袖{newline}可以统率私人随从（氏族等级与管理技能提供的部队上限+50%）{newline}高度影响力（每日额外获得2点影响力）{newline}{newline}限制：无",
    "Diyi7QGV":"武家是武士阶层的正式称谓。名义上，武士以军事职能为本；但到江户后期，大多数武士实际上已兼具官僚性质，主要担任藩政职务。除萨摩、人吉等少数地区外，武士通常集中居住于城下町，前往乡村也受到限制。武士内部又存在明显等级差异：以幕府旗本等为代表的上级武士领取较高俸禄并担任要职，低级武士则更多充任警备、执法与基层差役。到了幕末，许多低级武士乃至部分上级武士都陷入贫困和债务之中。{newline}{newline}优点：{newline}依据氏族等级每日领取俸禄{newline}可以统率私人随从（氏族等级与管理技能提供的部队上限+50%）{newline}{newline}限制：{newline}不得经商（不能经营工坊或商队）",
    "PkLyT43W":"百姓是江户时代对农业人口的正式称谓之一，约占当时日本人口的八成。百姓大多生活在具有相当自治性的村落中：在服从藩令和承担年贡等义务的同时，村落内部通常自行维持秩序、执行规约，并通过庄屋等乡村组织处理日常事务。官方文书虽常限制普通百姓公开使用苗字，但许多家仍长期保有家名，并存在由家督继承者承袭通称的习惯。历史上，百姓与{CHONIN_LINK}并非法律上截然分开的两个身分；不过二者经济与生活方式差异很大，当时思想家也常将其分别讨论，本模组因此将其拆分为不同类别。{newline}{newline}优点：无{newline}{newline}限制：{newline}不能统率私人随从（氏族等级与管理技能提供的部队上限-33%）{newline}不得经商（不能经营工坊或商队）{newline}必须缴纳农业税（所拥有封地收入的50%归势力领袖而非本氏族）{newline}除非是当地势力的封臣，否则不能进入城镇或城堡的主堡",
    "0cg9FFOU":"町人主要指居住在城下町和城市中的商人、手工业者等城市居民。江户时代城市文化的繁荣，很大程度上建立在町人经济之上；富裕商人形成了实力可观的城市阶层，并推动了消费、工艺、美术、文学与戏剧的发展。幕府虽以俭约令等方式限制奢侈消费，町人文化仍持续扩张。江户尤其典型：城市中约有六十万町人，另有约七十万武士人口。尽管经济力量突出，町人在身分秩序中仍居于武士之下。历史上，{HYAKUSHO_LINK}与町人并不存在严格的法律身分分界；本模组依据二者实际社会角色的差异将其分开处理。{newline}{newline}优点：无{newline}{newline}限制：{newline}不能统率私人随从（氏族等级与管理技能提供的部队上限-33%）{newline}不能以封臣身分持有封地{newline}除非是当地势力的封臣，否则不能进入城镇或城堡的主堡",
    "C30bsAXr":"江户社会最底层存在多种受到制度性歧视的群体，其中最常见的历史称谓包括“秽多”和“非人”。这些称呼本身带有强烈的历史歧视色彩：所谓“秽多”多与皮革加工、处理动物尸体等被视为“不净”的世袭职业相关；“非人”则常包括乞讨者、艺人及部分承担治安杂役者。尽管遭受严重排斥，这些群体在城市与乡村社会中承担了不可替代的工作，例如皮革生产、处理死畜、警备以及对乞讨和表演活动的管理。{newline}{newline}这些群体也形成了复杂的内部组织。关东最著名的例子是弹左卫门——由特定家系世袭的名号，其组织曾统辖关东广泛地区的相关群体。江户时代先后有十三人继承这一名号，其经济实力据称可与中等规模大名相比。即便如此，针对这些群体的污名与歧视依然极其严重，其影响甚至延续到近现代。{newline}{newline}优点：无{newline}{newline}限制：{newline}不能统率私人随从（氏族等级与管理技能提供的部队上限-33%）{newline}不能以封臣身分持有封地{newline}除非是当地势力的封臣，否则不能进入城镇或城堡的主堡{newline}不得经商（不能经营工坊或商队）",
    "J84QToW3":"幕末开国以后，在日西方人并不属于日本原有的身分制度。随着通商口岸开放和条约体系建立，外国旅行者、商人与技术人员大量进入日本；其中一些成功的商人，尤其是军火商，与各藩和幕府建立了密切关系，取得了相当优越的社会地位，个别人甚至获赐日本名号或家纹。{newline}{newline}优点：无{newline}{newline}限制：不可作为玩家初始身分",
    "U37Ef6rB":"对海外商人而言，开国后的日本意味着巨大的新市场。金银比价与海外不同，而日本又急需大量舶来品，其中最重要的便是近代枪械。各国军火商纷纷来到日本，以枪支、军服、{FIELD_ARTILLERY_LINK}和军事技术换取金钱与特权。玩家可以在各城镇主堡中找到外国商人，购买近代枪械、火炮和军服；不同国籍商人的商品各有侧重。英国商人提供多种恩菲尔德与斯奈德—恩菲尔德步枪以及性能优良的火炮；法国商人出售优质步枪和较轻便廉价的火炮；德国商人以价格较低的步枪为主；美国商人则偏重转轮手枪、连发步枪和加特林机枪等连发武器。",
    "FnYVK1yy":"到了19世纪，火炮早已不只用于攻城。任何近代军队都会编制炮兵，而在幕末日本，重炮更是价值极高的军备。玩家可以从{FOREIGN_MERCHANTS_LINK}处购买野战炮，但其价格昂贵、重量也很大；携带过多火炮不仅会耗尽资金，还会严重拖慢队伍。战斗中使用火炮需要炮兵单位，其兵种图标带有火炮标记。军队中每10人最多配置1名炮兵，可部署的火炮数量最多为炮兵人数的一半。攻城开始时，火炮会从预备队中部署；即使战场上的炮位被摧毁，也不会永久损失对应装备。{newline}{newline}部署阶段按K键可布置火炮。",
    "C66WEwA2":"使用{FIELD_ARTILLERY_LINK}时，每种火炮都有默认弹药，并可能使用若干特殊弹种。例如拉希特山炮可以发射榴弹、实心弹或霰弹。若要让玩家或队伍成员在战斗中使用特殊弹药，本方总指挥必须拥有“石匠”或“攻城工程师”相关技能。{newline}{newline}战斗中，在火炮重新装填前按P键可以切换弹种。",

    # known machine mistranslations / conflict-safe display choices
    "JozAyodh":"请西", "Kism7ttN":"纪伊", "wIaHKKag":"加贺", "Z1qR2REA":"外样",
    "zHBbLO7U":"天璋院", "eHD3yI8F":"近卫丰子", "vsXnQaY3":"宍户丰子",
    "0VxHt8iA":"和宫亲子内亲王", "7s4dxFt3":"岛津久光",
    "FuKAbgHr":"商队首领", "BosNBKai":"海兵队",
}

# Only make these phrase changes when the id has a single source meaning.
SOURCE_GUARDED_REPLACEMENTS = [
    ("Caravan Master", "房车大师", "商队首领"),
    ("Chonin", "小忍", "町人"),
    ("Chonin", "町民阶级", "町人阶层"),
    ("goshi", "五子武士", "乡士"),
    ("goshi", "五子", "乡士"),
    ("pro-imperial", "亲帝国", "尊王"),
    ("pro-Imperial", "亲帝国", "尊王"),
    ("Imperial Army", "帝国陆军", "官军"),
    ("Imperial Army", "帝国军", "官军"),
    ("Daimyo", "封建领主", "大名"),
    ("daimyo", "封建领主", "大名"),
    ("Shogunate", "幕府将军", "幕府"),
    ("Bakufu", "巴库夫", "幕府"),
    ("ronin", "罗宁", "浪人"),
    ("Hatamoto", "哈塔莫托", "旗本"),
    ("Gokenin", "戈克宁", "御家人"),
]


def localname(tag: str) -> str:
    return tag.rsplit("}", 1)[-1]


def collect_source_variants():
    by_id = defaultdict(list)
    cn_root = CN_DIR.resolve()
    for path in MODULE.rglob("*.xml"):
        try:
            rp = path.resolve()
            if cn_root == rp or cn_root in rp.parents:
                continue
            root = ET.parse(path).getroot()
        except (ET.ParseError, UnicodeDecodeError, OSError):
            continue
        for el in root.iter():
            for raw in el.attrib.values():
                matches = list(LOC_RE.finditer(raw or ""))
                for i, m in enumerate(matches):
                    end = matches[i + 1].start() if i + 1 < len(matches) else len(raw)
                    txt = raw[m.end():end]
                    if txt not in by_id[m.group(1)]:
                        by_id[m.group(1)].append(txt)
            if localname(el.tag).lower() == "string" and el.attrib.get("id"):
                sid = el.attrib["id"]
                txt = el.attrib.get("text", "")
                # Strip an embedded leading localization marker if this is a source string table.
                m = LOC_RE.match(txt)
                if m:
                    txt = txt[m.end():]
                if txt not in by_id[sid]:
                    by_id[sid].append(txt)
    return by_id


def tokens(s: str):
    return [t for t in TOKEN_RE.findall(s or "") if not t.startswith("{=") and not t.startswith("{=!")]


def repair_conditional_closers(text: str, variants: list[str]):
    cn_matches = list(CLOSE_RE.finditer(text))
    if not cn_matches:
        return text, False
    candidates = []
    for src in variants:
        src_matches = list(CLOSE_RE.finditer(src))
        if len(src_matches) == len(cn_matches) and src_matches:
            candidates.append(src_matches)
    if not candidates:
        return text, False
    # Prefer the source form with the most backslashes (the canonical Bannerlord escaped closer).
    target_forms = [m.group(0) for m in max(candidates, key=lambda ms: sum(len(m.group("slashes")) for m in ms))]
    idx = 0
    changed = False
    def repl(m):
        nonlocal idx, changed
        target = target_forms[min(idx, len(target_forms) - 1)]
        idx += 1
        if m.group(0) != target:
            changed = True
            return target
        return m.group(0)
    return CLOSE_RE.sub(repl, text), changed


def resolve_exact(variants: list[str]):
    # Exact source replacement only when source meaning is not conflicted.
    cleaned = [v.strip() for v in variants if v.strip()]
    if not cleaned:
        return None
    targets = [EXACT.get(v) for v in cleaned]
    if len(cleaned) == 1 and targets[0]:
        return targets[0]
    if all(t is not None for t in targets) and len(set(targets)) == 1:
        return targets[0]
    return None


def patch_short_names():
    raw = KINGDOMS.read_text(encoding="utf-8-sig")
    patches = []
    tag_re = re.compile(r"<Kingdom\b[^>]*>", re.S)
    attr_re = re.compile(r'(?P<key>short_name|title)="(?P<value>[^"]*)"')

    def tag_repl(m):
        tag = m.group(0)
        attrs = {x.group("key"): x.group("value") for x in attr_re.finditer(tag)}
        short = attrs.get("short_name")
        title = attrs.get("title")
        if not short or not title or "{=" in short or not title.startswith("{="):
            return tag
        tm = re.match(r"\{=([^}]+)\}(.*)", title)
        if not tm:
            return tag
        localized_short = "{=" + tm.group(1) + "}" + short
        new_tag = tag.replace(f'short_name="{short}"', f'short_name="{localized_short}"', 1)
        kid = re.search(r'\bid="([^"]+)"', tag)
        patches.append({
            "file": KINGDOMS.relative_to(ROOT).as_posix(),
            "object_id": kid.group(1) if kid else "",
            "field": "short_name",
            "old": short,
            "new": localized_short,
            "reason": "reuse localized title id for kingdom short name",
        })
        return new_tag

    new_raw = tag_re.sub(tag_repl, raw)
    if new_raw != raw:
        KINGDOMS.write_text(new_raw, encoding="utf-8")
    return patches


source_variants = collect_source_variants()
changes = []
raw = CN_MAIN.read_text(encoding="utf-8-sig")


def main_repl(m):
    sid = m.group("id")
    old = html.unescape(m.group("text"))
    new = old
    reasons = []
    variants = source_variants.get(sid, [])

    repaired, did_repair = repair_conditional_closers(new, variants)
    if did_repair:
        new = repaired
        reasons.append("repair Bannerlord conditional closer")

    if sid in ID_FIXES and new != ID_FIXES[sid]:
        new = ID_FIXES[sid]
        reasons.append("curated historical/style rewrite")
    else:
        target = resolve_exact(variants)
        if target and new != target:
            new = target
            reasons.append("historical exact-name normalization")

        if len([v for v in variants if v.strip()]) == 1:
            src = next((v for v in variants if v.strip()), "")
            for guard, bad, good in SOURCE_GUARDED_REPLACEMENTS:
                if guard.lower() in src.lower() and bad in new:
                    new = new.replace(bad, good)
                    reasons.append(f"source-guarded terminology: {bad}->{good}")

    if new == old:
        return m.group(0)
    changes.append({
        "file": "ModuleData/Languages/CNs/bak_strings.xml",
        "id": sid,
        "source_variants": " || ".join(variants),
        "old_cn": old,
        "new_cn": new,
        "reason": " + ".join(dict.fromkeys(reasons)),
    })
    return m.group(1) + html.escape(new, quote=True) + m.group(4)


new_raw = ENTRY_RE.sub(main_repl, raw)
if new_raw != raw:
    CN_MAIN.write_text(new_raw, encoding="utf-8")

source_patches = patch_short_names()

REPORT.parent.mkdir(exist_ok=True)
with REPORT.open("w", encoding="utf-8-sig", newline="") as f:
    fields = ["file", "id", "source_variants", "old_cn", "new_cn", "reason"]
    w = csv.DictWriter(f, fieldnames=fields)
    w.writeheader(); w.writerows(changes)
with SOURCE_PATCH_REPORT.open("w", encoding="utf-8-sig", newline="") as f:
    fields = ["file", "object_id", "field", "old", "new", "reason"]
    w = csv.DictWriter(f, fieldnames=fields)
    w.writeheader(); w.writerows(source_patches)

print(f"second pass: {len(changes)} CN changes, {len(source_patches)} source short-name patches")
