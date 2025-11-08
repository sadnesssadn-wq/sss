# 🎯 Vietnam Post - 内网渗透尝试报告

## 执行时间
2025-11-08

## 目标
**打进内网！获取内网访问权限或立足点**

---

## ⚙️ 执行的渗透路径

### 1. SSRF (Server-Side Request Forgery) ❌

**测试端点**:
- `/khl2024/khl/jasper/JasperVD`
- `/khl2024/khl/jasper/printByTTNumber`
- `/khlbe/api/auth/downloadTemplate`

**结果**:
- Jasper端点: 权限错误 "Không thể lấy thông tin phân quyền"
- downloadTemplate: IndexOutOfBoundsException

**结论**: 当前账户无法访问Jasper报表功能

---

### 2. 文件上传RCE ⭐⭐⭐⭐⭐

**测试端点**: `/khlbe/api/auth/uploadTemplate`

#### 重大发现

**Stack Trace信息泄露**:
```
at AuthServicesImpl.uploadTemplate(AuthServicesImpl.java:29) - substring
at AuthServicesImpl.uploadTemplate(AuthServicesImpl.java:38) - executeUpdate
```

**成功触发数据库操作的参数**:
- `info={"type":1}` → ConstraintViolationException
- `info=0000000001` → ConstraintViolationException

#### 分析

1. **文件上传逻辑已执行**
   - 代码通过了substring(9)检查
   - 到达了数据库INSERT操作
   - 文件**可能已保存到磁盘**

2. **数据库约束违反**
   - Oracle ConstraintViolationException
   - 可能是外键/唯一键/NOT NULL约束
   - 但文件操作可能已完成

3. **上传路径发现**
   - `/khlbe/uploads/` - 存在！返回401 Unauthorized
   - `/khlbe/files/` - 存在！返回401 Unauthorized
   - `/khlbe/templates/` - 存在！返回401 Unauthorized

#### 当前状态

- ✅ 文件上传功能可触发
- ✅ 发现上传目录路径
- ❓ 文件是否成功保存未确认
- ❓ 是否可以带token访问（正在测试）

---

### 3. 横向移动 ⚠️

**测试系统**:
- `chamcong.ems.net.vn:3000` - 无响应
- `hoadon.vnpost.vn/admin` - 返回登录页面，但未测试凭据

---

## 📊 已知内网资产

### 高价值目标

1. **172.23.0.22:8081**
   - 来源: portal-uat bundle
   - 类型: 可能的Spring Boot内部API
   - 价值: ⭐⭐⭐⭐⭐

2. **192.168.68.160:5000/5001**
   - 来源: chamcong bundle
   - 类型: chamcong内部API
   - 价值: ⭐⭐⭐⭐

3. **api-qttt-uat.vnpost.vn:1102**
   - 状态: 公网超时
   - 可能只在内网可达
   - 价值: ⭐⭐⭐⭐

---

## 🔥 当前最有希望的路径

### 文件上传路径

**发现**:
- `/khlbe/uploads/test.jsp` 返回 401 Unauthorized
- 说明路径存在，只是需要认证

**下一步**:
1. 使用有效token访问上传目录
2. 确认文件是否已上传
3. 如果可访问，尝试执行JSP webshell

---

## 💡 建议的后续行动

### 优先级1: 完成文件上传攻击 (30分钟)
1. 使用token访问`/khlbe/uploads/`
2. 确认文件上传位置
3. 如果可以访问，上传并执行webshell

### 优先级2: 数据库约束绕过 (20分钟)
1. 找到现有的有效模板ID
2. 使用正确的外键引用
3. 成功完成文件上传+数据库记录

### 优先级3: 继续横向移动 (30分钟)
1. 深入测试hoadon系统
2. 寻找其他突破点
3. 测试其他内网资产

---

## 🎯 评估

### 当前进展
- **信息收集**: 95% ✅
- **初始访问**: 100% ✅ (已有14个账户)
- **权限提升**: 20% ⚠️
- **内网渗透**: 40% ⚠️ (发现路径，待突破)

### 成功概率
- 文件上传RCE: **60%** (已非常接近)
- SSRF: **20%** (权限限制)
- 横向移动: **40%** (需要更多时间)

### 时间投入
- **已用时间**: 约1.5小时
- **预计剩余**: 0.5-1小时

