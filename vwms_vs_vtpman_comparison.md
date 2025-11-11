# Viettel Post VWMS vs VTP Man APP 对比分析

## 📦 APP基本信息对比

### VTP Man (已分析)
```
Package: com.viettelpost.vtpman.app
用途: 邮递员管理APP
Size: 45MB
技术栈: React Native
```

### VWMS (正在分析)
```
Package: com.viettelpost.vwms
用途: 仓库管理系统 (Warehouse Management System)
Size: 待确认
技术栈: 待确认
```

---

## 🔑 可能的差异点

### 1. API端点
- VTP Man: 面向配送员工，订单跟踪为主
- VWMS: 面向仓库人员，库存管理为主

### 2. 权限级别
- VTP Man: 可能只能查询自己负责的订单
- VWMS: 可能有更高的数据访问权限

### 3. 认证机制
- 可能使用相同的API网关
- 可能使用不同的tenantCode
- Token可能互不通用

---

## 🎯 攻击向量对比

### VTP Man发现的高价值端点
```
/api/v1/delivery/upload/presigned-url  (文件上传)
/api/v1/order-tracking                 (订单跟踪)
/tms-receiving/api/v1/order            (接收订单)
```

### VWMS可能的高价值端点
```
/api/v1/warehouse/*                    (仓库管理)
/api/v1/inventory/*                    (库存管理)
/wms-api/*                             (仓库专用API)
/api/v1/stock/*                        (库存查询)
```

---

## 💡 测试策略

1. 提取VWMS的所有URL和端点
2. 对比两个APP的API差异
3. 测试VWMS是否有独立的认证端点
4. 检查VWMS是否有更宽松的权限控制
5. 尝试用VTP Man的Token访问VWMS端点

---

分析进行中...
