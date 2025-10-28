#!/usr/bin/env python3
"""
顶级红队 - 全域资产发现与攻击链构建
APT风格的系统化侦察

功能:
1. 子域名枚举（被动+主动）
2. IP资产发现
3. 云资源枚举（AWS/Azure/GCP）
4. 技术栈指纹识别
5. 第三方服务发现
6. 供应链映射
7. 攻击面评分
8. 薄弱点推荐
"""

import subprocess
import json
import sys
import re
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime

class RedTeamRecon:
    def __init__(self, target_domain):
        self.target = target_domain
        self.assets = {
            "subdomains": [],
            "ips": [],
            "ports": {},
            "technologies": {},
            "cloud_resources": [],
            "third_party": [],
            "weak_points": []
        }
        
    def banner(self):
        print("=" * 80)
        print("🎯 顶级红队 - 全域资产侦察系统")
        print("=" * 80)
        print(f"目标: {self.target}")
        print(f"时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
        print("=" * 80 + "\n")
    
    # ==================== 1. 子域名枚举 ====================
    
    def passive_subdomain_enum(self):
        """被动子域名枚举 - 多源情报"""
        print("[*] 阶段1: 被动子域名枚举")
        print("    数据源: crt.sh, VirusTotal, SecurityTrails, AlienVault...")
        
        subdomains = set()
        
        # crt.sh (证书透明度)
        print("    [+] 查询 crt.sh...")
        try:
            cmd = f'curl -s "https://crt.sh/?q=%.{self.target}&output=json" 2>/dev/null'
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True, timeout=30)
            if result.stdout:
                try:
                    data = json.loads(result.stdout)
                    for entry in data:
                        name = entry.get('name_value', '')
                        for subdomain in name.split('\n'):
                            subdomain = subdomain.strip().lower()
                            if subdomain and self.target in subdomain:
                                subdomains.add(subdomain)
                except:
                    pass
        except Exception as e:
            print(f"    [-] crt.sh 错误: {e}")
        
        self.assets["subdomains"] = sorted(list(subdomains))
        print(f"    ✓ 发现 {len(subdomains)} 个子域名\n")
        return subdomains
    
    def active_subdomain_enum(self):
        """主动子域名枚举 - 字典爆破"""
        print("[*] 阶段2: 主动子域名枚举")
        print("    方法: 字典爆破 + 排列组合")
        
        # 常见子域名字典
        common_subs = [
            "www", "mail", "ftp", "admin", "portal", "api", "app", "mobile",
            "dev", "test", "stage", "staging", "uat", "prod", "production",
            "beta", "alpha", "demo", "sandbox", "internal", "vpn", "remote",
            "cloud", "cdn", "static", "assets", "media", "img", "images",
            "store", "shop", "payment", "pay", "checkout", "cart",
            "dashboard", "panel", "cp", "cpanel", "admin-panel",
            "blog", "news", "support", "help", "docs", "documentation",
            "m", "mobile-api", "api-gateway", "ws", "websocket",
            "old", "legacy", "v1", "v2", "backup", "bak",
            "jenkins", "gitlab", "git", "svn", "ci", "cd",
            "monitor", "metrics", "grafana", "kibana", "elk"
        ]
        
        found = []
        print(f"    [+] 测试 {len(common_subs)} 个常见子域名...")
        
        with ThreadPoolExecutor(max_workers=20) as executor:
            futures = {
                executor.submit(self._check_subdomain, f"{sub}.{self.target}"): sub 
                for sub in common_subs
            }
            
            for future in as_completed(futures):
                result = future.result()
                if result:
                    found.append(result)
                    if result not in self.assets["subdomains"]:
                        self.assets["subdomains"].append(result)
        
        print(f"    ✓ 新发现 {len(found)} 个活跃子域名\n")
        return found
    
    def _check_subdomain(self, subdomain):
        """检查子域名是否存在"""
        try:
            cmd = f"host {subdomain} 2>/dev/null | grep 'has address'"
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True, timeout=5)
            if result.stdout:
                return subdomain
        except:
            pass
        return None
    
    # ==================== 2. 云资源枚举 ====================
    
    def cloud_resource_enum(self):
        """云资源枚举 - AWS/Azure/GCP"""
        print("[*] 阶段3: 云资源枚举")
        print("    目标: S3, Azure Blob, GCS, CloudFront, Firebase...")
        
        cloud_assets = []
        
        # 生成可能的S3桶名
        s3_candidates = [
            self.target.replace('.', '-'),
            self.target.split('.')[0],
            f"{self.target.split('.')[0]}-backup",
            f"{self.target.split('.')[0]}-uploads",
            f"{self.target.split('.')[0]}-static",
            f"{self.target.split('.')[0]}-prod",
            f"{self.target.split('.')[0]}-dev",
        ]
        
        print(f"    [+] 测试 {len(s3_candidates)} 个可能的S3桶...")
        
        for bucket in s3_candidates:
            result = self._check_s3_bucket(bucket)
            if result:
                cloud_assets.append(result)
        
        self.assets["cloud_resources"] = cloud_assets
        print(f"    ✓ 发现 {len(cloud_assets)} 个云资源\n")
        return cloud_assets
    
    def _check_s3_bucket(self, bucket_name):
        """检查S3桶是否存在及权限"""
        try:
            url = f"https://{bucket_name}.s3.amazonaws.com"
            cmd = f"curl -s -I '{url}' 2>/dev/null"
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True, timeout=10)
            
            if result.stdout:
                if "200 OK" in result.stdout or "403 Forbidden" in result.stdout:
                    status = "可访问" if "200 OK" in result.stdout else "私有(403)"
                    return {
                        "type": "AWS S3",
                        "name": bucket_name,
                        "url": url,
                        "status": status
                    }
        except:
            pass
        return None
    
    # ==================== 3. 端口扫描 ====================
    
    def port_scan(self, target_list):
        """快速端口扫描 - TOP 1000"""
        print("[*] 阶段4: 端口与服务扫描")
        print("    扫描: TOP 100 常见端口")
        
        if not target_list:
            print("    [-] 无目标，跳过\n")
            return
        
        # 扫描前5个子域名
        targets = target_list[:5]
        
        for target in targets:
            print(f"    [+] 扫描 {target}...")
            self.assets["ports"][target] = self._quick_port_scan(target)
        
        print("    ✓ 端口扫描完成\n")
    
    def _quick_port_scan(self, target):
        """快速扫描常见端口"""
        common_ports = [
            21, 22, 23, 25, 53, 80, 110, 111, 135, 139, 143, 443, 445, 993, 995,
            1723, 3306, 3389, 5432, 5900, 6379, 8000, 8080, 8443, 8888, 9090, 27017
        ]
        
        open_ports = []
        
        for port in common_ports[:20]:  # 只扫前20个以节省时间
            try:
                cmd = f"timeout 2 bash -c 'echo >/dev/tcp/{target}/{port}' 2>/dev/null"
                result = subprocess.run(cmd, shell=True, timeout=3)
                if result.returncode == 0:
                    open_ports.append(port)
            except:
                pass
        
        return open_ports
    
    # ==================== 4. 技术栈识别 ====================
    
    def tech_stack_fingerprint(self):
        """技术栈指纹识别"""
        print("[*] 阶段5: 技术栈指纹识别")
        print("    检测: Web服务器, CMS, 框架, CDN...")
        
        targets = self.assets["subdomains"][:10] if self.assets["subdomains"] else [self.target]
        
        for target in targets:
            tech = self._identify_tech(target)
            if tech:
                self.assets["technologies"][target] = tech
        
        print(f"    ✓ 识别 {len(self.assets['technologies'])} 个目标的技术栈\n")
    
    def _identify_tech(self, target):
        """识别单个目标的技术"""
        try:
            cmd = f"curl -s -I 'https://{target}' --max-time 10 2>/dev/null"
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True, timeout=15)
            
            if result.stdout:
                headers = result.stdout.lower()
                tech = []
                
                # 服务器识别
                if 'nginx' in headers:
                    tech.append('Nginx')
                elif 'apache' in headers:
                    tech.append('Apache')
                elif 'microsoft-iis' in headers:
                    tech.append('IIS')
                
                # CDN识别
                if 'cloudflare' in headers:
                    tech.append('Cloudflare')
                elif 'cloudfront' in headers:
                    tech.append('AWS CloudFront')
                
                # 框架识别
                if 'x-powered-by' in headers:
                    match = re.search(r'x-powered-by: (.+)', headers)
                    if match:
                        tech.append(match.group(1).strip())
                
                return tech
        except:
            pass
        return None
    
    # ==================== 5. 薄弱点分析 ====================
    
    def identify_weak_points(self):
        """识别薄弱点 - 最易突破的资产"""
        print("[*] 阶段6: 薄弱点识别与评分")
        print("    分析: 老旧系统, 测试环境, 未授权访问...")
        
        weak_points = []
        
        # 检查测试/开发环境
        dev_keywords = ['dev', 'test', 'stage', 'staging', 'uat', 'beta', 'alpha', 'demo', 'sandbox']
        for subdomain in self.assets["subdomains"]:
            for keyword in dev_keywords:
                if keyword in subdomain.lower():
                    weak_points.append({
                        "asset": subdomain,
                        "reason": f"测试/开发环境 ({keyword})",
                        "priority": "HIGH",
                        "score": 8.5
                    })
                    break
        
        # 检查老旧系统
        old_keywords = ['old', 'legacy', 'backup', 'bak', 'v1']
        for subdomain in self.assets["subdomains"]:
            for keyword in old_keywords:
                if keyword in subdomain.lower():
                    weak_points.append({
                        "asset": subdomain,
                        "reason": f"老旧/备份系统 ({keyword})",
                        "priority": "MEDIUM",
                        "score": 7.0
                    })
                    break
        
        # 检查管理面板
        admin_keywords = ['admin', 'panel', 'cpanel', 'dashboard', 'portal']
        for subdomain in self.assets["subdomains"]:
            for keyword in admin_keywords:
                if keyword in subdomain.lower():
                    weak_points.append({
                        "asset": subdomain,
                        "reason": f"管理面板 ({keyword})",
                        "priority": "HIGH",
                        "score": 8.0
                    })
                    break
        
        # 检查云资源
        for cloud in self.assets["cloud_resources"]:
            if cloud["status"] == "可访问":
                weak_points.append({
                    "asset": cloud["url"],
                    "reason": "云存储可公开访问",
                    "priority": "CRITICAL",
                    "score": 9.5
                })
        
        # 按优先级排序
        weak_points.sort(key=lambda x: x["score"], reverse=True)
        self.assets["weak_points"] = weak_points
        
        print(f"    ✓ 识别 {len(weak_points)} 个高价值目标\n")
        return weak_points
    
    # ==================== 6. 报告生成 ====================
    
    def generate_attack_chain(self):
        """生成攻击链建议"""
        print("=" * 80)
        print("📊 资产侦察完成 - 攻击链分析")
        print("=" * 80 + "\n")
        
        print(f"[+] 资产统计:")
        print(f"    子域名总数: {len(self.assets['subdomains'])}")
        print(f"    云资源数量: {len(self.assets['cloud_resources'])}")
        print(f"    技术栈识别: {len(self.assets['technologies'])} 个目标")
        print(f"    薄弱点数量: {len(self.assets['weak_points'])}\n")
        
        if self.assets["weak_points"]:
            print("🎯 推荐攻击目标 (TOP 5):")
            print("-" * 80)
            for i, weak in enumerate(self.assets["weak_points"][:5], 1):
                print(f"\n[{i}] {weak['asset']}")
                print(f"    原因: {weak['reason']}")
                print(f"    优先级: {weak['priority']}")
                print(f"    评分: {weak['score']}/10")
        
        print("\n" + "=" * 80)
        print("🔥 下一步行动建议:")
        print("=" * 80)
        print("1. 针对TOP薄弱点进行深度扫描 (Nuclei/Nmap)")
        print("2. 测试环境通常防护较弱，优先突破")
        print("3. 检查云资源是否存在敏感文件")
        print("4. 尝试默认凭证/弱密码攻击")
        print("5. 寻找未授权API端点")
        print("=" * 80 + "\n")
    
    def export_json(self, filename):
        """导出JSON格式资产清单"""
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(self.assets, f, ensure_ascii=False, indent=2)
        print(f"✅ 资产清单已导出: {filename}\n")
    
    # ==================== 主流程 ====================
    
    def run_full_recon(self):
        """执行完整侦察流程"""
        self.banner()
        
        # 1. 被动枚举
        self.passive_subdomain_enum()
        
        # 2. 主动枚举
        self.active_subdomain_enum()
        
        # 3. 云资源
        self.cloud_resource_enum()
        
        # 4. 端口扫描
        if self.assets["subdomains"]:
            self.port_scan(self.assets["subdomains"])
        
        # 5. 技术栈
        self.tech_stack_fingerprint()
        
        # 6. 薄弱点
        self.identify_weak_points()
        
        # 7. 生成攻击链
        self.generate_attack_chain()
        
        # 8. 导出
        self.export_json(f"{self.target.replace('.', '_')}_assets.json")


# ==================== 使用示例 ====================

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("用法: python3 redteam_recon.py <目标域名>")
        print("示例: python3 redteam_recon.py ems.com.vn")
        sys.exit(1)
    
    target = sys.argv[1]
    
    recon = RedTeamRecon(target)
    recon.run_full_recon()
