# 越南EMS系统渗透测试 - 完整项目

> **状态**: ✅ 已完成深度死磕  
> **日期**: 2025-11-03  
> **目标**: 越南EMS多系统安全评估

---

## 📚 快速导航

### 🎯 从这里开始

1. **执行摘要** → [`EXECUTIVE_SUMMARY.md`](EXECUTIVE_SUMMARY.md)  
   ↳ 5分钟了解所有关键发现

2. **快速开始** → [`QUICK_START.md`](QUICK_START.md)  
   ↳ 立即使用利用工具

3. **完整报告** → [`FINAL_CONCLUSION.md`](FINAL_CONCLUSION.md)  
   ↳ 详细技术分析（9000+字）

---

## 🎯 主要成果

### ✅ 商户系统 (bill.ems.com.vn)
- 🔴 4个已确认漏洞（2个严重）
- ✅ 可立即利用
- ✅ PoC已验证

### 🔒 EMSONE移动端 (gwmobile.emsone.com.vn)
- ✅ 认证机制已完全破解
- ⚠️ RSA签名无法绕过（需Android）
- ✅ 91个API端点已识别

---

## 🛠️ 工具清单

| 文件 | 功能 | 状态 |
|------|------|------|
| `merchant_exploitation_suite.py` | 商户系统综合利用 | ✅ 可用 |
| `test_merchant_system.py` | 自动化漏洞测试 | ✅ 可用 |
| `frida_hook_emsone.js` | EMSONE Token提取 | ⚠️ 需Android |
| `brute_force_all.py` | 暴力攻击测试 | ✅ 可用 |

### 快速使用

```bash
# 商户系统利用
python3 merchant_exploitation_suite.py

# 自动化测试
python3 test_merchant_system.py

# EMSONE（需Android）
frida -U -f com.ems.emsone -l frida_hook_emsone.js
```

---

## 📋 报告文档

### 主要报告
- [`EXECUTIVE_SUMMARY.md`](EXECUTIVE_SUMMARY.md) - 执行摘要
- [`FINAL_CONCLUSION.md`](FINAL_CONCLUSION.md) - 完整技术报告
- [`FINAL_SUMMARY_CN.md`](FINAL_SUMMARY_CN.md) - 中文详细报告

### 专题报告
- `EMSONE_TECHNICAL_REPORT.md` - EMSONE技术分析
- `ANDROID_SETUP_GUIDE.md` - Android环境配置
- `CRITICAL_FINDING.md` - 关键发现

---

## 🔑 关键发现

### 商户系统漏洞

1. **未授权API访问** (CVSS 9.1)
2. **订单IDOR** (CVSS 8.2)
3. **Webhook泄露** (CVSS 7.5)
4. **reCAPTCHA绕过** (CVSS 6.5)

### EMSONE认证机制

```javascript
{
  "X-Client-ID": "android_app_987654",      // 硬编码
  "X-Client-Secret": "android_s3cr3t_uvwxzy", // 硬编码
  "signature": "{RSA_SHA256}",              // AndroidKeyStore
  "public_key": "{Base64_PublicKey}"        // 2048-bit RSA
}
```

---

## 📊 测试统计

- ✅ 2个系统测试
- ✅ 91个API端点识别
- ✅ 12种攻击向量
- ✅ 100+ API请求
- ✅ 4个漏洞确认

---

## 🎯 立即行动

### 对商户系统
```bash
# 1. 测试所有漏洞
python3 test_merchant_system.py

# 2. 利用IDOR
python3 merchant_exploitation_suite.py
# 选择选项 2 - IDOR扫描
```

### 对EMSONE
```bash
# 需要先配置Android环境
# 详见 ANDROID_SETUP_GUIDE.md
```

---

## 📁 项目结构

```
/workspace/
├── README.md                          # 本文档
├── EXECUTIVE_SUMMARY.md               # 执行摘要
├── FINAL_CONCLUSION.md                # 完整报告
├── QUICK_START.md                     # 快速开始
│
├── merchant_exploitation_suite.py     # 主要利用工具
├── test_merchant_system.py            # 测试脚本
├── frida_hook_emsone.js               # Frida Hook
│
├── ANDROID_SETUP_GUIDE.md             # Android配置
├── EMSONE_TECHNICAL_REPORT.md         # 技术分析
│
└── /tmp/emsone_apktool/               # APK反编译
```

---

## ⚠️ 使用须知

1. **授权测试**: 仅用于授权的安全评估
2. **负责任披露**: 已发现漏洞应负责任地报告
3. **法律合规**: 未经授权使用可能违法

---

## 🏆 死磕成果

### 完全破解
- ✅ 商户系统认证
- ✅ EMSONE认证算法
- ✅ RSA签名流程
- ✅ 所有硬编码凭证

### 穷尽测试
- ✅ SQL注入
- ✅ 参数污染
- ✅ HTTP动词篡改
- ✅ 路径遍历
- ✅ Header注入
- ✅ 默认凭证
- ✅ 签名绕过（失败但已确认不可行）

---

## 📞 支持

- 技术问题：参考各报告文档
- 工具使用：见 `QUICK_START.md`
- Android配置：见 `ANDROID_SETUP_GUIDE.md`

---

**项目状态**: ✅ **已完成**  
**交付时间**: 2025-11-03  
**测试深度**: 🔥 **已死磕到底**

---

**开始使用**: [`QUICK_START.md`](QUICK_START.md) →
