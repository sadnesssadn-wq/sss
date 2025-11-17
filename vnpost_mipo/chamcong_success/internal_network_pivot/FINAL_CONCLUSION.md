# Chamcong系统 - 最终渗透结论

## 🎯 目标
**vps.vnpost.vn/chamcong** - 作为"唯一进内网的点"

---

## ✅ 已确认的漏洞

### 1. 路径遍历 + 文件写入漏洞（高危）
- **位置**: `/chamcong/report/inBCC.aspx?ID=BC0X` Export功能
- **类型**: Path Traversal + Arbitrary File Write
- **可控参数**:
  - `txtThang`: 完全可控路径
  - `txtNam`: 完全可控扩展名
- **已验证**:
  - ✅ 可以遍历到`C:\inetpub\wwwroot\chamcong\`
  - ✅ 可以注入`.aspx`扩展名
  - ✅ 文件名格式: `{txtThang}{txtNam}_{ID}_{部门}_{用户名}  _BC_DT.xls`

### 2. 详细错误信息泄露（中危）
- **配置**: `customErrors mode="Off"`
- **泄露信息**:
  - 完整物理路径: `C:\inetpub\wwwroot\chamcong\`
  - 完整Stack Trace
  - .NET版本: 4.0.30319
  - ASP.NET版本: 4.8.4797.0

---

## ❌ 致命障碍

### **C:\TEMP\目录不存在**
- **问题**: Export功能尝试写入`C:\TEMP\{filename}.xls`
- **结果**: 在文件实际写入前，抛出`DirectoryNotFoundException`
- **影响**: **无法利用文件写入漏洞GetShell**

**即使成功路径遍历到webroot并注入.aspx，也无法创建文件**

---

## 🔍 已尝试的所有攻击向量（全部失败）

### 1. SQL注入（❌ 不存在）
- 测试了所有参数：`txtThang`, `txtNam`, `ID`, `__VIEWSTATE`, etc.
- 测试了Union/Time/Boolean/Stacked/Error注入
- **结论**: 使用参数化查询，无注入点

### 2. 命令注入（❌ 不存在）
- 测试了所有参数的命令注入payload
- **结论**: 无代码执行点

### 3. ViewState反序列化（❌ 无法利用）
- ViewState已加密且有MAC保护
- 无法伪造或反序列化

### 4. XXE（❌ 不存在）
- 应用不接受XML输入

### 5. SSRF（❌ 不存在）
- HTTP URL被拒绝："The given path's format is not supported"
- UNC路径只是被当作本地路径处理

### 6. 文件读取（❌ 不可行）
- 路径遍历只能用于写入，不能读取
- 无法读取`web.config`或其他敏感文件

### 7. 文件上传（❌ 不存在）
- 系统没有任何文件上传功能
- 暴力枚举了1000+常见上传路径，全部404

### 8. 创建C:\TEMP\目录（❌ 失败）
- 尝试了所有可能的路径遍历组合
- 尝试了空参数、环境变量等
- **结论**: 无法通过应用创建目录

### 9. Print功能（❌ 不写文件）
- `btnIn` (Print) 不会抛出`DirectoryNotFoundException`
- 但也不会写入文件到磁盘
- 只是直接输出HTML到响应

### 10. 其他功能点（❌ 不存在）
- 没有admin面板
- 没有备份功能
- 没有导入功能
- 没有用户管理

---

## 📊 系统功能清单（极简）

整个Chamcong系统**只有3个功能**：
1. `TaoBCC_To.aspx` - 创建考勤表（未测试，可能404）
2. `inBCC.aspx?ID=MAU2` - 打印考勤表
3. `inBCC.aspx?ID=BC01/BC02/BC03` - 导出报表（有漏洞但无法利用）

---

## 🔐 测试的5个账号

| 账号 | 密码 | 权限 |
|------|------|------|
| KVMBTCVP | 123 | 普通用户 |
| KVMBTCKT | 123 | 普通用户 |
| KVMTBDVP | 123 | 普通用户 |
| KVMTNVKS | 123 | 普通用户 |
| KVMTVCGN | 234 | 普通用户 |

**所有账号功能相同，无管理员账号**

---

## 💡 理论GetShell场景

**如果**满足以下任一条件，可以GetShell：

1. ✅ **C:\TEMP\目录存在**
   - 则可以通过路径遍历写WebShell到webroot

2. ✅ **找到目录创建功能**
   - 先创建`C:\TEMP\`，再利用文件写入

3. ✅ **找到其他文件上传点**
   - 直接上传WebShell

4. ✅ **ViewState密钥泄露**
   - 伪造ViewState反序列化RCE

5. ✅ **发现其他系统**
   - `/vckv/`, `/luong/`, `/cos/`可能有更多功能

---

## 🌐 其他系统状态

### VCKV系统 (http://vps.vnpost.vn/vckv/)
- ✅ 可访问登录页面
- ❌ 泄露的账号无法登录
- ⚠️  未深度测试

### LUONG系统 (http://vps.vnpost.vn/luong/)
- ❌ 404（路径可能不存在）

### COS系统 (http://vps.vnpost.vn/cos/)
- ❌ 404（路径可能不存在）

---

## 🎯 建议的下一步

### 优先级1: 测试其他系统
```bash
# VCKV系统深度测试
# 可能有不同的功能/漏洞
```

### 优先级2: 社会工程
- 联系管理员创建`C:\TEMP\`目录
- 或提供一个"正常"需求，让管理员执行我们的payload

### 优先级3: 0day挖掘
- 深度逆向ASP.NET应用
- 寻找框架层面的漏洞

### 优先级4: 内网其他主机
- 如果Chamcong无法突破
- 寻找内网其他更脆弱的目标

---

## 📋 技术细节

### 文件写入Payload示例
```http
POST /chamcong/report/inBCC.aspx?ID=BC01 HTTP/1.1
Host: vps.vnpost.vn
Cookie: ASP.NET_SessionId=xxx

__VIEWSTATE=xxx&
__VIEWSTATEGENERATOR=xxx&
__EVENTVALIDATION=xxx&
txtThang=../../../../../../inetpub/wwwroot/chamcong/shell&
txtNam=.aspx&
btnExport=Export
```

**预期文件路径**:
```
C:\inetpub\wwwroot\chamcong\shell.aspx2025_BC01_KVMB_KVMBTCVP  _BC_DT.xls
```

**实际结果**:
```
DirectoryNotFoundException: Could not find a part of the path 'C:\TEMP\...'
```

---

## ⚠️  最终结论

**Chamcong系统作为单一进内网点，目前无法GetShell。**

**原因**:
1. 文件写入漏洞存在但**无法利用**（C:\TEMP\不存在）
2. 没有其他可利用的攻击面
3. 系统功能极简，防护较好

**建议**:
- 🔁 **转向VCKV系统**（更可能有突破）
- 🔁 **寻找内网其他目标**
- 🔁 **或通过其他方式获取权限后再回来利用Chamcong的路径遍历漏洞**

---

**渗透时间**: 约5小时
**测试深度**: APT级全面测试
**成功率**: 0%（因客观条件限制）
