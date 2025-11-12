# 代理池 + WAF绕过使用指南

## 文件说明

- `proxy_pool.txt` - 代理列表（IP:PORT:USER:PASS）
- `proxy_manager.sh` - 代理池管理器
- `waf_bypass.sh` - WAF绕过脚本（集成代理）
- `proxy_tools_integration.sh` - 工具集成脚本
- `quick_start.sh` - 快速开始脚本

## 快速使用

### 1. 测试单个目标

```bash
./quick_start.sh https://target.com
```

### 2. SQL注入绕过（带代理）

```bash
source proxy_manager.sh
source waf_bypass.sh
sqli_bypass "https://target.com?id=1" "id"
```

### 3. XSS绕过（带代理）

```bash
source proxy_manager.sh
source waf_bypass.sh
xss_bypass "https://target.com?q=test" "q"
```

### 4. 403绕过（带代理）

```bash
source proxy_manager.sh
source waf_bypass.sh
bypass_403 "https://target.com/admin"
```

### 5. 文件上传绕过（带代理）

```bash
source proxy_manager.sh
source waf_bypass.sh
upload_bypass "https://target.com/upload"
```

### 6. 使用代理执行nuclei

```bash
source proxy_manager.sh
source proxy_tools_integration.sh
nuclei_proxy "https://target.com"
```

### 7. 使用代理执行sqlmap

```bash
source proxy_manager.sh
source proxy_tools_integration.sh
sqlmap_proxy "https://target.com?id=1"
```

### 8. 批量扫描（自动轮换代理）

```bash
source proxy_manager.sh
source proxy_tools_integration.sh
batch_scan_with_proxy targets.txt
```

## 代理格式

```
IP:PORT:USERNAME:PASSWORD
例如: 23.27.184.245:5846:uadkcvtn:uo2rzar814ph
```

## 功能特性

1. **自动代理轮换** - 每次请求随机选择代理
2. **代理可用性测试** - 自动测试并筛选可用代理
3. **WAF绕过** - 15种SQL注入绕过 + 10种XSS绕过 + 10种上传绕过
4. **403绕过** - 14种HTTP头绕过方法
5. **工具集成** - nuclei/sqlmap/ffuf/katana/httpx自动使用代理
6. **随机延迟** - 避免被封IP
7. **IP伪造** - 随机X-Forwarded-For头

## 绕过方法

### SQL注入绕过（15种）
- `/**/` 空格替换
- Unicode编码
- 大小写混淆
- 注释符绕过
- 布尔逻辑绕过

### XSS绕过（10种）
- 标签大小写
- Unicode编码
- Base64编码
- 事件处理器绕过
- HTML5标签绕过

### 文件上传绕过（10种）
- 双扩展名
- 大小写
- 空字节
- MIME伪造
- 罕见扩展名

### 403绕过（14种HTTP头）
- X-Original-URL
- X-Rewrite-URL
- X-Forwarded-For
- X-Real-IP
- 等等...

## 注意事项

1. 代理会自动轮换，避免单个IP被封
2. 每次请求有随机延迟（1-3秒）
3. 自动测试代理可用性，只使用可用代理
4. 结果保存在对应的success.txt文件中
