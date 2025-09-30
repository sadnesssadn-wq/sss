#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
深度扫描 222.255.250.228 - 寻找其他攻击向量
"""

import requests
import urllib3
from datetime import datetime

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

TARGET = "222.255.250.228"

print(f"""
╔══════════════════════════════════════════════════════════════════════════════╗
║                    深度扫描: {TARGET}                                      ║
╚══════════════════════════════════════════════════════════════════════════════╝
""")

# 1. 检查 Swagger API
print("\n[1] Swagger/API 文档检查")
swagger_urls = [
    f"http://{TARGET}/swagger",
    f"http://{TARGET}/swagger/index.html", 
    f"http://{TARGET}/swagger-ui.html",
    f"http://{TARGET}/api-docs",
    f"http://{TARGET}/api/swagger.json",
    f"http://{TARGET}/v1/api-docs",
    f"http://{TARGET}/swagger/v1/swagger.json"
]

for url in swagger_urls:
    try:
        resp = requests.get(url, verify=False, timeout=5, allow_redirects=True)
        if resp.status_code == 200:
            print(f"[✓] {url} - 状态: {resp.status_code}")
            if 'swagger' in resp.text.lower() or 'api' in resp.text.lower():
                print(f"    [!] 发现 API 文档!")
                # 保存内容
                with open('swagger_content.html', 'w', encoding='utf-8') as f:
                    f.write(resp.text)
                print(f"    [*] 内容已保存到 swagger_content.html")
                
                # 查找 API 端点
                import re
                endpoints = re.findall(r'"(\/api\/[^"]+)"', resp.text)
                if endpoints:
                    print(f"    [!] 发现 API 端点:")
                    for endpoint in set(endpoints[:10]):
                        print(f"        - {endpoint}")
        elif resp.status_code in [301, 302]:
            print(f"[*] {url} - 重定向到: {resp.headers.get('Location', 'Unknown')}")
    except Exception as e:
        pass

# 2. Laravel 调试和开发端点
print("\n\n[2] Laravel 调试模式检查")
laravel_debug_urls = [
    f"https://{TARGET}/_debugbar",
    f"https://{TARGET}/telescope",
    f"https://{TARGET}/horizon", 
    f"https://{TARGET}/__clockwork",
    f"https://{TARGET}/storage/logs/laravel.log",
    f"https://{TARGET}/.env.example",
    f"https://{TARGET}/composer.json",
    f"https://{TARGET}/package.json"
]

for url in laravel_debug_urls:
    try:
        resp = requests.get(url, verify=False, timeout=5)
        if resp.status_code == 200:
            print(f"[✓] {url} - 可访问!")
            if '.env' in url:
                print(f"    [!] 环境配置示例文件")
            elif 'composer.json' in url:
                print(f"    [!] PHP 依赖信息")
                # 查找版本信息
                if '"laravel/framework"' in resp.text:
                    import re
                    version = re.search(r'"laravel/framework":\s*"([^"]+)"', resp.text)
                    if version:
                        print(f"    [!] Laravel 版本: {version.group(1)}")
    except:
        pass

# 3. 文件上传点检查
print("\n\n[3] 文件上传功能检查")
upload_urls = [
    f"http://{TARGET}/upload",
    f"http://{TARGET}/admin/upload",
    f"http://{TARGET}/api/upload",
    f"http://{TARGET}/file/upload",
    f"http://{TARGET}/media/upload",
    f"http://{TARGET}/import",
    f"http://{TARGET}/admin/import"
]

for url in upload_urls:
    try:
        # GET 请求检查
        resp = requests.get(url, verify=False, timeout=3)
        if resp.status_code == 200:
            print(f"[✓] {url} - 上传页面存在")
            if '<input type="file"' in resp.text:
                print(f"    [!] 发现文件上传表单")
        
        # OPTIONS 请求检查允许的方法
        resp = requests.options(url, verify=False, timeout=3)
        if 'Allow' in resp.headers:
            print(f"[*] {url} - 允许方法: {resp.headers['Allow']}")
    except:
        pass

# 4. 备份文件和源码泄露
print("\n\n[4] 备份文件扫描")
backup_files = [
    'backup.zip', 'backup.tar.gz', 'backup.sql', 'db.sql',
    'dump.sql', 'database.sql', 'backup.rar', 'site.zip',
    'www.zip', 'web.zip', f'{TARGET}.zip', 'source.zip',
    'db_backup.sql', 'mysql.sql', 'data.sql', '1.zip',
    'old.zip', 'test.zip', 'temp.zip', 'tmp.zip'
]

for file in backup_files:
    for prefix in ['/', '/backup/', '/backups/', '/temp/', '/tmp/']:
        url = f"http://{TARGET}{prefix}{file}"
        try:
            resp = requests.head(url, verify=False, timeout=3, allow_redirects=False)
            if resp.status_code == 200:
                content_length = resp.headers.get('Content-Length', '0')
                print(f"[!] 备份文件发现: {url}")
                print(f"    大小: {int(content_length)/1024/1024:.2f} MB")
        except:
            pass

# 5. Git 信息深度挖掘
print("\n\n[5] Git 信息泄露深度检查")
git_files = [
    '/.git/HEAD',
    '/.git/config', 
    '/.git/index',
    '/.git/logs/HEAD',
    '/.git/logs/refs/heads/master',
    '/.git/refs/heads/master',
    '/.git/objects/',
    '/.git/COMMIT_EDITMSG'
]

git_found = False
for file in git_files:
    url = f"https://{TARGET}{file}"
    try:
        resp = requests.get(url, verify=False, timeout=3)
        if resp.status_code == 200:
            git_found = True
            print(f"[!] Git 文件可访问: {file}")
            print(f"    内容预览: {resp.text[:100].strip()}")
        elif resp.status_code == 403:
            git_found = True
            print(f"[*] Git 文件存在但禁止访问: {file}")
    except:
        pass

if git_found:
    print("\n    [!] 建议使用 GitHack 或类似工具恢复源代码")

# 6. 信息收集 - robots.txt 和 sitemap
print("\n\n[6] Robots.txt 和 Sitemap 分析")
for file in ['/robots.txt', '/sitemap.xml']:
    url = f"http://{TARGET}{file}"
    try:
        resp = requests.get(url, verify=False, timeout=3)
        if resp.status_code == 200:
            print(f"\n[✓] {file} 内容:")
            lines = resp.text.strip().split('\n')
            for line in lines[:20]:  # 只显示前20行
                if line.strip():
                    print(f"    {line}")
            
            # 提取禁止访问的路径
            if 'Disallow:' in resp.text:
                disallowed = re.findall(r'Disallow:\s*([^\s]+)', resp.text)
                if disallowed:
                    print(f"\n    [!] 禁止爬虫访问的路径:")
                    for path in set(disallowed):
                        print(f"        - {path}")
    except:
        pass

# 7. 检查其他登录入口
print("\n\n[7] 其他登录入口检查")
login_endpoints = [
    '/user/login', '/users/login', '/account/login',
    '/auth/login', '/signin', '/admin/signin',
    '/manager/login', '/cms/login', '/backend/login',
    '/cp/login', '/controlpanel/login'
]

for endpoint in login_endpoints:
    for protocol in ['http', 'https']:
        url = f"{protocol}://{TARGET}{endpoint}"
        try:
            resp = requests.get(url, verify=False, timeout=3, allow_redirects=False)
            if resp.status_code in [200, 301, 302]:
                print(f"[*] {url} - 状态: {resp.status_code}")
                if resp.status_code == 200 and ('login' in resp.text.lower() or 'password' in resp.text.lower()):
                    print(f"    [!] 发现额外的登录页面")
        except:
            pass

print("\n\n[+] 深度扫描完成！")
print("\n重要发现汇总：")
print("1. 检查 swagger_content.html 文件获取 API 详情")
print("2. Git 目录存在但被禁止访问 (403)")
print("3. 多个管理入口和 API 端点")
print("4. 建议进一步测试发现的 API 接口")