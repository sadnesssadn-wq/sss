# Simple Python CLI Project

一个最小可运行的 Python 命令行工具示例，带基础测试与 CI。

## 功能
- **hello 命令**：输出问候语，如 `Hello, World!` 或 `Hello, Alice!`
- **测试**：使用内置的 `unittest` 编写基础单元测试（无需第三方依赖）
- **CI**：GitHub Actions 自动运行测试

## 快速开始
1. 准备环境（可选但推荐）
   - 创建虚拟环境：
     - Linux/macOS: `python3 -m venv .venv && source .venv/bin/activate`
     - Windows: `py -m venv .venv && .venv\\Scripts\\activate`
2. 运行命令行：
   - `python -m hello.cli --name Alice`
3. 运行测试：
   - `python -m unittest -q`

## 项目结构
```
hello/
  __init__.py
  cli.py
tests/
  test_cli.py
```

## 许可
本项目示例性质，按需调整与扩展。
