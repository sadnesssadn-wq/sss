#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
深入分析 api-dingdong.ems.com.vn
"""

import requests
import urllib3
import json

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

target = "api-dingdong.ems.com.vn"

print(f"""
╔══════════════════════════════════════════════════════════════════════════════╗
║                    深入分析: {target}                                  ║
╚══════════════════════════════════════════════════════════════════════════════╝
""")

# 1. 检查所有 301 重定向的实际目标
print("\n[1] 检查 API 端点重定向")
api_paths = ['/v1', '/v2', '/api', '/docs', '/swagger', '/graphql', '/api-docs']

for path in api_paths:
    try:
        # 不跟随重定向
        resp = requests.get(f"http://{target}{path}", allow_redirects=False, timeout=5)
        if resp.status_code in [301, 302]:
            location = resp.headers.get('Location', '')
            print(f"{path} -> {location}")
            
            # 跟随重定向
            final_resp = requests.get(f"http://{target}{path}", timeout=5)
            print(f"  最终状态: {final_resp.status_code}")
            print(f"  最终URL: {final_resp.url}")
            
    except Exception as e:
        print(f"{path} - 错误: {str(e)}")

# 2. 检查 robots.txt
print("\n\n[2] 检查 robots.txt")
try:
    resp = requests.get(f"https://{target}/robots.txt", verify=False)
    if resp.status_code == 200:
        print("robots.txt 内容:")
        print("-" * 40)
        print(resp.text)
        print("-" * 40)
except:
    pass

# 3. 尝试常见的 API 路径
print("\n\n[3] 测试常见 API 路径")
common_api_paths = [
    '/api/v1/users',
    '/api/v1/auth', 
    '/api/v1/login',
    '/api/v2/users',
    '/api/users',
    '/api/products',
    '/api/orders',
    '/v1/users',
    '/v1/auth',
    '/swagger/index.html',
    '/swagger-ui.html',
    '/api-docs/swagger.json'
]

for path in common_api_paths:
    try:
        resp = requests.get(f"https://{target}{path}", verify=False, timeout=3)
        if resp.status_code != 404:
            print(f"[{resp.status_code}] {path}")
            
            # 如果是 200，检查内容
            if resp.status_code == 200:
                # 检查是否是 JSON
                try:
                    data = resp.json()
                    print(f"  JSON响应: {json.dumps(data, ensure_ascii=False)[:100]}...")
                except:
                    # 检查是否是 HTML
                    if '<' in resp.text:
                        print(f"  HTML页面")
                    else:
                        print(f"  文本响应: {resp.text[:100]}...")
                        
    except Exception as e:
        pass

# 4. HTTP 方法测试
print("\n\n[4] HTTP 方法测试")
test_url = f"https://{target}/api"
methods = ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS', 'HEAD']

for method in methods:
    try:
        resp = requests.request(method, test_url, verify=False, timeout=3)
        print(f"{method}: {resp.status_code}")
        
        # OPTIONS 响应可能包含允许的方法
        if method == 'OPTIONS' and 'Allow' in resp.headers:
            print(f"  允许的方法: {resp.headers['Allow']}")
            
    except:
        pass

# 5. 寻找 API 文档
print("\n\n[5] 寻找 API 文档")
doc_paths = [
    '/swagger',
    '/swagger/',
    '/swagger/index.html',
    '/swagger/v1/swagger.json',
    '/swagger/v2/swagger.json',
    '/api/swagger.json',
    '/openapi.json',
    '/api-docs',
    '/api-docs/',
    '/docs',
    '/docs/',
    '/documentation',
    '/help'
]

for path in doc_paths:
    try:
        resp = requests.get(f"https://{target}{path}", verify=False, timeout=3, allow_redirects=True)
        if resp.status_code == 200:
            print(f"✓ {path} - {resp.status_code}")
            
            # 检查是否包含 Swagger/OpenAPI 内容
            if 'swagger' in resp.text.lower() or 'openapi' in resp.text.lower():
                print(f"  [!] 可能是 API 文档!")
                
                # 保存
                filename = f"api_doc_{path.replace('/', '_')}.html"
                with open(filename, 'w') as f:
                    f.write(resp.text)
                print(f"  已保存到: {filename}")
                
    except:
        pass

# 6. 参数污染测试
print("\n\n[6] 参数污染测试")
test_params = [
    ('id', '1'),
    ('id[]', '1'),
    ('id[0]', '1'),
    ('filter[id]', '1'),
    ('_id', '1'),
    ('userId', '1'),
    ('user_id', '1')
]

base_url = f"https://{target}/api/users"
for param, value in test_params:
    try:
        resp = requests.get(base_url, params={param: value}, verify=False, timeout=3)
        if resp.status_code != 404:
            print(f"参数 {param}={value} - 状态: {resp.status_code}")
    except:
        pass

print("\n\n[+] 分析完成！")