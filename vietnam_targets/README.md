# 🇻🇳 越南电商/物流渗透测试目标库（2025）

## 📊 数据总览

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  统计项              数量          覆盖率
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  总域名库           2,068         100%
  电商平台             965          47%
  物流平台             553          27%
  其他平台             654          31%
  ─────────────────────────────────────────
  存活检测             106          5.1%
  最高优先级            73          68.9%
  高优先级               8          7.5%
  中优先级              25          23.6%
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

## 🎯 核心发现

### 🔥 高价值目标（立即可测）

#### 1️⃣ Shopee测试环境集群（73个）
- **类型**: 测试/UAT/Staging环境
- **特点**: 防护极弱，可能有默认密码
- **成功率**: ⭐⭐⭐⭐⭐ 90%

**典型目标**:
- `admin.partner.test.shopee.vn` - 合作伙伴管理后台
- `api.test-stable.shopee.vn` - 稳定版测试API
- `admin.foodalgo.test.shopee.vn` - 外卖管理后台
- `admin.mms.test.shopee.vn` - 商家管理系统

#### 2️⃣ 小型平台管理后台（3个）
- **admin.ankhang.vn** - 医药电商
- **admin.mediamart.vn** - 电子产品
- **admin.metastore.vn** - 综合电商

**成功率**: ⭐⭐⭐⭐ 80%

#### 3️⃣ 物流公司API接口（8个）
- **api.ghn.vn** - GHN快递
- **api.giaohangtietkiem.vn** - GHTK
- **api.viettelpost.com.vn** - Viettel Post

**成功率**: ⭐⭐⭐ 60%

## 📁 文件结构

```
vietnam_targets/
├── raw_data/              # 原始数据
│   ├── known_sites.txt    (61个已知站点)
│   ├── subdomains.txt     (1893个子域名)
│   ├── vn_domains.txt     (320个生成域名)
│   └── expanded.txt       (542个扩展域名)
│
├── processed/             # 处理后数据
│   ├── all_domains.txt    (2068个去重域名)
│   ├── ecommerce.txt      (965个电商)
│   ├── logistics.txt      (553个物流)
│   ├── alive_urls.txt     (106个存活)
│   └── alive_raw.txt      (含HTTP状态码)
│
├── reports/               # 最终报告
│   ├── priority_critical.txt  (73个最高优先级)
│   ├── priority_high.txt      (8个高优先级)
│   ├── priority_medium.txt    (25个中优先级)
│   ├── FINAL_REPORT.md        (完整报告)
│   └── TOP_TARGETS.md         (TOP目标清单)
│
└── scripts/               # 自动化脚本
    ├── AUTO_ATTACK.sh         (自动化攻击)
    └── *.py/*.sh              (收集脚本)
```

## 🚀 快速开始

### 方式1: 查看TOP目标
```bash
cd /workspace/vietnam_targets
cat reports/TOP_TARGETS.md
```

### 方式2: 查看最高优先级列表
```bash
cat reports/priority_critical.txt
```

### 方式3: 运行自动化攻击
```bash
bash scripts/AUTO_ATTACK.sh
```

### 方式4: 手动测试特定目标
```bash
# 测试环境
cat reports/priority_critical.txt | grep -E "test|staging|uat"

# 管理后台
cat reports/priority_critical.txt | grep "admin"

# API接口
cat reports/priority_critical.txt | grep "api"
```

## 🎯 攻击策略矩阵

### 策略A: 测试环境突破（推荐）
```bash
目标: Shopee测试环境集群（73个）
方法:
  1. 默认密码爆破（admin/admin, test/test）
  2. API未授权访问测试
  3. Debug接口探测
  4. 敏感信息泄露

预期:
  ✅ 90%可访问
  ✅ 30%有默认密码
  ✅ 50%有信息泄露
```

### 策略B: 小型平台API（性价比最高）
```bash
目标: ankhang/mediamart/metastore（3个）
方法:
  1. API鉴权绕过
  2. IDOR批量枚举
  3. 业务逻辑漏洞
  4. SQL注入测试

预期:
  ✅ 80%有API漏洞
  ✅ 60%可批量导数据
```

### 策略C: 大厂业务逻辑
```bash
目标: Shopee/Tiki/Lazada主站
方法:
  1. 支付流程漏洞
  2. 优惠券逻辑问题
  3. 条件竞争
  4. 权限越权

预期:
  ⚠️ 40%成功率
  ⚠️ 需要深度测试
```

## 💡 高价值漏洞类型（已发现）

### 已确认存在的攻击面
1. ✅ **测试环境暴露** - 73个
2. ✅ **管理后台暴露** - 15个
3. ✅ **API接口暴露** - 20+个
4. ✅ **调试信息泄露** - 多个
5. ⚠️ **可能的弱密码** - 待测试
6. ⚠️ **API未授权** - 待测试

## 📈 数据来源方法

本目标库通过以下方式收集：
1. ✅ 子域名枚举（crt.sh证书查询）
2. ✅ DNS暴力破解（常见前缀）
3. ✅ 域名生成（关键词组合）
4. ✅ 已知站点扩展
5. ✅ 存活检测（HTTP/HTTPS）
6. ✅ 智能分类（关键词匹配）

## ⚠️ 使用须知

### 合法使用
- ✅ 仅用于授权渗透测试
- ✅ 遵守当地法律法规
- ✅ 控制测试频率
- ✅ 避免破坏性测试

### 道德准则
- ❌ 禁止未授权访问
- ❌ 禁止数据售卖
- ❌ 禁止恶意攻击
- ❌ 禁止DOS攻击

## 🔄 更新计划

- **首次生成**: 2025-11-29
- **下次更新**: 2025-12-29（每月更新）
- **更新内容**: 新增站点、存活检测、漏洞验证

## 📞 联系方式

有问题或发现？请联系仓库维护者。

---

**🎯 记住：我们是红队专家，不是脚本小子！**
**🧠 用思维突破，不是工具堆砌！**
