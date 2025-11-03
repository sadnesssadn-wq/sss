#!/usr/bin/env python3
"""
bill.ems.com.vn 登录测试
使用提供的凭证尝试登录商户后台
"""

import requests
import json
import re
from bs4 import BeautifulSoup

class BillEMSLogin:
    def __init__(self):
        self.base_url = "https://bill.ems.com.vn"
        self.session = requests.Session()
        self.session.headers.update({
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
            'Accept': 'application/json, text/javascript, */*; q=0.01',
            'Accept-Language': 'zh-CN,zh;q=0.9',
        })
    
    def get_csrf_token(self):
        """获取CSRF Token"""
        print("[*] 获取CSRF Token...")
        
        r = self.session.get(f"{self.base_url}/login")
        
        soup = BeautifulSoup(r.text, 'html.parser')
        
        # 从表单中提取_token
        token_input = soup.find('input', {'name': '_token'})
        if token_input:
            token = token_input.get('value')
            print(f"[+] CSRF Token: {token[:50]}...")
            return token
        
        # 从cookie中提取
        if 'XSRF-TOKEN' in self.session.cookies:
            print(f"[+] XSRF-TOKEN Cookie找到")
        
        return None
    
    def login(self, username, password):
        """登录"""
        print(f"\n[*] 尝试登录...")
        print(f"    用户名: {username}")
        print(f"    密码: {'*' * len(password)}")
        
        # 获取CSRF token
        csrf_token = self.get_csrf_token()
        
        if not csrf_token:
            print("[!] 无法获取CSRF Token")
            return False
        
        # 准备登录数据
        login_data = {
            '_token': csrf_token,
            'back': '',
            'login': username,
            'password': password,
        }
        
        # 发送登录请求
        r = self.session.post(
            f"{self.base_url}/login",
            data=login_data,
            headers={
                'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
                'X-Requested-With': 'XMLHttpRequest',
                'Origin': self.base_url,
                'Referer': f"{self.base_url}/login",
            },
            allow_redirects=False
        )
        
        print(f"[*] 响应状态码: {r.status_code}")
        
        # 检查响应
        if r.status_code == 200:
            try:
                data = r.json()
                print(f"[*] JSON响应: {json.dumps(data, indent=2, ensure_ascii=False)}")
                
                if data.get('success') or data.get('code') == 'success':
                    print("[+] 登录成功!")
                    return True
                else:
                    print(f"[!] 登录失败: {data.get('message', 'Unknown error')}")
                    return False
            
            except:
                print(f"[*] 响应内容: {r.text[:500]}")
        
        elif r.status_code == 302:
            location = r.headers.get('Location', '')
            print(f"[*] 重定向到: {location}")
            
            if '/login' not in location and location != '/':
                print("[+] 登录成功! (重定向到后台)")
                return True
            else:
                print("[!] 登录失败 (重定向回登录页)")
                return False
        
        return False
    
    def get_dashboard(self):
        """获取仪表盘"""
        print("\n[*] 访问仪表盘...")
        
        r = self.session.get(f"{self.base_url}/dashboard")
        
        print(f"[*] 状态码: {r.status_code}")
        
        if r.status_code == 200:
            print("[+] 成功访问仪表盘")
            
            soup = BeautifulSoup(r.text, 'html.parser')
            
            # 保存HTML
            with open('/workspace/bill_dashboard.html', 'w', encoding='utf-8') as f:
                f.write(r.text)
            
            print("[+] 仪表盘HTML已保存")
            
            # 提取用户信息
            user_info = soup.find('div', class_='user-info')
            if user_info:
                print(f"[*] 用户信息: {user_info.get_text().strip()}")
            
            # 提取菜单
            print("\n[*] 菜单项:")
            menus = soup.find_all('a', href=True)
            
            important_links = []
            for menu in menus:
                href = menu.get('href')
                text = menu.get_text().strip()
                
                if href.startswith('/') and text and len(text) > 2:
                    important_links.append((text, href))
            
            # 去重
            seen = set()
            for text, href in important_links:
                if href not in seen and any(kw in href for kw in ['api', 'token', 'webhook', 'order', 'setting']):
                    print(f"  • {text}: {href}")
                    seen.add(href)
            
            return True
        
        else:
            print("[!] 无法访问仪表盘 (可能未登录)")
            return False
    
    def get_api_tokens(self):
        """获取API Token"""
        print("\n[*] 查找API Token管理...")
        
        # 尝试可能的API token页面
        token_urls = [
            "/api-token",
            "/api-tokens",
            "/api/token",
            "/api/tokens",
            "/setting/api",
            "/settings/api",
            "/settings/token",
            "/profile/api",
            "/account/api",
        ]
        
        for url in token_urls:
            try:
                r = self.session.get(f"{self.base_url}{url}")
                
                if r.status_code == 200:
                    print(f"[+] 找到页面: {url}")
                    
                    soup = BeautifulSoup(r.text, 'html.parser')
                    
                    # 查找Token
                    tokens = re.findall(r'[A-Za-z0-9]{40,}', r.text)
                    
                    if tokens:
                        print(f"[+] 可能的Token:")
                        for token in tokens[:5]:
                            print(f"    {token}")
                    
                    # 保存HTML
                    filename = url.replace('/', '_')
                    with open(f'/workspace/bill{filename}.html', 'w', encoding='utf-8') as f:
                        f.write(r.text)
                    
                    print(f"[+] 页面已保存")
            
            except:
                pass
    
    def explore_api_endpoints(self):
        """探索API端点"""
        print("\n[*] 探索API端点...")
        
        endpoints = [
            "/api/user",
            "/api/profile",
            "/api/orders",
            "/api/orders/list",
            "/api/webhook",
            "/api/webhooks",
            "/api/pickup-points",
            "/api/statistics",
        ]
        
        for endpoint in endpoints:
            try:
                r = self.session.get(f"{self.base_url}{endpoint}")
                
                if r.status_code == 200:
                    print(f"[+] [{r.status_code}] {endpoint}")
                    
                    try:
                        data = r.json()
                        print(f"    响应: {json.dumps(data, indent=2, ensure_ascii=False)[:200]}")
                    except:
                        print(f"    响应长度: {len(r.text)}")
                
                elif r.status_code != 404:
                    print(f"[*] [{r.status_code}] {endpoint}")
            
            except:
                pass

def main():
    print("="*60)
    print(" bill.ems.com.vn 商户后台登录测试")
    print("="*60)
    
    bill = BillEMSLogin()
    
    # 尝试登录
    # 从用户提供的请求中提取凭证
    username = "difoco"
    password = "43824893"
    
    success = bill.login(username, password)
    
    if success:
        print("\n" + "="*60)
        print(" 登录成功! 开始探索后台...")
        print("="*60)
        
        # 访问仪表盘
        bill.get_dashboard()
        
        # 查找API Token
        bill.get_api_tokens()
        
        # 探索API
        bill.explore_api_endpoints()
        
        print("\n[✓] 探索完成")
    
    else:
        print("\n[!] 登录失败")
        print("\n可能的原因:")
        print("  • 凭证错误")
        print("  • 需要reCAPTCHA验证")
        print("  • IP被限制")
        print("  • 需要额外验证")

if __name__ == '__main__':
    main()
