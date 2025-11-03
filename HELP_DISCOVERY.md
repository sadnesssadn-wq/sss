# 🎯 重大发现：Help页面暴露完整API文档

**发现时间**: 2025-11-03  
**URL**: https://gwmobile.emsone.com.vn/Help

---

## 📋 发现摘要

### ✅ 完整API文档暴露

ASP.NET Web API Help页面完全公开，暴露：
- **87个API端点**详细文档
- 请求/响应格式
- 参数说明
- 示例代码

### 🔑 关键发现

1. **新的API路径**: `/api/Helper/` 
   - 不同于之前测试的 `/execute`
   - 可能有不同的认证机制

2. **GET方法端点**: `GET /api/Helper/GET_BY_MOBILE_NUMBER`
   - 唯一的GET方法
   - 可能绕过POST签名验证

3. **公开端点**（无需认证）:
   ```
   PROVINCE_LIST
   DISTRICT_GET_BY_PROVINCE_ID
   WARD_GET_BY_DISTRICT_ID
   SHOP_FORGET_PASSWORD_BY_EMAIL
   ```

---

## 📊 完整API端点列表（87个）

### 客户管理
- `CUSTOMER_ADDNEW`
- `CUSTOMER_STICKER_LIST`
- `GET_BY_MOBILE_NUMBER` (GET)

### 商户管理
- `SHOP_REGISTER`
- `SHOP_GET_BY_ID`
- `SHOP_GET_HISTORY_BY_ID`
- `SHOP_CHANGE_PICK_UP_ADDRESS`
- `SHOP_GET_PICKUP_INFORMATION`
- `SHOP_GROUP_PERMISSION_LIST`
- `SHOP_TRANSPORT_SERVICE_BY_SHOP_ID`
- `SHOP_REMOVE`
- `SHOP_LOCK`
- `SHOP_GET_LIST_CRM_OR_PP_CODE`
- `SHOP_FORGET_PASSWORD_BY_EMAIL`
- `SHOP_FORGET_PASSWORD_UPDATE`

### 员工管理
- `EMPLOYEE_LOGIN`
- `EMPLOYEE_LIST`
- `EMPLOYEE_SHOP_ADD`
- `EMPLOYEE_CHANGE_PASSWORD`
- `EMPLOYEE_CHANGE_IS_LOCK`
- `EMPLOYEE_REMOVE`
- `EMPLOYEE_CHECK_CONDITION`

### 地理数据
- `PROVINCE_LIST`
- `DISTRICT_GET_BY_PROVINCE_ID`
- `WARD_GETS`
- `WARD_GET_BY_DISTRICT_ID`

### 订单管理
- `ORDER_SEARCH`
- `ORDER_SEARCH_PRODUCT`
- `ORDER_ADD`
- `ORDER_ADD_AND_SEND_TRANSPORT`
- `ORDER_SEND_TRANSPORT`
- `ORDER_CANCEL_TRANSPORT`
- `ORDER_GET_BY_ID`
- `ORDER_GET_BY_SHIPPING_CODE`
- `ORDER_DETAIL_BY_SHIPPING_CODE`
- `ORDER_BATCH_ADD`
- `ORDER_BATCH_EDIT_INFO`
- `ORDER_BATCH_EDIT`
- `ORDER_BATCH_COPPY_INFO`
- `ORDER_BATCH_DETAIL_BY_BATCH_CODE`

### 供应商管理
- `PROVIDER_LIST`
- `PROVIDER_ADD`
- `PROVIDER_GET_BY_ID`
- `PROVIDER_EDIT`
- `PROVIDER_CHANGE_IS_LOCK`

### 仓库管理
- `WAREHOUSE_LIST`
- `WAREHOUSE_ADDNEW`
- `WAREHOUSE_EDIT`
- `WAREHOUSE_GET_BY_ID`
- `WAREHOUSE_CHANGE_IS_LOCK`
- `WAREHOUSE_IS_DEFAULT`
- `WAREHOUSE_GET_DEFAULT_WAREHOUSE`

### 统计数据
- `STATISTICAL_TRANSPORT`
- `STATISTICAL_ORDER`
- `STATISTICAL_CUSTOMER`
- `STATISTICAL_CASHFLOW`
- `STATISTICAL_REQUEST_ORDER`

### 支持请求
- `REQUEST_ORDER_LIST`
- `REQUEST_ORDER_ADD`
- `REQUEST_SUPPORT_LIST`
- `REQUEST_SUPPORT_ADD`
- `REQUEST_SUPPORT_GROUP_LIST`

