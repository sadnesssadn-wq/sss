# 资产收集工具使用指南

## 📋 简介

这是一个集成 **FOFA** 和 **Shodan** API 的资产收集工具，用于快速收集网络空间资产信息。

## 🔧 安装

### 1. 安装依赖

```bash
pip install -r requirements.txt
```

### 2. 配置 API 密钥

复制配置文件模板：

```bash
cp config.py.example config.py
```

编辑 `config.py`，填入你的 API 密钥：

```python
# FOFA API 配置
FOFA_EMAIL = "your_email@example.com"
FOFA_KEY = "your_fofa_api_key"

# Shodan API 配置
SHODAN_KEY = "your_shodan_api_key"
```

#### 获取 API 密钥：
- **FOFA**: https://fofa.info/ （注册后在个人中心获取）
- **Shodan**: https://account.shodan.io/ （注册后在账户页面获取）

## 🚀 使用方法

### 基本用法

#### 1. 使用 FOFA 搜索

```bash
# 搜索指定域名的资产
python asset_collector.py --fofa --query 'domain="example.com"' --limit 100

# 搜索指定组织的资产
python asset_collector.py --fofa --query 'org="Example Inc"' --limit 200

# 搜索特定应用
python asset_collector.py --fofa --query 'app="Apache-Tomcat"' --limit 50
```

#### 2. 使用 Shodan 搜索

```bash
# 按组织搜索
python asset_collector.py --shodan --query 'org:"Example Inc"' --limit 100

# 按端口搜索
python asset_collector.py --shodan --query 'port:8080' --limit 50

# 按产品搜索
python asset_collector.py --shodan --query 'product:nginx' --limit 100
```

#### 3. 同时使用两个平台

```bash
python asset_collector.py --both --query 'apache' --limit 50 --output results.json
```

### 高级用法

#### 指定输出格式

```bash
# 输出为 JSON（默认）
python asset_collector.py --fofa --query 'domain="example.com"' --format json --output result.json

# 输出为 CSV
python asset_collector.py --shodan --query 'org:"Example"' --format csv --output result.csv
```

#### 命令行直接指定 API 密钥

```bash
python asset_collector.py \
  --fofa-email "your@email.com" \
  --fofa-key "your_fofa_key" \
  --shodan-key "your_shodan_key" \
  --query 'domain="example.com"' \
  --fofa
```

## 📖 查询语法参考

### FOFA 查询语法

| 语法 | 说明 | 示例 |
|------|------|------|
| `domain=""` | 搜索根域名及其子域名 | `domain="example.com"` |
| `host=""` | 从URL中搜索 | `host=".gov.cn"` |
| `ip=""` | 搜索包含IP的网站 | `ip="1.1.1.1"` |
| `port=""` | 搜索指定端口 | `port="80"` |
| `protocol=""` | 搜索指定协议 | `protocol="https"` |
| `title=""` | 搜索网页标题 | `title="登录"` |
| `body=""` | 搜索网页正文 | `body="powered by"` |
| `cert=""` | 搜索证书信息 | `cert="Example Inc"` |
| `app=""` | 搜索组件名 | `app="Apache-Tomcat"` |
| `country=""` | 搜索国家代码 | `country="CN"` |
| `region=""` | 搜索地区 | `region="Beijing"` |

**组合查询示例：**
```bash
# 搜索中国境内的 Apache 服务器
domain="example.com" && country="CN" && app="Apache"

# 搜索开放 22 端口的服务器
port="22" && protocol="ssh"
```

### Shodan 查询语法

| 语法 | 说明 | 示例 |
|------|------|------|
| `hostname:` | 主机名 | `hostname:example.com` |
| `port:` | 端口 | `port:8080` |
| `org:` | 组织 | `org:"Example Inc"` |
| `net:` | IP段 | `net:1.1.1.0/24` |
| `city:` | 城市 | `city:"Beijing"` |
| `country:` | 国家代码 | `country:"CN"` |
| `os:` | 操作系统 | `os:"Windows"` |
| `product:` | 产品/服务 | `product:nginx` |
| `version:` | 版本 | `version:1.2.3` |

**组合查询示例：**
```bash
# 搜索中国的 nginx 服务器
country:CN product:nginx

# 搜索开放 MongoDB 的服务器
product:mongodb port:27017
```

## 📊 输出格式

### JSON 格式

```json
{
  "timestamp": "2025-10-09 12:00:00",
  "fofa": [
    {
      "host": "https://example.com",
      "ip": "1.2.3.4",
      "port": "443",
      "domain": "example.com",
      "title": "Example Site",
      "protocol": "https"
    }
  ],
  "shodan": [
    {
      "ip": "1.2.3.4",
      "port": 443,
      "domain": "example.com",
      "org": "Example Inc",
      "product": "nginx"
    }
  ]
}
```

### CSV 格式

| source | ip | host | port | domain | title | protocol |
|--------|----|----|------|--------|-------|----------|
| FOFA | 1.2.3.4 | https://example.com | 443 | example.com | Example Site | https |
| Shodan | 1.2.3.4 | | 443 | example.com | nginx | tcp |

## ⚠️ 注意事项

1. **API 配额限制**
   - FOFA 免费版每月有查询限制
   - Shodan 免费版每月 100 次查询
   - 建议根据需要购买付费版本

2. **查询速度**
   - 避免过于频繁的查询
   - 大批量查询建议分批进行

3. **合法合规**
   - 仅用于授权的安全测试项目
   - 遵守相关法律法规
   - 不得用于未授权的渗透测试

4. **数据准确性**
   - 数据来源于第三方平台，可能存在延迟
   - 建议结合多个数据源交叉验证

## 🔍 常见问题

### Q: API 密钥无效？
A: 检查 `config.py` 中的密钥是否正确，确保没有多余的空格或引号。

### Q: 查询结果为空？
A: 检查查询语法是否正确，尝试简化查询条件。

### Q: 返回结果数量少于预期？
A: 可能受 API 配额限制，或目标确实只有这么多结果。

### Q: 如何导出到 Excel？
A: 先导出为 CSV，然后使用 Excel 打开，或安装 pandas 和 openpyxl 自行扩展。

## 📚 扩展功能

你可以基于此工具进一步开发：

- 添加更多数据源（Censys、ZoomEye 等）
- 实现资产去重和聚合
- 添加端口扫描和服务识别
- 集成漏洞信息关联
- 开发可视化界面
- 添加定时任务和监控

## 📝 更新日志

- **v1.0.0** (2025-10-09)
  - 初始版本
  - 支持 FOFA 和 Shodan API
  - 支持 JSON 和 CSV 导出

## 📄 许可证

仅用于学习和授权的安全测试，使用者需自行承担法律责任。
