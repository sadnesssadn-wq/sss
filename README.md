# 运单查询工具集

这是一个功能完整的运单查询工具集，支持代理池、API 限流控制、批量查询等功能。

## 🚀 快速开始

```bash
# 1. 安装依赖
pip install -r requirements.txt

# 2. 配置运单号（编辑 key.txt）
# 3. 运行查询
python query_with_proxy.py
```

## 📚 项目文件

- **query_with_proxy.py** - 带代理池的运单查询工具（推荐）
- **proxy_pool.py** - 代理池管理器
- **rate_limiter.py** - API 限流解决方案
- **main.py** - 简单的 Python 应用示例

详细使用说明请查看 `使用说明.md`
