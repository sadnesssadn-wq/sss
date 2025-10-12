#!/usr/bin/env python3
"""
分析EMS APK提取API信息
"""
import re
import zipfile

apk_path = 'com.ems.logistics.apk'

print("=" * 80)
print("📱 分析EMS APP")
print("=" * 80)

# 1. 读取JS bundle
with zipfile.ZipFile(apk_path, 'r') as z:
    js_content = z.read('assets/index.android.bundle').decode('utf-8', errors='ignore')

print("\n✅ JS Bundle大小:", len(js_content), "字节")

# 2. 搜索API相关字符串
print("\n🔍 搜索API相关信息...\n")

# 查找URL
urls = re.findall(r'https?://[a-zA-Z0-9\-\.]+\.(?:com|vn)/[^\s"\'>]*', js_content)
print(f"找到 {len(urls)} 个URL\n")

# 过滤出EMS相关的
ems_urls = [url for url in urls if 'ems' in url.lower() or 'dingdong' in url.lower()]
if ems_urls:
    print("EMS相关URL:")
    for url in set(ems_urls)[:20]:
        print(f"  {url}")
else:
    print("❌ 没找到EMS相关URL")

# 3. 搜索签名相关代码
print("\n🔍 搜索签名相关代码...\n")

# 查找SHA256相关
sha_patterns = [
    r'SHA[\-_]?256',
    r'[a-fA-F0-9]{64}',  # 64位十六进制（SHA256哈希）
    r'signature[\s:=]+["\']([^"\']+)["\']',
    r'PRIVATE[\s_]?KEY',
]

for pattern in sha_patterns:
    matches = re.findall(pattern, js_content[:1000000])  # 只搜索前1MB
    if matches:
        print(f"匹配 {pattern}:")
        for m in list(set(matches))[:5]:
            if len(str(m)) < 200:  # 只显示不太长的
                print(f"  {m}")

# 4. 搜索TrackTrace和Lading
print("\n🔍 搜索API端点...\n")

api_patterns = [
    r'TrackTrace[^\s]{0,50}',
    r'Lading[^\s]{0,50}',
    r'/api/[a-zA-Z0-9/_]+',
]

for pattern in api_patterns:
    matches = re.findall(pattern, js_content[:1000000])
    if matches:
        print(f"匹配 {pattern}:")
        for m in list(set(matches))[:10]:
            print(f"  {m}")

print("\n" + "=" * 80)
print("✅ 分析完成")
print("=" * 80)
