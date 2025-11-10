#!/usr/bin/env python3
import requests
import time
import json
from concurrent.futures import ThreadPoolExecutor, as_completed
import subprocess

def fetch_rapidns():
    """RapidDNS数据源"""
    print("[+] Fetching from RapidDNS...")
    try:
        url = "https://rapiddns.io/subdomain/ac.th?full=1"
        headers = {'User-Agent': 'Mozilla/5.0'}
        r = requests.get(url, headers=headers, timeout=30)
        domains = []
        # 解析HTML提取域名
        for line in r.text.split('\n'):
            if '.ac.th' in line and '<td>' in line:
                parts = line.split('>')
                for p in parts:
                    if '.ac.th' in p and '<' in p:
                        domain = p.split('<')[0].strip()
                        if domain.count('.') == 2:  # 只要裸域
                            domains.append(domain)
        return list(set(domains))
    except Exception as e:
        print(f"[-] RapidDNS failed: {e}")
        return []

def fetch_certspotter():
    """CertSpotter API"""
    print("[+] Fetching from CertSpotter...")
    try:
        url = "https://api.certspotter.com/v1/issuances?domain=ac.th&include_subdomains=true&expand=dns_names"
        r = requests.get(url, timeout=60)
        domains = []
        for cert in r.json():
            for name in cert.get('dns_names', []):
                name = name.replace('*.', '').strip().lower()
                if name.endswith('.ac.th') and name.count('.') == 2:
                    domains.append(name)
        return list(set(domains))
    except Exception as e:
        print(f"[-] CertSpotter failed: {e}")
        return []

def fetch_threatcrowd():
    """ThreatCrowd API"""
    print("[+] Fetching from ThreatCrowd...")
    try:
        url = "https://www.threatcrowd.org/searchApi/v2/domain/report/?domain=ac.th"
        r = requests.get(url, timeout=30)
        data = r.json()
        domains = []
        for sub in data.get('subdomains', []):
            if sub.count('.') == 2:
                domains.append(sub)
        return domains
    except Exception as e:
        print(f"[-] ThreatCrowd failed: {e}")
        return []

def fetch_hackertarget():
    """HackerTarget API"""
    print("[+] Fetching from HackerTarget...")
    try:
        url = "https://api.hackertarget.com/hostsearch/?q=ac.th"
        r = requests.get(url, timeout=30)
        domains = []
        for line in r.text.split('\n'):
            if '.ac.th' in line:
                domain = line.split(',')[0].strip()
                if domain.count('.') == 2:
                    domains.append(domain)
        return list(set(domains))
    except Exception as e:
        print(f"[-] HackerTarget failed: {e}")
        return []

def fetch_urlscan():
    """URLScan.io API"""
    print("[+] Fetching from URLScan.io...")
    try:
        url = "https://urlscan.io/api/v1/search/?q=domain:ac.th&size=10000"
        r = requests.get(url, timeout=30)
        domains = []
        for result in r.json().get('results', []):
            domain = result.get('page', {}).get('domain', '')
            if domain.endswith('.ac.th') and domain.count('.') == 2:
                domains.append(domain)
        return list(set(domains))
    except Exception as e:
        print(f"[-] URLScan failed: {e}")
        return []

