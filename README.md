# 🔍 资产收集工具

一个专业的资产收集工具，集成 FOFA 和 Shodan API，用于合法授权的安全测试和资产发现。

## ✨ 功能特性

- ✅ **多引擎支持**: 集成 FOFA 和 Shodan 两大资产搜索引擎
- ✅ **灵活查询**: 支持各引擎原生查询语法
- ✅ **数据导出**: 支持 JSON 和 CSV 格式导出
- ✅ **配置管理**: 独立配置文件管理 API keys
- ✅ **结果展示**: 命令行结果摘要显示

## 📦 安装依赖

```bash
pip install -r requirements.txt
```

## ⚙️ 配置

### 1. 初始化配置文件

```bash
python asset_collector.py --init
```

### 2. 编辑配置文件

编辑生成的 `config.json` 文件，填入你的 API keys：

```json
{
  "fofa": {
    "email": "your_fofa_email@example.com",
    "key": "your_fofa_api_key"
  },
  "shodan": {
    "api_key": "your_shodan_api_key"
  }
}
```

**获取 API Keys:**
- FOFA: https://fofa.info/personalData
- Shodan: https://account.shodan.io

## 🚀 使用方法

### 基础搜索

```bash
# 使用默认引擎（FOFA + Shodan）搜索
python asset_collector.py -q "apache"

# 指定使用 FOFA 搜索
python asset_collector.py -q 'domain="example.com"' -e fofa

# 指定使用 Shodan 搜索
python asset_collector.py -q "port:22" -e shodan

# 同时使用两个引擎
python asset_collector.py -q "nginx" -e fofa shodan
```

### 导出结果

```bash
# 导出为 JSON 和 CSV 格式
python asset_collector.py -q "apache" -o results --json --csv

# 只导出 JSON
python asset_collector.py -q "nginx" -o results --json

# 只导出 CSV
python asset_collector.py -q "tomcat" -o results --csv
```

### 高级选项

```bash
# 限制结果数量
python asset_collector.py -q "redis" -s 50

# 显示更多结果摘要
python asset_collector.py -q "mysql" --display 20

# 使用自定义配置文件
python asset_collector.py -q "elasticsearch" -c custom_config.json
```

## 📝 查询语法示例

### FOFA 查询语法

```bash
# 按域名搜索
python asset_collector.py -q 'domain="example.com"' -e fofa

# 按标题搜索
python asset_collector.py -q 'title="登录"' -e fofa

# 按端口和协议
python asset_collector.py -q 'port="8080" && protocol="https"' -e fofa

# 按国家和服务器
python asset_collector.py -q 'country="CN" && server="Apache"' -e fofa

# 组合查询
python asset_collector.py -q 'domain="example.com" && port="443" && country="CN"' -e fofa
```

### Shodan 查询语法

```bash
# 按端口搜索
python asset_collector.py -q "port:3389" -e shodan

# 按产品搜索
python asset_collector.py -q "product:MySQL" -e shodan

# 按国家搜索
python asset_collector.py -q "country:CN port:22" -e shodan

# 按组织搜索
python asset_collector.py -q "org:'Digital Ocean'" -e shodan

# 组合查询
python asset_collector.py -q "apache country:US port:443" -e shodan
```

## 📊 输出格式

### JSON 输出

```json
[
  {
    "source": "FOFA",
    "query": "apache",
    "timestamp": "2025-10-09T12:00:00",
    "host": "https://example.com",
    "ip": "192.168.1.1",
    "port": "443",
    "protocol": "https",
    "domain": "example.com",
    "title": "Example Site",
    "country": "CN",
    "city": "Beijing",
    "server": "Apache"
  }
]
```

### CSV 输出

包含所有字段的 CSV 表格，可直接在 Excel 中打开。

## ⚠️ 注意事项

1. **合法使用**: 此工具仅用于合法授权的安全测试和资产发现
2. **API 限制**: 注意各平台的 API 调用频率限制
3. **数据准确性**: 搜索结果仅供参考，建议进行验证
4. **隐私保护**: 妥善保管 API keys，不要上传到公开仓库

## 🔧 命令行参数

```
--init              初始化配置文件
-q, --query        搜索查询语句（必需）
-e, --engines      选择搜索引擎: fofa, shodan（默认: 全部）
-s, --size         结果数量（默认: 100）
-c, --config       配置文件路径（默认: config.json）
-o, --output       输出文件名前缀
--json             导出为 JSON 格式
--csv              导出为 CSV 格式
--display          显示结果数量（默认: 10）
```

## 📄 许可证

仅用于合法授权的安全研究和测试。使用者需自行承担使用责任。
