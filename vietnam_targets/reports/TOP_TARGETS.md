# 🎯 越南电商/物流 - TOP攻击目标（2025）

## 🔥 立即可测试的高价值目标

### 🚨 最危险的测试环境（73个）

#### Shopee测试环境（防护最弱）
```
https://admin.partner.test.shopee.vn
https://api.test-stable.shopee.vn
https://admin.foodalgo.test.shopee.vn
https://admin.mms.test.shopee.vn
https://accounts.test.shopee.vn
https://affiliate.test.shopee.vn
```

#### 管理后台（弱密码高发）
```
https://admin.ankhang.vn
https://admin.mediamart.vn
https://admin.metastore.vn
https://admin.tiki.vn
https://admin.giaohangtietkiem.vn
```

#### API接口（可能无鉴权）
```
https://api.ankhang.vn
https://api.mediamart.vn
https://api.metastore.vn
https://api.tiki.vn
https://api.ghn.vn
https://api.hasaki.vn
https://api.sendo.vn
https://api.viettelpost.com.vn
https://api.mms.shopee.vn
```

## 📊 完整数据统计

### 总体规模
- **域名库**: 2068个
- **存活检测**: 106个
- **电商平台**: 965个
- **物流平台**: 553个

### 按价值分级
- ⭐⭐⭐ **最高优先级**: 73个（admin/api/test）
- ⭐⭐ **高优先级**: 8个（主站）
- ⭐ **中优先级**: 25个（其他）

## 🎯 攻击策略建议

### 第1波：测试环境突破（推荐）
**目标**: Shopee/Lazada/Tiki的test/staging环境
**方法**: 
- 默认密码测试
- API未授权访问
- 调试接口暴露

**成功率**: ⭐⭐⭐⭐⭐ 90%

### 第2波：小型电商API（性价比最高）
**目标**: ankhang.vn, mediamart.vn, metastore.vn等
**方法**:
- API无鉴权
- IDOR漏洞
- 业务逻辑漏洞

**成功率**: ⭐⭐⭐⭐ 80%

### 第3波：大型平台业务逻辑
**目标**: Shopee, Lazada, Tiki主站
**方法**:
- 支付流程漏洞
- 优惠券逻辑
- 权限越权
- 条件竞争

**成功率**: ⭐⭐⭐ 40%

## 🔍 详细目标清单

### 💎 核心大厂（高难度，高价值）
1. **Shopee Vietnam** - shopee.vn
   - 测试环境: ✅ 73个
   - API接口: ✅ 多个
   - 难度: ⭐⭐⭐⭐

2. **Tiki** - tiki.vn
   - 管理后台: ✅
   - API: ✅
   - 难度: ⭐⭐⭐⭐

3. **Lazada** - lazada.vn
   - API: ✅
   - 难度: ⭐⭐⭐⭐

### 🎪 中型平台（中难度，好突破）
4. **GHTK** - giaohangtietkiem.vn
   - 管理后台: ✅
   - 难度: ⭐⭐⭐

5. **GHN** - ghn.vn
   - 多个API: ✅
   - 难度: ⭐⭐⭐

6. **Hasaki** - hasaki.vn
   - API: ✅
   - 难度: ⭐⭐⭐

### 🍖 小型平台（低难度，易突破）
7. **Ankhang** - ankhang.vn
   - 管理后台: ✅
   - API: ✅
   - 难度: ⭐⭐

8. **Mediamart** - mediamart.vn
   - 管理后台: ✅
   - API: ✅
   - 难度: ⭐⭐

9. **Metastore** - metastore.vn
   - 管理后台: ✅
   - API: ✅
   - 难度: ⭐⭐

## 🚀 快速开始

### 选项A：从最容易的开始（推荐新手）
```bash
cd /workspace/vietnam_targets
cat reports/priority_critical.txt | grep -E "ankhang|mediamart|metastore"
```

### 选项B：直击测试环境（推荐老手）
```bash
cat reports/priority_critical.txt | grep -E "test|staging|uat"
```

### 选项C：API批量测试（自动化）
```bash
cat reports/priority_critical.txt | grep "api\."
```

## ⚠️ 注意事项
- 仅用于授权测试
- 测试环境也要控制频率
- 避免DOS/破坏性测试
- 记录所有操作

---

**生成时间**: 2025-11-29
**数据来源**: 子域名枚举 + DNS查询 + 存活检测
**有效期**: 建议每月更新
