# ViettelPost 真实攻击面总结

## 🎯 目标确认

**目标**: ViettelPost (viettelpost.vn)
**范围**: 仅ViettelPost自己的系统

---

## ✅ 已确认的ViettelPost资产

### 1. API层
```
api.viettelpost.vn
- 状态: 可访问
- 问题: "common.no_header" 认证障碍
- 价值: 极高（如果突破）

appv2.viettelpost.vn  
- 状态: "Token hết hạn"
- 依赖: 需要从api.vn获取token

devicev2.viettelpost.vn
- 状态: "Token hết hạn"  
- 依赖: 需要从api.vn获取token

dev-api.viettelpost.vn (171.244.51.242)
- 状态: 404但存在
- 价值: 可能是开发环境
```

### 2. 前端层
```
store.viettelpost.vn (27.71.229.68)
- 类型: React SPA
- 价值: 中（仅前端）

27.71.229.64/65/70/71/72
- 状态: 503
- 可能: WAF/LB/备份服务器
```

### 3. 其他服务
```
mapapi.viettelpost.vn
- 功能: Geocoding
- 认证: 无
- 价值: 低

partner.viettelpost.vn (125.212.138.115)
- 技术: ZK Framework  
- 状态: 需要browser
```

---

## 🚫 已排除的资产（不是ViettelPost）

```
171.244.51.236 - Mobiwork DMS (TIENS经销商)
171.244.51.239 - TIENS Vietnam PHP
171.244.51.240 - TIENS官网
```

---

## 🔥 当前最有价值的突破点

### 1. api.viettelpost.vn 的 "common.no_header"
```
状态: 被阻止
需要: 移动应用逆向或抓包
价值: ⭐⭐⭐⭐⭐

如果突破 → 可以访问appv2/devicev2
```

### 2. 27.71.229段的隐藏服务
```
状态: 部分发现，大量503
需要: 绕过WAF或找到真实端口
价值: ⭐⭐⭐⭐

可能发现: 内部管理系统、API网关
```

### 3. dev-api.viettelpost.vn
```
状态: 404但DNS解析正常
需要: 枚举正确的路径
价值: ⭐⭐⭐⭐

开发环境可能: 更宽松的认证、调试端点开放
```

---

## 📊 攻击面评估

### 已测试的攻击向量
```
✅ 子域枚举 - 完成
✅ DNS暴力破解 - 完成
✅ C段扫描 - 部分完成（需要更aggressive）
✅ 端口扫描 - 完成
✅ API枚举 - 完成
✅ SQL注入 - 测试过（未成功）
✅ 默认凭证 - 测试过（未成功）
✅ Headers测试 - 完成（未找到正确组合）
```

### 未完全测试的攻击向量
```
⚠️ 27.71.229段完整扫描（0-255）
⚠️ 绕过503错误页面
⚠️ dev-api路径暴力枚举
⚠️ 移动应用逆向
⚠️ 0day漏洞研究
⚠️ 社会工程学
```

---

## 🎯 下一步行动（聚焦ViettelPost）

### 立即执行
1. 完整扫描 27.71.229.0-255
2. 深度测试 dev-api.viettelpost.vn
3. 尝试绕过503错误

### 如果以上都失败
最后的突破路径：
- 下载ViettelPost Mobile应用
- 或进行社会工程学（需授权）
- 或寻找0day

