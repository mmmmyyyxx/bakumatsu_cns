#!/usr/bin/env python3
import csv, re
from pathlib import Path
import xml.etree.ElementTree as ET
ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'reports'/'faction_candidates.csv'

def ln(t): return t.rsplit('}',1)[-1]
def read(path):
    rows=[]
    for e in ET.parse(path).getroot().iter():
        if ln(e.tag)=='string' and e.attrib.get('id'):
            rows.append((e.attrib['id'],e.attrib.get('text','')))
    return rows
src=read(ROOT/'bak_strings.xml')
cn={i:t for i,t in read(ROOT/'CNs'/'bak_strings.xml')}
kw=re.compile(r'\b(domain|clan|shogunate|bakufu|imperial|emperor|court|alliance|loyalist|rebel|kingdom|faction|han)\b',re.I)
proper=re.compile(r'^(Satsuma|Choshu|Chōshū|Tosa|Aizu|Sendai|Shonai|Morioka|Hirosaki|Kubota|Akita|Nagaoka|Yonezawa|Nihonmatsu|Kuwana|Owari|Kishu|Kii|Hikone|Fukui|Echizen|Saga|Hizen|Kumamoto|Uwajima|Iyo|Matsuyama|Hiroshima|Okayama|Tsu|Ogaki|Mito|Tokugawa|Ouetsu|Ōuetsu|Etsuetsu)',re.I)
rows=[]
for sid,s in src:
    if len(s)<=120 and (kw.search(s) or proper.search(s)):
        rows.append({'id':sid,'source':s,'current_cn':cn.get(sid,'')})
seen=set(); u=[]
for r in rows:
    k=(r['id'],r['source'])
    if k not in seen: seen.add(k);u.append(r)
with open(OUT,'w',encoding='utf-8-sig',newline='') as f:
    w=csv.DictWriter(f,fieldnames=['id','source','current_cn']);w.writeheader();w.writerows(u)
print(len(u))