### 产品管理
- `PRODUCT_LIST`
- `PRODUCT_ADD`
- `PRODUCT_GET_BY_ID`
- `PRODUCT_EDIT`
- `PRODUCT_DATA_IMAGES_BY_ID`
- `PRODUCT_EDIT_IMAGES`
- `PRODUCT_VARIANT_GET_BY_SKU`
- `PRODUCT_VARIANT_GET_BY_ID`
- `PRODUCT_VARIANT_GET_BY_PRODUCT_ID`
- `PRODUCT_VARIANT_ADD`
- `PRODUCT_VARIANT_EDIT`
- `PRODUCT_VARIANT_REMOVE`
- `PRODUCT_OPTION_GET_BY_PRODUCT_ID`
- `PRODUCT_OPTION_ADD`
- `PRODUCT_OPTION_REMOVE_BY_NAME`
- `PRODUCT_GROUP_LIST`
- `PRODUCT_GROUP_ADD`
- `PRODUCT_GROUP_GET_BY_ID`
- `PRODUCT_GROUP_EDIT`
- `PRODUCT_UNIT_SEARCH_LIST`
- `PRODUCT_UNIT_ADD`

### 运输管理
- `TRANSPORT_POSTAGE_CHARGED`
- `TRANSPORT_EMS_BARCODE_GET`
- `TRANSPORT_ORDER_UPDATE_STATUS`

### 其他
- `INVENTORY_CONFIRM`
- `COLLECTION_POST_OFFICE_SEARCH_LIST`
- `OTP_VERIFY_CODE`

---

## 🔍 API文档详情

### 示例：EMPLOYEE_LOGIN

**端点**: `POST /api/Helper/EMPLOYEE_LOGIN`

**请求格式**:
```json
{
  "MobileNumber": "string",
  "Password": "string",
  "ShopID": integer,
  "IsShop": "string",
  "public_key": "string"
}
```

**响应格式**:
```json
{
  "ID": integer,
  "UserName": "string",
  "FullName": "string",
  "MobileNumber": "string",
  "Email": "string",
  "IsLock": boolean,
  "Password": "string",
  "EmployeeLevel": "string",
  "GroupPermissionID": integer,
  "StoreOwner": "string",
  "ReadyReceiveRequestOrder": boolean,
  "ShopInformation": object
}
```

---

## ⚠️ 测试结果

### ✅ 成功访问的端点

1. **PROVINCE_LIST** - HTTP 200
   ```bash
   curl -X POST https://gwmobile.emsone.com.vn/api/Helper/PROVINCE_LIST \
     -H "Content-Type: application/json" \
     -d '{}'
   ```
   - ✅ 不需要Client凭证
   - ✅ 不需要RSA签名
   - ⚠️ 返回空数组（可能数据库为空）

2. **STATISTICAL_*端点** - HTTP 200
   - 所有统计端点可访问
   - 返回空数据

### ❌ 受限的端点

1. **GET_BY_MOBILE_NUMBER**
   - 文档显示为GET
   - 实际返回405（不支持POST）
   - 真实的GET请求未成功

2. **EMPLOYEE_LOGIN**
   - 返回空对象 `{}`
   - 可能需要正确的参数格式
   - 或需要Token认证

---

## 🎯 安全影响

### 🔴 严重 - 信息泄露

**CVSS 7.5** - 高危

暴露完整API文档导致：
1. ✅ 攻击面完全暴露
2. ✅ 所有端点名称已知
3. ✅ 请求/响应格式已知
4. ✅ 可进行针对性攻击

### 推荐修复

```csharp
// 在生产环境禁用Help页面
#if !DEBUG
    config.MapHttpAttributeRoutes();
    // 不注册Help路由
#else
    config.MapHttpAttributeRoutes();
    config.Routes.MapHttpRoute(
        name: "HelpPageApi",
        routeTemplate: "Help/{action}",
        defaults: new { controller = "Help", action = "Index" }
    );
#endif
```

---

## 📝 进一步测试计划

### 1. 真正的GET请求
```bash
curl -X GET "https://gwmobile.emsone.com.vn/api/Helper/GET_BY_MOBILE_NUMBER?MobileNumber=0123456789"
```

### 2. 测试所有公开端点
- 遍历所有87个端点
- 测试不同的参数组合
- 识别哪些需要认证

### 3. 分析认证差异
- `/api/Helper/` vs `/execute`
- 是否有不同的认证机制
- 是否可以绕过RSA签名

---

## 📁 已保存的文件

- `/workspace/help__Help.txt` - 完整Help页面
- `/workspace/all_api_endpoints.txt` - 所有端点列表
- `/workspace/api_doc_*.html` - 各端点详细文档
- `/workspace/exploit_helper_api.py` - 利用脚本

---

**状态**: ⚠️ 需要进一步测试  
**优先级**: 🔴 高（可能绕过RSA签名验证）

---

**下一步**: 测试真实的GET请求和所有公开端点
