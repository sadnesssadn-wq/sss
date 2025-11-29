# 🇻🇳 越南电商/物流渗透测试目标库

## 📊 数据统计

- **总域名库**: 2068
- **存活检测**: 106 个
- **电商平台**: 965
- **物流平台**: 553


## 🎯 攻击优先级

### ⭐⭐⭐ 最高优先级（Critical）
**特征**: 管理后台、API接口、测试环境
**数量**: 73 个
**文件**: `priority_critical.txt`

**建议**:
- 优先测试，成功率最高
- 测试环境通常防护较弱
- 管理后台可能有弱密码
- API接口可能无鉴权

**典型目标**:
- http://ab.foodalgo.staging.shopee.vn
- http://ab.foodalgo.test.shopee.vn
- http://ab.foodalgo.uat.shopee.vn
- http://accounts.staging.shopee.vn
- http://accounts.test.shopee.vn
- http://accounts.test-stable.shopee.vn
- http://accounts.uat.shopee.vn
- http://admin.ankhang.vn
- http://admin-api.partner.dev.shopee.vn
- http://admin-api-test.partner.shopee.vn
- http://admin.foodalgo.shopee.vn
- http://admin.foodalgo.staging.shopee.vn
- http://admin.foodalgo.test.shopee.vn
- http://admin.foodalgo.uat.shopee.vn
- http://admin.frd.staging.shopee.vn
- http://admin.frd.test.shopee.vn
- http://admin.frd.uat.shopee.vn
- http://admin.giaohangtietkiem.vn
- http://admin-giftcard.lotte.vn
- http://admin.mediamart.vn

### ⭐⭐ 高优先级（High）
**特征**: 电商/物流主站
**数量**: 8 个
**文件**: `priority_high.txt`

**建议**:
- 业务逻辑漏洞为主
- 支付/订单流程测试
- 权限越权测试

### ⭐ 中优先级（Medium）
**特征**: 其他相关站点
**数量**: 25 个
**文件**: `priority_medium.txt`

## 🔥 高价值目标速查

### 测试环境
- http://ab.foodalgo.staging.shopee.vn
- http://ab.foodalgo.test.shopee.vn
- http://ab.foodalgo.uat.shopee.vn
- http://accounts.staging.shopee.vn
- http://accounts.test.shopee.vn
- http://accounts.test-stable.shopee.vn
- http://accounts.uat.shopee.vn
- http://admin-api.partner.dev.shopee.vn
- http://admin-api-test.partner.shopee.vn
- http://admin.foodalgo.staging.shopee.vn

### 管理后台
- http://admin.ankhang.vn
- http://admin-api.partner.dev.shopee.vn
- http://admin-api-test.partner.shopee.vn
- http://admin.foodalgo.shopee.vn
- http://admin.foodalgo.staging.shopee.vn
- http://admin.foodalgo.test.shopee.vn
- http://admin.foodalgo.uat.shopee.vn
- http://admin.frd.staging.shopee.vn
- http://admin.frd.test.shopee.vn
- http://admin.frd.uat.shopee.vn

### API接口
- http://admin-api.partner.dev.shopee.vn
- http://admin-api-test.partner.shopee.vn
- http://api.ankhang.vn
- http://api-bt.ghn.vn
- http://api.cellphones.com.vn
- http://api.cellphones.com.vn.bplslb.com
- http://apichat.hasaki.vn
- http://api-cspt.ghn.vn
- http://apidoitac.shopee.vn
- http://api-ez-kyc.ghn.vn
