# Python SSH 连接处理工具

这是一个集成了 SSH 连接失败处理功能的 Python 应用。

## 功能特性

### 1. SSH 连接测试与诊断
- ✅ 自动检测 SSH 连接问题
- ✅ 详细的错误诊断和建议
- ✅ 自动重试机制
- ✅ 完整的日志记录

### 2. 错误处理类型
- DNS 解析失败
- 连接超时
- 连接被拒绝
- 网络不可达
- 其他异常情况

### 3. 其他功能
- 简单计算器演示
- 中文界面支持

## 开始使用

### 运行主程序

```bash
python main.py
```

这将启动交互式菜单，您可以选择：
1. 使用计算器功能
2. 测试 SSH 连接
3. 退出程序

### 单独使用 SSH 连接处理器

```bash
python ssh_handler.py
```

### Python 代码示例

```python
from ssh_handler import SSHConnectionHandler

# 创建连接处理器
handler = SSHConnectionHandler('example.com', port=22, timeout=30)

# 测试连接
success, error = handler.test_connection()

if not success:
    print(f"连接失败: {error}")
    handler.print_diagnostics()
    
    # 自动重试
    success, error = handler.retry_connection(max_retries=3, retry_delay=5)
```

## 日志文件

所有 SSH 连接尝试都会记录到 `ssh_connection.log` 文件中，包括：
- 时间戳
- 连接详情
- 错误信息
- 诊断结果

## 常见问题解决

### 错误: "Failed to connect to the remote SSH host"

这个错误表示无法连接到远程 SSH 服务器。可能的原因：

1. **网络问题**
   - 检查网络连接
   - 确认可以访问互联网
   - 检查防火墙设置

2. **主机地址错误**
   - 确认主机名或 IP 地址正确
   - 测试 DNS 解析: `nslookup hostname`

3. **SSH 服务未运行**
   - 确认远程服务器 SSH 服务已启动
   - 默认 SSH 端口是 22

4. **端口被阻止**
   - 检查本地防火墙
   - 检查远程防火墙
   - 确认使用正确的端口号

### 使用诊断工具

程序提供自动诊断功能，会：
- 测试 DNS 解析
- 测试网络连接
- 提供具体建议
- 记录详细日志

## 依赖

本项目使用 Python 标准库，无需额外安装依赖。

如需完整的 SSH 客户端功能（如密钥认证、命令执行等），可以安装：

```bash
pip install -r requirements.txt  # 包含可选的 paramiko 库
```

## 系统要求

- Python 3.6+
- Linux/macOS/Windows

## 项目结构

```
.
├── main.py              # 主程序入口
├── ssh_handler.py       # SSH 连接处理模块
├── requirements.txt     # 项目依赖
├── README.md           # 本文档
└── ssh_connection.log  # 日志文件（自动生成）
```

## 贡献

欢迎提交 Issue 和 Pull Request！

## 许可证

MIT License
