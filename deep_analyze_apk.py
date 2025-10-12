#!/usr/bin/env python3
"""
深度分析EMS APK - 提取所有API信息
"""
import re
import zipfile
import json

apk_path = 'com.ems.logistics.apk'

print("=" * 80)
print("🔍 深度分析EMS APP")
print("=" * 80)

# 读取JS bundle
with zipfile.ZipFile(apk_path, 'r') as z:
    js_content = z.read('assets/index.android.bundle').decode('utf-8', errors='ignore')

print(f"\n✅ JS Bundle: {len(js_content)} 字节")

# 1. 提取所有URL
print("\n" + "="*80)
print("📡 所有URL")
print("="*80)

all_urls = re.findall(r'https?://[a-zA-Z0-9\.\-]+(?:\:[0-9]+)?(?:/[^\s\"\'\`\>\<]*)?', js_content)
unique_urls = list(set(all_urls))

# 分类
ems_urls = [u for u in unique_urls if 'ems.com' in u or 'deha.vn' in u]
api_urls = [u for u in ems_urls if '/api' in u.lower() or 'api' in u.lower()]

print("\nEMS相关API URL:")
for url in sorted(api_urls):
    print(f"  {url}")

print(f"\n其他EMS URL ({len([u for u in ems_urls if u not in api_urls])} 个):")
for url in sorted([u for u in ems_urls if u not in api_urls])[:10]:
    print(f"  {url}")

# 2. 提取API端点路径
print("\n" + "="*80)
print("🎯 API端点路径")
print("="*80)

# 查找/api/开头的路径
api_paths = re.findall(r'/api/[a-zA-Z0-9_/]+', js_content)
unique_paths = list(set(api_paths))

print(f"\n找到 {len(unique_paths)} 个API路径:")
for path in sorted(unique_paths)[:30]:
    print(f"  {path}")

# 3. 查找API配置
print("\n" + "="*80)
print("⚙️ API配置")
print("="*80)

# 查找baseURL/BASE_URL/apiUrl等
config_patterns = [
    r'(?:baseURL|BASE_URL|apiUrl|API_URL|apiEndpoint|API_ENDPOINT)["\'\s:=]+([^\s"\']+)',
    r'(?:api|API)[\s:=]+["\']([^"\']+)["\']',
]

for pattern in config_patterns:
    matches = re.findall(pattern, js_content)
    if matches:
        print(f"\n匹配配置:")
        for m in list(set(matches))[:10]:
            if 'http' in m or '/' in m:
                print(f"  {m}")

# 4. 查找HTTP方法和端点的组合
print("\n" + "="*80)
print("📨 HTTP请求模式")
print("="*80)

# 查找axios/fetch调用
request_patterns = [
    r'(?:axios|fetch)\.(?:get|post|put|delete)\(["\']([^"\']+)["\']',
    r'\.(?:get|post|put|delete)\(["\']([^"\']+)["\']',
]

endpoints = []
for pattern in request_patterns:
    matches = re.findall(pattern, js_content)
    endpoints.extend(matches)

unique_endpoints = list(set([e for e in endpoints if '/' in e]))
print(f"\n找到 {len(unique_endpoints)} 个端点:")
for ep in sorted(unique_endpoints)[:30]:
    print(f"  {ep}")

# 5. 查找API密钥/签名相关
print("\n" + "="*80)
print("🔑 密钥和签名")
print("="*80)

key_patterns = [
    r'(?:PRIVATE_KEY|SECRET_KEY|API_KEY)["\'\s:=]+["\']([^"\']{20,})["\']',
    r'(?:signature|Signature)["\'\s:=]+["\']([^"\']{20,})["\']',
    r'\b[A-F0-9]{64}\b',  # 64位十六进制
]

for pattern in key_patterns:
    matches = re.findall(pattern, js_content)
    if matches:
        print(f"\n匹配 {pattern[:30]}...:")
        for m in list(set(matches))[:5]:
            if len(m) < 200:
                print(f"  {m}")

# 6. 查找端点常量
print("\n" + "="*80)
print("📍 端点常量")
print("="*80)

# 查找定义为常量的端点
constant_patterns = [
    r'(?:const|let|var)\s+(\w*[Ee]ndpoint\w*)\s*=\s*["\']([^"\']+)["\']',
    r'(?:const|let|var)\s+(\w*[Aa]pi\w*)\s*=\s*["\']([^"\']+)["\']',
]

for pattern in constant_patterns:
    matches = re.findall(pattern, js_content)
    if matches:
        print(f"\n找到端点常量:")
        for name, value in list(set(matches))[:20]:
            if '/' in value:
                print(f"  {name} = {value}")

# 7. 查找特定功能的API
print("\n" + "="*80)
print("🎯 特定功能API")
print("="*80)

feature_keywords = [
    'track', 'trace', 'lading', 'shipment', 'order', 'delivery',
    'login', 'auth', 'user', 'customer', 'search', 'query'
]

for keyword in feature_keywords:
    pattern = f'/api/[^\s"\']*{keyword}[^\s"\']*'
    matches = re.findall(pattern, js_content, re.IGNORECASE)
    if matches:
        print(f"\n{keyword.upper()}相关:")
        for m in list(set(matches))[:5]:
            print(f"  {m}")

print("\n" + "="*80)
print("✅ 分析完成")
print("="*80)
