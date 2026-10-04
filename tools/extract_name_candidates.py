#!/usr/bin/env python3
import csv, re
from pathlib import Path
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / 'bak_strings.xml'
CN = ROOT / 'CNs' / 'bak_strings.xml'
OUT = ROOT / 'reports' / 'name_candidates.csv'

KEYWORDS = {
    'domain','clan','shogunate','bakufu','imperial','emperor','court','loyalist','rebel','alliance',
    'satsuma','choshu','chōshū','tosa','aizu','sendai','shonai','morioka','hirosaki','kubota','akita',
    'nagaoka','niigata','yonezawa','nihonmatsu','kuwana','owari','kishu','kii','hikone','fukui','echizen',
    'saga','hizen','kumamoto','uwajima','iyo','matsuyama','hiroshima','okayama','tsu','ogaki','mito',
    'tokugawa','shimazu','mori','yamauchi','date','matsudaira','nanbu','tsugaru','sakai','nabeshima',
    'hosokawa','hachisuka','todo','tōdō','ii','asano','ikeda','maeda','uetsu','etsuetsu','ouetsu',
    'shinsengumi','mimawarigumi','kiheitai','hoheitai','yugekitai','denshutai','jinshotai','shogun'
}


def localname(tag): return tag.rsplit('}',1)[-1]
def entries(path):
    root=ET.parse(path).getroot(); out=[]
    for el in root.iter():
        if localname(el.tag)=='string' and el.attrib.get('id'):
            out.append((el.attrib['id'],el.attrib.get('text','')))
    return out

src = entries(SRC)
cn = {i:t for i,t in entries(CN)}
rows=[]
for sid,text in src:
    low=text.lower()
    if any(k in low for k in KEYWORDS):
        rows.append({'id':sid,'source':text,'current_cn':cn.get(sid,''),'reason':'keyword'})
        continue
    # Short title-like strings are likely names/units/places/factions and useful for terminology QA.
    words=re.findall(r"[A-Za-zĀ-ž'-]+", text)
    if 1 <= len(words) <= 7 and len(text) <= 70 and not any(ch in text for ch in '.?!,:;'):
        if any(w[:1].isupper() for w in words):
            rows.append({'id':sid,'source':text,'current_cn':cn.get(sid,''),'reason':'short_title'})

# de-duplicate exact ID/source pairs while preserving source order
seen=set(); uniq=[]
for r in rows:
    key=(r['id'],r['source'])
    if key not in seen:
        seen.add(key); uniq.append(r)
with open(OUT,'w',encoding='utf-8-sig',newline='') as f:
    w=csv.DictWriter(f,fieldnames=['id','source','current_cn','reason']); w.writeheader(); w.writerows(uniq)
print(f'wrote {len(uniq)} rows to {OUT}')
