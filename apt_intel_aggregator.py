#!/usr/bin/env python3
"""
APT 实时威胁情报聚合器 v2.0
自动收集、分析、武器化最新 APT 手法

情报源:
- MITRE ATT&CK Enterprise
- NVD CVE Database (最新高危漏洞)
- GitHub (最新 PoC/Exploit)
- Exploit-DB
- APT 报告 RSS

依赖: pip install requests feedparser
"""

import requests
import json
import time
import os
from datetime import datetime, timedelta
import feedparser
from collections import defaultdict

class APTIntelAggregator:
    def __init__(self, output_dir='/tmp/apt_intel'):
        self.output_dir = output_dir
        os.makedirs(output_dir, exist_ok=True)
        
        self.sources = {
            'mitre_attack': 'https://raw.githubusercontent.com/mitre/cti/master/enterprise-attack/enterprise-attack.json',
            'nvd_cve': 'https://services.nvd.nist.gov/rest/json/cves/2.0',
            'github_api': 'https://api.github.com/search/repositories',
            'exploit_db_rss': 'https://www.exploit-db.com/rss.xml',
        }
        
        self.apt_groups = {
            'APT1': 'PLA Unit 61398 (China)',
            'APT28': 'Fancy Bear / GRU (Russia)',
            'APT29': 'Cozy Bear / SVR (Russia)',
            'APT38': 'Lazarus Group (North Korea)',
            'APT41': 'Double Dragon (China)',
            'Sandworm': 'APT44 / GRU Unit 74455 (Russia)',
            'FIN7': 'Carbanak (Cybercrime)',
        }
        
        self.intel_db = []
    
    def banner(self):
        print("""
╔═══════════════════════════════════════════════════════════╗
║     APT 实时威胁情报聚合系统 v2.0                          ║
║     Real-time APT Threat Intelligence Aggregator          ║
╚═══════════════════════════════════════════════════════════╝
""")
    
    def fetch_mitre_attack(self, days=30):
        """获取 MITRE ATT&CK 最近更新的技术"""
        print("[*] Fetching MITRE ATT&CK updates...")
        try:
            r = requests.get(self.sources['mitre_attack'], timeout=30)
            data = r.json()
            
            recent = []
            cutoff = datetime.now() - timedelta(days=days)
            
            for obj in data.get('objects', []):
                if obj.get('type') == 'attack-pattern':
                    modified = obj.get('modified', '')
                    if modified:
                        mod_date = datetime.strptime(modified[:10], '%Y-%m-%d')
                        if mod_date > cutoff:
                            technique = {
                                'id': obj.get('external_references', [{}])[0].get('external_id', 'Unknown'),
                                'name': obj.get('name', 'Unknown'),
                                'description': obj.get('description', '')[:200] + '...',
                                'tactics': [kcp.get('phase_name', '') for kcp in obj.get('kill_chain_phases', [])],
                                'modified': modified[:10],
                                'source': 'MITRE ATT&CK',
                                'url': f"https://attack.mitre.org/techniques/{obj.get('external_references', [{}])[0].get('external_id', '')}"
                            }
                            recent.append(technique)
            
            print(f"[+] Found {len(recent)} updated techniques (last {days} days)")
            return recent
        except Exception as e:
            print(f"[-] Error fetching MITRE: {e}")
            return []
    
    def fetch_latest_cves(self, days=7):
        """获取最新高危 CVE (CVSS >= 7.0)"""
        print("[*] Fetching latest high-severity CVEs...")
        try:
            start_date = (datetime.now() - timedelta(days=days)).strftime('%Y-%m-%dT00:00:00.000')
            end_date = datetime.now().strftime('%Y-%m-%dT23:59:59.999')
            
            url = f"{self.sources['nvd_cve']}?pubStartDate={start_date}&pubEndDate={end_date}&resultsPerPage=100"
            r = requests.get(url, timeout=30)
            data = r.json()
            
            high_severity = []
            for vuln in data.get('vulnerabilities', []):
                cve = vuln.get('cve', {})
                cve_id = cve.get('id', 'Unknown')
                
                metrics = cve.get('metrics', {})
                cvss_v31 = metrics.get('cvssMetricV31', [{}])[0] if metrics.get('cvssMetricV31') else {}
                cvss_data = cvss_v31.get('cvssData', {})
                score = cvss_data.get('baseScore', 0)
                severity = cvss_data.get('baseSeverity', 'UNKNOWN')
                
                if score >= 7.0:
                    cve_info = {
                        'cve_id': cve_id,
                        'score': score,
                        'severity': severity,
                        'description': cve.get('descriptions', [{}])[0].get('value', '')[:200] + '...',
                        'published': cve.get('published', '')[:10],
                        'source': 'NVD',
                        'url': f"https://nvd.nist.gov/vuln/detail/{cve_id}"
                    }
                    high_severity.append(cve_info)
            
            print(f"[+] Found {len(high_severity)} high-severity CVEs (CVSS >= 7.0)")
            return sorted(high_severity, key=lambda x: x['score'], reverse=True)
        except Exception as e:
            print(f"[-] Error fetching CVEs: {e}")
            return []
    
    def fetch_github_pocs(self, keywords=None, days=7):
        """搜索 GitHub 最新 PoC/Exploit"""
        if keywords is None:
            keywords = ['CVE-2024', 'CVE-2025', 'exploit', 'RCE', '0day', 'APT']
        
        print("[*] Searching GitHub for latest PoCs...")
        cutoff = (datetime.now() - timedelta(days=days)).strftime('%Y-%m-%d')
        pocs = []
        
        for keyword in keywords:
            try:
                url = f"{self.sources['github_api']}?q={keyword}+pushed:>{cutoff}&sort=updated&order=desc&per_page=10"
                headers = {'Accept': 'application/vnd.github.v3+json'}
                
                # 如果设置了 GitHub Token (推荐，避免限流)
                github_token = os.environ.get('GITHUB_TOKEN')
                if github_token:
                    headers['Authorization'] = f'token {github_token}'
                
                r = requests.get(url, headers=headers, timeout=30)
                if r.status_code == 200:
                    results = r.json()
                    for repo in results.get('items', [])[:5]:
                        poc = {
                            'name': repo.get('full_name', 'Unknown'),
                            'url': repo.get('html_url', ''),
                            'description': repo.get('description', 'No description')[:150],
                            'stars': repo.get('stargazers_count', 0),
                            'updated': repo.get('updated_at', '')[:10],
                            'language': repo.get('language', 'Unknown'),
                            'source': 'GitHub',
                            'keyword': keyword
                        }
                        pocs.append(poc)
                else:
                    print(f"[-] GitHub API rate limit or error: {r.status_code}")
                    break
                
                time.sleep(1)  # 避免限流
            except Exception as e:
                print(f"[-] Error searching GitHub for '{keyword}': {e}")
        
        print(f"[+] Found {len(pocs)} PoC repositories")
        return pocs
    
    def fetch_exploit_db(self, limit=20):
        """获取 Exploit-DB 最新漏洞"""
        print("[*] Fetching Exploit-DB updates...")
        try:
            feed = feedparser.parse(self.sources['exploit_db_rss'])
            exploits = []
            
            for entry in feed.entries[:limit]:
                exploit = {
                    'title': entry.get('title', 'Unknown'),
                    'url': entry.get('link', ''),
                    'published': entry.get('published', '')[:10],
                    'source': 'Exploit-DB'
                }
                exploits.append(exploit)
            
            print(f"[+] Found {len(exploits)} new exploits")
            return exploits
        except Exception as e:
            print(f"[-] Error fetching Exploit-DB: {e}")
            return []
    
    def analyze_apt_relevance(self, intel):
        """分析情报的 APT 相关性和可武器化程度"""
        apt_keywords = [
            'rce', 'remote code execution', 'remote command execution',
            'privilege escalation', 'privesc', 'lateral movement',
            'persistence', 'credential', 'bypass', 'authentication bypass',
            'supply chain', 'zero-day', '0day', 'apt', 'targeted',
            'critical', 'unauthenticated', 'pre-auth', 'arbitrary code',
        ]
        
        text = (intel.get('description', '') + ' ' + 
                intel.get('title', '') + ' ' +
                intel.get('name', '')).lower()
        
        relevance_score = sum(1 for keyword in apt_keywords if keyword in text)
        
        intel['apt_relevance'] = relevance_score
        intel['weaponizable'] = relevance_score >= 2
        
        # 额外加分项
        if intel.get('score', 0) >= 9.0:  # Critical CVE
            intel['apt_relevance'] += 2
        if intel.get('stars', 0) >= 100:  # 热门 GitHub 项目
            intel['apt_relevance'] += 1
        
        return intel
    
    def generate_report(self, intel_data):
        """生成可读性强的情报报告"""
        timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        
        report = f"""
╔═══════════════════════════════════════════════════════════╗
║  APT 威胁情报报告                                          ║
║  Generated: {timestamp}                              ║
╚═══════════════════════════════════════════════════════════╝

【情报统计】
总情报数量: {intel_data['total']}
可武器化: {intel_data['weaponizable_count']}
数据源: MITRE ATT&CK, NVD, GitHub, Exploit-DB

【Top 10 可武器化威胁情报】

"""
        
        for i, item in enumerate(intel_data['weaponizable'][:10], 1):
            report += f"""
[{i}] {item.get('name', item.get('cve_id', item.get('title', 'Unknown')))}
    └─ Source: {item['source']}
    └─ APT Relevance: {item['apt_relevance']}/10 {'🔥' if item['apt_relevance'] >= 5 else ''}
    └─ Weaponizable: {'✓ YES' if item['weaponizable'] else '✗ NO'}
"""
            if 'score' in item:
                report += f"    └─ CVSS Score: {item['score']} ({item['severity']})\n"
            if 'stars' in item:
                report += f"    └─ GitHub Stars: {item['stars']}\n"
            if 'url' in item:
                report += f"    └─ URL: {item['url']}\n"
            if 'tactics' in item and item['tactics']:
                report += f"    └─ MITRE Tactics: {', '.join(item['tactics'])}\n"
        
        report += f"""

【分类统计】
"""
        # 按来源分类
        source_counts = defaultdict(int)
        for item in intel_data['all_intel']:
            source_counts[item['source']] += 1
        
        for source, count in source_counts.items():
            report += f"  {source}: {count} 条\n"
        
        report += f"""

【输出文件】
  JSON: {self.output_dir}/apt_intel_latest.json
  Report: {self.output_dir}/apt_intel_report.txt
  
【使用建议】
  1. 优先关注 APT Relevance >= 5 的情报
  2. 检查 GitHub PoC 可用性
  3. 交叉验证多个来源
  4. 武器化测试在隔离环境进行

═══════════════════════════════════════════════════════════
"""
        return report
    
    def aggregate_all(self, days=7):
        """聚合所有威胁情报"""
        self.banner()
        
        all_intel = []
        
        # 1. MITRE ATT&CK
        mitre = self.fetch_mitre_attack(days=days)
        all_intel.extend(mitre)
        
        # 2. CVE
        cves = self.fetch_latest_cves(days=days)
        all_intel.extend(cves)
        
        # 3. GitHub PoCs
        pocs = self.fetch_github_pocs(days=days)
        all_intel.extend(pocs)
        
        # 4. Exploit-DB
        exploits = self.fetch_exploit_db()
        all_intel.extend(exploits)
        
        # 分析相关性
        print("\n[*] Analyzing APT relevance...")
        analyzed = [self.analyze_apt_relevance(intel) for intel in all_intel]
        
        # 排序（按可武器化程度）
        weaponizable = sorted(
            [i for i in analyzed if i.get('weaponizable')],
            key=lambda x: x.get('apt_relevance', 0),
            reverse=True
        )
        
        print(f"\n[+] Total intelligence collected: {len(all_intel)}")
        print(f"[+] Weaponizable intelligence: {len(weaponizable)}")
        
        # 准备输出数据
        intel_data = {
            'generated': datetime.now().isoformat(),
            'total': len(all_intel),
            'weaponizable_count': len(weaponizable),
            'all_intel': analyzed,
            'weaponizable': weaponizable
        }
        
        # 保存 JSON
        json_file = f'{self.output_dir}/apt_intel_latest.json'
        with open(json_file, 'w', encoding='utf-8') as f:
            json.dump(intel_data, f, indent=2, ensure_ascii=False)
        print(f"[+] JSON saved: {json_file}")
        
        # 生成并保存报告
        report = self.generate_report(intel_data)
        report_file = f'{self.output_dir}/apt_intel_report.txt'
        with open(report_file, 'w', encoding='utf-8') as f:
            f.write(report)
        print(f"[+] Report saved: {report_file}")
        
        # 显示报告
        print(report)
        
        return intel_data

def main():
    import argparse
    
    parser = argparse.ArgumentParser(description='APT 实时威胁情报聚合器')
    parser.add_argument('-d', '--days', type=int, default=7, help='情报时间范围（天）')
    parser.add_argument('-o', '--output', default='/tmp/apt_intel', help='输出目录')
    parser.add_argument('--loop', action='store_true', help='持续运行模式（每24小时更新）')
    
    args = parser.parse_args()
    
    aggregator = APTIntelAggregator(output_dir=args.output)
    
    if args.loop:
        print("[*] Running in continuous mode (updates every 24 hours)")
        print("[*] Press Ctrl+C to stop\n")
        while True:
            try:
                aggregator.aggregate_all(days=args.days)
                print(f"\n[*] Next update in 24 hours...")
                print(f"[*] Time: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
                time.sleep(86400)  # 24小时
            except KeyboardInterrupt:
                print("\n[!] Stopped by user")
                break
            except Exception as e:
                print(f"[-] Error: {e}")
                print("[*] Retrying in 1 hour...")
                time.sleep(3600)
    else:
        aggregator.aggregate_all(days=args.days)

if __name__ == '__main__':
    main()
