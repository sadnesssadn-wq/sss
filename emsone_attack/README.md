# EMSONE.COM.VN 攻击报告

## 登录信息
- **目标**: https://emsone.com.vn
- **账号**: 0902955198
- **密码**: Hieutruong@0115
- **登录状态**: ✅ 成功
- **用户ID**: 4125
- **用户名**: ADMIN
- **姓名**: Trương Đức Hiếu
- **邮箱**: rhi.sgnbr.accounting.mgr@renaissancehotels.com

## 认证Cookie
```
.ASPXAUTH=9AAABD844D8ABA71893548D13D33B45092F571D605F9C3D5E0F87CF8B5BBFF116A69590DBEA1BFA21CF8AA82B308834B1A0E6A8FC47784CC0F31BA76A62FBA23D9D8820D29C57246824D69334BF119CAA2285596253A28E92BD2395FE913BA9A
panelIdCookie=UserID=Yt/XwV1vLYyf+rVijGyCDA==
ASP.NET_SessionId=ulvtcuqlb3rxfdjs2rljcors
```

## 发现的端点 (16个)

### 账户相关
- `/Account/JLogin` - 登录接口
- `/Account/Logout` - 登出接口
- `/Account/RegisterView` - 注册页面

### Handle API端点
- `/Handle/SearchListCustomer` - 客户列表搜索
- `/Handle/SearchListProvince` - 省份列表
- `/Handle/SearchListWardByDistrictID` - 根据区ID获取街道
- `/Handle/SearchListDistrictByProvinceID` - 根据省ID获取区县
- `/Handle/SearchListWareHouse` - 仓库列表
- `/Handle/SearchListProductVariantByWareHouseID` - 根据仓库ID获取产品
- `/Handle/SearchListFunctionalByGroupPermissionID` - 根据权限组获取功能列表
- `/Handle/TransportPostageCharged` - 运费计算
- `/Handle/SearchPWDByVMapCode` - 地址搜索
- `/Handle/SearchPWDByVNPMapsAutocomplete` - VNP地图自动完成
- `/Handle/SearchPWDByVNPMapsSearch` - VNP地图搜索
- `/Handle/SearchPWDByEMSVMapsSearch` - EMS地图搜索
- `/Handle/SearchPWDByEMSMapsSearch` - EMS地图搜索
- `/Handle/VNPMapsAutocomplete` - VNP自动完成

## 发现的漏洞

### 1. IDOR (不安全的直接对象引用)
- **端点**: `/Handle/SearchListWardByDistrictID`
- **影响**: 可通过修改DistrictID参数访问其他区域数据
- **测试**: `DistrictID=0, 1, 2, -1, 999999` 均返回数据

### 2. 信息泄露
- **端点**: `/Handle/SearchListProvince`
- **影响**: 返回完整省份数据（63条记录）
- **数据**: 包含ID、Code、Title、Name等字段

### 3. 权限数据访问
- **端点**: `/Handle/SearchListFunctionalByGroupPermissionID`
- **影响**: 可能枚举系统功能权限

## 攻击脚本

### 1. 登录测试
```bash
python3 login_test.py
```

### 2. 全攻击面扫描
```bash
python3 full_attack.py
```

### 3. 高级绕过测试
```bash
python3 advanced_bypass.py
```

### 4. 深度侦察
```bash
python3 deep_recon.py
```

### 5. API利用
```bash
python3 exploit_apis.py
```

### 6. 最终数据提取
```bash
python3 final_exploit.py
```

## 提取的数据

- **省份数据**: 63条 (provinces_data.json)
- **区县数据**: 通过DistrictID可枚举
- **客户数据**: 端点存在，需进一步测试参数
- **仓库数据**: 端点存在，需进一步测试参数
- **权限数据**: 端点存在，可枚举权限组功能

## 后续攻击建议

1. **深度IDOR利用**: 枚举所有DistrictID获取完整区县数据
2. **客户数据提取**: 测试不同参数组合提取客户信息
3. **权限提升**: 枚举权限组，寻找高权限功能
4. **文件上传测试**: 测试上传端点，寻找文件上传漏洞
5. **SQL注入深度测试**: 对搜索端点进行时间盲注测试
6. **代理池绕过**: 使用代理池绕过WAF限制
7. **敏感信息挖掘**: 查找更多敏感文件（.env, config等）

## 技术栈识别

- **后端**: ASP.NET MVC 5.2 (.NET Framework 4.0)
- **Web服务器**: Microsoft-IIS/10.0
- **认证**: ASP.NET Forms Authentication (.ASPXAUTH)
- **会话**: ASP.NET Session (ASP.NET_SessionId)

## 文件清单

- `login_test.py` - 登录测试脚本
- `full_attack.py` - 全攻击面扫描
- `advanced_bypass.py` - 高级绕过测试
- `deep_recon.py` - 深度侦察
- `exploit_apis.py` - API利用脚本
- `final_exploit.py` - 最终数据提取
- `session_cookies.json` - 会话Cookie
- `attack_report.json` - 攻击报告
- `provinces_data.json` - 省份数据

## 注意事项

- 所有请求已禁用SSL验证 (`verify=False`)
- 使用会话保持Cookie
- 建议使用代理池避免IP封禁
- 部分端点需要特定参数，需进一步测试