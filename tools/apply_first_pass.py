#!/usr/bin/env python3
import csv, html, re
from collections import Counter
from pathlib import Path
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / 'bak_strings.xml'
CN_PATH = ROOT / 'CNs' / 'bak_strings.xml'
REPORT = ROOT / 'reports' / 'first_pass_changes.csv'

# High-confidence historical and terminology corrections.
EXACT = {
    'Revere the Emperor': '尊王',
    'serving the emperor': '效忠天皇',
    'Allows recruitment of Imperial Army soldiers': '允许招募官军士兵',
    'The Court of the Emperor': '朝廷',
    'The Spine of the Shogunate': '幕府中坚',
    'Tokugawa Bakufu': '德川幕府',
    'Ouetsu Reppan Dōmei': '奥羽越列藩同盟',
    'Jozai-han': '请西藩',
    'Nagaoka-han': '长冈藩',
    'Tosa Kinno-to': '土佐勤王党',
    'Shogunate Retainers': '幕臣',
    'Kuwana Retainers': '桑名藩士',
    'Satsuma Retainers': '萨摩藩士',
    'Saga Retainers': '佐贺藩士',
    'Aizu Retainers': '会津藩士',
    'Fukui Retainers': '福井藩士',
    'Aizu Kotetsu-kai': '会津小铁会',
    'Choshu-den': '长州传',
    'Kofu-den': '甲府传',
    'Kishu Tamiya Ryu': '纪州田宫流',
    'Itto-Ryu': '一刀流',
    'Ono-ha': '小野派',
    'Nakanishi-ha': '中西派',
    'Kawada-ha': '川田派',
    'Chikurin-ha': '竹林派',
    'Yashima-ha': '屋岛派',
    'Takada-ha': '高田派',
    'Mizoguchi-ha': '沟口派',
    'Odani Dojo': '小谷道场',
    'Shieikan': '试卫馆',
    'Kodokan': '弘道馆',
    'Genbukan': '玄武馆',
    'Renpeikan': '练兵馆',
    'Renbukan': '练武馆',
    'Bakufu Naginata Gokenin': '幕府薙刀御家人',
    'Bakufu Yari Gokenin': '幕府枪御家人',
    'Bakufu Daikyu Gokenin': '幕府大弓御家人',
    'Bakufu Teppo Gokenin': '幕府铁炮御家人',
    'Bakufu Odachi Gokenin': '幕府大太刀御家人',
    'Bakufu Shoinban': '幕府书院番',
    'Bakufu Koshogumi': '幕府小姓组',
    'Bakufu Doshin': '幕府同心',
    'Bakufu Mimawari-gumi': '幕府见回组',
    'Bakufu Sogekitai': '幕府狙击队',
    'Bakufu Yoriki': '幕府与力',
    'Bakufu Yugekitai': '幕府游击队',
    'Bakufu Hoheitai': '幕府步兵队',
    'Choshu Denshutai': '长州传习队',
    'Satsuma Denshutai': '萨摩传习队',
    'Choshu Noheitai': '长州农兵队',
    'Choshu Fuheitai': '长州步兵队',
    'Fukui Jutai': '福井铳队',
    'Nagaoka Jutai': '长冈铳队',
    'Nagaoka Jushitai': '长冈铳士队',
    'Ogaki Teppotai': '大垣铁炮队',
    'Okayama Seieitai': '冈山精锐队',
    'Kii-Kameyama Castle': '纪伊龟山城',
    'Tosaminato': '十三湊',
    'Tsuge': '柘植',
}

# Source short-name -> standard historical Chinese for pattern-generated labels.
PLACES = {
    'Satsuma':'萨摩','Choshu':'长州','Chōshū':'长州','Tosa':'土佐','Aizu':'会津','Sendai':'仙台',
    'Shonai':'庄内','Morioka':'盛冈','Hirosaki':'弘前','Kubota':'久保田','Akita':'秋田','Nagaoka':'长冈',
    'Yonezawa':'米泽','Nihonmatsu':'二本松','Kuwana':'桑名','Owari':'尾张','Kishu':'纪州','Kii':'纪伊',
    'Hikone':'彦根','Fukui':'福井','Saga':'佐贺','Kumamoto':'熊本','Uwajima':'宇和岛','Matsuyama':'松山',
    'Hiroshima':'广岛','Okayama':'冈山','Tsu':'津','Mito':'水户','Kaga':'加贺','Matsue':'松江','Kokura':'小仓',
    'Fukuoka':'福冈','Kurume':'久留米','Yodo':'淀','Obama':'小滨','Himeji':'姬路','Ozu':'大洲','Tokushima':'德岛',
    'Hitoyoshi':'人吉','Tottori':'鸟取','Fukushima':'福岛','Iyo Matsuyama':'伊予松山'
}


def localname(tag): return tag.rsplit('}',1)[-1]

def source_info():
    ordered=[]
    counts=Counter()
    for e in ET.parse(SRC).getroot().iter():
        if localname(e.tag)=='string' and e.attrib.get('id'):
            sid=e.attrib['id']; txt=e.attrib.get('text','')
            ordered.append((sid,txt)); counts[sid]+=1
    last={sid:txt for sid,txt in ordered}
    dup={sid for sid,c in counts.items() if c>1}
    return last, dup

last_source, duplicate_ids = source_info()

# Pattern-derived safe labels.
for en, zh in PLACES.items():
    EXACT.setdefault(f'{en}-han', f'{zh}藩')
    EXACT.setdefault(f'{en} Retainers', f'{zh}藩士')
    EXACT.setdefault(f'{en} Caravan Master', f'{zh}商队首领')

raw = CN_PATH.read_text(encoding='utf-8-sig')
entry_re = re.compile(r'(<string\s+id="(?P<id>[^"]+)"\s+text=")(?P<text>[^"]*)("\s*/>)')
changes=[]

def unescape_attr(s):
    return html.unescape(s)

def escape_attr(s):
    return html.escape(s, quote=True)

def repl(m):
    sid=m.group('id')
    old_xml=m.group('text')
    old=unescape_attr(old_xml)
    new=old
    src=last_source.get(sid,'')
    reasons=[]

    # Do not source-align duplicated IDs automatically: upstream reuses IDs for different strings.
    if sid not in duplicate_ids:
        if src in EXACT and EXACT[src] != new:
            new=EXACT[src]
            reasons.append('historical terminology')

        # Bannerlord conditional closer in source is commonly {\\?}; current CN collapsed many to {\?}.
        expected_close = src.count('{\\\\?}')
        current_close = new.count('{\\\\?}')
        single_close = new.count('{\\?}')
        if expected_close > current_close and single_close:
            need=min(expected_close-current_close, single_close)
            for _ in range(need):
                new=new.replace('{\\?}', '{\\\\?}', 1)
            reasons.append('restore conditional token')

    if new != old:
        changes.append({'id':sid,'source':src,'old_cn':old,'new_cn':new,'reason':' + '.join(reasons)})
        return m.group(1) + escape_attr(new) + m.group(4)
    return m.group(0)

new_raw = entry_re.sub(repl, raw)
CN_PATH.write_text(new_raw, encoding='utf-8')
REPORT.parent.mkdir(exist_ok=True)
with REPORT.open('w', encoding='utf-8-sig', newline='') as f:
    w=csv.DictWriter(f,fieldnames=['id','source','old_cn','new_cn','reason']); w.writeheader(); w.writerows(changes)
print(f'applied {len(changes)} first-pass changes')