def generate_thai_patterns():
    """生成泰国特定命名模式"""
    print("[+] Generating Thai patterns...")
    
    patterns = []
    
    # 泰国府名 (77个府)
    provinces = [
        'bangkok', 'samutprakan', 'nonthaburi', 'pathumthani', 'phranakhon',
        'ayutthaya', 'angthong', 'lopburi', 'singburi', 'chainat', 'saraburi',
        'chonburi', 'rayong', 'chanthaburi', 'trat', 'chachoengsao', 'prachinburi',
        'nakhonnayok', 'sakaeo', 'kanchanaburi', 'suphanburi', 'ratchaburi',
        'nakhonpathom', 'samutsakorn', 'samutsongkhram', 'phetchaburi', 'prachuapkhirikhan',
        'chiangmai', 'chiangrai', 'maehongson', 'lamphun', 'lampang', 'phrae',
        'nan', 'phayao', 'uttaradit', 'khonkaen', 'udonthani', 'loei', 'nongkhai',
        'mahasarakham', 'roiet', 'kalasin', 'sakonNakhon', 'nakhonphanom', 'mukdahan',
        'nakhonratchasima', 'buriram', 'surin', 'sisaket', 'ubonratchathani',
        'yasothon', 'chaiyaphum', 'amnatcharoen', 'nongbualamphu', 'udonthani',
        'nakhonsawan', 'uthaithani', 'kamphaengphet', 'tak', 'sukhothai', 'phitsanulok',
        'phichit', 'phetchabun', 'nakhonsithammarat', 'krabi', 'phangnga', 'phuket',
        'suratthani', 'ranong', 'chumphon', 'songkhla', 'satun', 'trang', 'phatthalung',
        'pattani', 'yala', 'narathiwat'
    ]
    
    # anuban + 地名
    for prov in provinces:
        patterns.append(f"anuban{prov}")
        patterns.append(f"ban{prov}")
        patterns.append(f"wat{prov}")
    
    # 大学缩写 (单字母+双字母)
    for c1 in 'abcdefghijklmnopqrstuvwxyz':
        patterns.append(f"{c1}u")  # au, bu, cu...
        patterns.append(f"{c1}mu")  # amu, bmu...
        patterns.append(f"{c1}su")  # asu, bsu...
        patterns.append(f"r{c1}u")  # rau, rbu... (rajamangala pattern)
        patterns.append(f"{c1}it")  # ait, bit...
        patterns.append(f"{c1}iu")  # aiu, biu...
    
    # 常见学校后缀
    prefixes = ['ab', 'ac', 'an', 'at', 'as', 'wa', 'wi', 'sa', 'si', 'sr', 
                'su', 'so', 'th', 'tr', 'na', 'no', 'pr', 'pa', 'pi', 'ra', 'ro']
    suffixes = ['school', 'college', 'tech', 'poly', 'wit', 'wittaya', 'islam']
    
    for pre in prefixes:
        for suf in suffixes:
            patterns.append(f"{pre}{suf}")
    
    # 数字学校 (1-500)
    for i in range(1, 501):
        patterns.append(f"school{i}")
        patterns.append(f"anuban{i}")
        patterns.append(f"wat{i}")
    
    return list(set(patterns))

def main():
    all_apex = set()
    
    # 读取现有数据
    try:
        with open('all_apex.txt', 'r') as f:
            all_apex.update(line.strip() for line in f)
        print(f"[*] Loaded {len(all_apex)} existing domains")
    except:
        pass
    
    # 1. 多源被动DNS
    sources = [
        fetch_rapidns,
        fetch_certspotter,
        fetch_threatcrowd,
        fetch_hackertarget,
        fetch_urlscan
    ]
    
    for source_func in sources:
        try:
            domains = source_func()
            all_apex.update(domains)
            print(f"    -> Total: {len(all_apex)}")
            time.sleep(2)
        except:
            pass
    
    # 2. 生成泰国模式
    patterns = generate_thai_patterns()
    print(f"[+] Generated {len(patterns)} patterns")
    
    # 保存待验证列表
    with open('patterns_to_verify.txt', 'w') as f:
        for p in patterns:
            f.write(f"{p}.ac.th\n")
    
    # 3. 保存当前结果
    with open('all_apex_temp.txt', 'w') as f:
        for domain in sorted(all_apex):
            f.write(domain + '\n')
    
    print(f"\n[+] Current total: {len(all_apex)} apex domains")
    print(f"[+] Generated {len(patterns)} patterns for DNS verification")
    print(f"[+] Next: Run DNS verification on patterns_to_verify.txt")

if __name__ == '__main__':
    main()
