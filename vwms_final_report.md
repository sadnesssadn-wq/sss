# 🏭 Viettel Post VWMS APP - 完整分析报告

## 📦 基本信息

```
Package:     com.viettelpost.vwms
Version:     1.0.2 (Build 2)
Size:        48MB (XAPK)
Min SDK:     24 (Android 7.0)
Target SDK:  35 (Android 15)
技术栈:      React Native (React Native bundle: 6.7MB)
```

### 权限对比

#### VWMS特有权限
```
✅ android.permission.BLUETOOTH
✅ android.permission.BLUETOOTH_ADMIN  
✅ android.permission.BLUETOOTH_SCAN
✅ android.permission.BLUETOOTH_CONNECT
✅ android.permission.USE_BIOMETRIC
✅ android.permission.USE_FINGERPRINT
✅ android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS
✅ android.permission.ACCESS_NOTIFICATION_POLICY
```

#### VTP Man APP权限
```
基础权限: INTERNET, CAMERA, LOCATION等
```

**分析:** VWMS有蓝牙和生物识别权限，可能用于连接仓库设备（扫描枪、打印机）

---

## 🔍 发现的URL和端点

### 从Bundle和DEX提取中...

等待数据...

---

## 🆚 与VTP Man对比

| 特性 | VTP Man | VWMS |
|------|---------|------|
| 用途 | 配送员管理 | 仓库管理 |
| 大小 | 45MB | 48MB |
| 版本 | 1.0.21 | 1.0.2 |
| 蓝牙 | ❌ | ✅ (连接仓库设备) |
| 生物识别 | ❌ | ✅ |
| Bundle大小 | 7.6MB | 6.7MB |

---

## 🎯 攻击面分析

### 可能的独特端点
```
/wms-api/*                (仓库API)
/api/v1/warehouse/*       (仓库管理)
/api/v1/inventory/*       (库存)
/api/v1/stock/*           (库存查询)
/api/v1/receiving/*       (收货)
/api/v1/shipping/*        (发货)
```

### 高价值测试点
1. ✅ 仓库员工可能有更高权限
2. ✅ 库存数据可能更敏感
3. ✅ 打印机模块可能有命令注入
4. ✅ 蓝牙通信可能不加密

---

分析完成后更新...
