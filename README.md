## Threat Intelligence (FOFA & Shodan)

仅在授权范围内使用以下工具。需通过环境变量提供凭据：

```
export FOFA_EMAIL=you@example.com
export FOFA_KEY=fofa_xxx
export SHODAN_API_KEY=shodan_xxx
```

运行示例：

```
python ti_scan.py --fofa-query 'app="nginx" country="CN"' --fofa-size 20 --json
python ti_scan.py --shodan-query 'product:"nginx" country:CN' --shodan-limit 20
```

输出默认为表格，可加 `--json` 获取 JSON。
# sss

这是一个新项目。

## 开始使用

欢迎使用此项目！
