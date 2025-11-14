#!/usr/bin/env python3
"""
CVE自动匹配系统 v11.0
根据指纹自动查询并匹配CVE

使用方法:
    python3 cve_matcher.py product_versions.txt

输入格式:
    产品名|版本号
    例如: WordPress|6.3.1

输出:
    按CVSS评分排序的CVE列表
"""

import requests
import json
import sys
import time
from urllib.parse import quote

class CVEMatcher:
    def __init__(self):
        self.nvd_api = "https://services.nvd.nist.gov/rest/json/cves/2.0"
        self.vulners_api = "https://vulners.com/api/v3/search/lucene/"
        self.session = requests.Session()
        self.session.headers.update({
            'User-Agent': 'CVE-Matcher/11.0'
        })
        
    def query_nvd(self, product, version):
        """
        查询NVD数据库
        """
        print(f"[*] 查询NVD: {product} {version}")
        
        # 构造CPE (Common Platform Enumeration)
        # 格式: cpe:2.3:部分:供应商:产品:版本:...
        product_lower = product.lower().replace(' ', '_')
        
        # 常见产品的供应商映射
        vendor_map = {
            'wordpress': 'wordpress',
            'apache': 'apache',
            'nginx': 'nginx',
            'mysql': 'mysql',
            'php': 'php',
            'spring': 'vmware',  # Spring属于VMware
            'tomcat': 'apache',
            'iis': 'microsoft',
            'jenkins': 'jenkins',
            'gitlab': 'gitlab',
        }
        
        vendor = vendor_map.get(product_lower, '*')
        
        try:
            # 方法1: 通过关键词搜索
            params = {
                'keywordSearch': f"{product} {version}",
                'resultsPerPage': 10
            }
            
            resp = self.session.get(
                self.nvd_api,
                params=params,
                timeout=10
            )
            
            if resp.status_code == 200:
                data = resp.json()
                cves = []
                
                for vuln in data.get('vulnerabilities', []):
                    cve_data = vuln.get('cve', {})
                    cve_id = cve_data.get('id')
                    
                    # 提取描述
                    descriptions = cve_data.get('descriptions', [])
                    description = descriptions[0].get('value', '') if descriptions else ''
                    
                    # 提取CVSS评分
                    metrics = cve_data.get('metrics', {})
                    cvss_v3 = metrics.get('cvssMetricV31', [{}])[0]
                    cvss_data = cvss_v3.get('cvssData', {})
                    score = cvss_data.get('baseScore', 0)
                    severity = cvss_data.get('baseSeverity', 'UNKNOWN')
                    
                    # 只关注中危及以上
                    if score >= 5.0:
                        cves.append({
                            'id': cve_id,
                            'score': score,
                            'severity': severity,
                            'description': description[:200]  # 截取前200字符
                        })
                
                return sorted(cves, key=lambda x: x['score'], reverse=True)
            else:
                print(f"[!] NVD查询失败: {resp.status_code}")
                return []
                
        except Exception as e:
            print(f"[!] NVD查询异常: {e}")
            return []
    
    def query_vulners(self, product, version):
        """
        查询Vulners数据库
        """
        print(f"[*] 查询Vulners: {product} {version}")
        
        try:
            query = f"{product} {version}"
            
            payload = {
                'query': query,
                'size': 10,
                'skip': 0,
                'fields': ['id', 'title', 'cvss', 'type']
            }
            
            resp = self.session.post(
                self.vulners_api,
                json=payload,
                timeout=10
            )
            
            if resp.status_code == 200:
                data = resp.json()
                cves = []
                
                for item in data.get('data', {}).get('search', []):
                    if item.get('type') == 'cve':
                        cve_id = item.get('id', '')
                        title = item.get('title', '')
                        cvss = item.get('cvss', {}).get('score', 0)
                        
                        if cvss >= 5.0:
                            cves.append({
                                'id': cve_id,
                                'score': cvss,
                                'title': title
                            })
                
                return sorted(cves, key=lambda x: x['score'], reverse=True)
            else:
                print(f"[!] Vulners查询失败: {resp.status_code}")
                return []
                
        except Exception as e:
            print(f"[!] Vulners查询异常: {e}")
            return []
    
    def query_cve(self, product, version):
        """
        综合查询CVE（优先NVD，备用Vulners）
        """
        print(f"\n{'='*60}")
        print(f"🔍 产品: {product} {version}")
        print(f"{'='*60}\n")
        
        # 先查NVD
        cves_nvd = self.query_nvd(product, version)
        
        # 延时，避免API限制
        time.sleep(1)
        
        # 再查Vulners（补充）
        cves_vulners = self.query_vulners(product, version)
        
        # 合并结果（去重）
        all_cves = {}
        
        for cve in cves_nvd:
            all_cves[cve['id']] = cve
        
        for cve in cves_vulners:
            if cve['id'] not in all_cves:
                all_cves[cve['id']] = cve
        
        # 按CVSS排序
        sorted_cves = sorted(all_cves.values(), key=lambda x: x['score'], reverse=True)
        
        return sorted_cves
    
    def match_from_file(self, fingerprint_file):
        """
        从指纹文件批量匹配
        """
        try:
            with open(fingerprint_file) as f:
                lines = f.readlines()
        except FileNotFoundError:
            print(f"[!] 文件不存在: {fingerprint_file}")
            sys.exit(1)
        
        total_cves = 0
        critical_cves = []
        
        for line in lines:
            line = line.strip()
            if not line or line.startswith('#'):
                continue
            
            parts = line.split('|')
            if len(parts) >= 2:
                product = parts[0].strip()
                version = parts[1].strip()
                
                cves = self.query_cve(product, version)
                
                if cves:
                    print(f"\n[+] 发现 {len(cves)} 个CVE:")
                    print("-" * 60)
                    
                    for i, cve in enumerate(cves[:10], 1):  # 只显示前10个
                        score = cve.get('score', 0)
                        cve_id = cve.get('id', '')
                        severity = cve.get('severity', '')
                        
                        # 颜色标记
                        if score >= 9.0:
                            color = '\033[91m'  # 红色
                            critical_cves.append(cve)
                        elif score >= 7.0:
                            color = '\033[93m'  # 黄色
                        else:
                            color = '\033[92m'  # 绿色
                        
                        reset = '\033[0m'
                        
                        print(f"{color}  {i}. [CVSS:{score:.1f}] {cve_id} {severity}{reset}")
                        
                        if 'description' in cve:
                            desc = cve['description'][:150]
                            print(f"     {desc}...")
                        elif 'title' in cve:
                            print(f"     {cve['title'][:150]}...")
                    
                    total_cves += len(cves)
                    print()
                else:
                    print(f"[!] 未找到CVE\n")
                
                # 延时，避免API限制
                time.sleep(2)
        
        # 总结
        print("\n" + "="*60)
        print("📊 CVE匹配总结")
        print("="*60)
        print(f"总CVE数: {total_cves}")
        print(f"严重漏洞(CVSS>=9.0): {len(critical_cves)}")
        
        if critical_cves:
            print("\n🔥 严重漏洞列表:")
            for cve in critical_cves:
                print(f"  - {cve['id']} (CVSS:{cve['score']})")
        
        print("\n💡 建议:")
        print("  1. 优先验证CVSS>=9.0的严重漏洞")
        print("  2. 使用nuclei验证: nuclei -u target.com -t cves/CVE-ID.yaml")
        print("  3. 搜索GitHub POC: gh search repos CVE-ID")
        print("  4. 手动验证每个CVE，避免误报")

def main():
    if len(sys.argv) < 2:
        print("用法: python3 cve_matcher.py <fingerprint_file>")
        print("\n输入文件格式:")
        print("  产品名|版本号")
        print("  例如:")
        print("    WordPress|6.3.1")
        print("    Apache|2.4.52")
        print("    Spring|2.6.3")
        sys.exit(1)
    
    fingerprint_file = sys.argv[1]
    
    print("""
╔══════════════════════════════════════════════════════════════╗
║                                                              ║
║               CVE自动匹配系统 v11.0                           ║
║                                                              ║
║   数据源: NVD + Vulners                                       ║
║   输出: 按CVSS评分排序的CVE列表                               ║
║                                                              ║
╚══════════════════════════════════════════════════════════════╝
""")
    
    matcher = CVEMatcher()
    matcher.match_from_file(fingerprint_file)

if __name__ == "__main__":
    main()
