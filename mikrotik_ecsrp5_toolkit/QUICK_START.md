# RouterOS 爆破工具包 - 快速开始

## 🚀 立即使用

### 方法1：快速测试默认密码（推荐）
```bash
cd mikrotik_ecsrp5_toolkit
python3 routeros_ultimate_brute_fixed.py http://target
```

### 方法2：字典爆破
```bash
# 小字典
python3 routeros_dict_brute_fixed.py http://target -U admin -p test_passwords.txt

# 大字典（并发100线程）
python3 routeros_dict_brute_fixed.py http://target -U admin -p rockyou.txt --parallel -w 100
```

## 📦 工具列表

1. **routeros_ultimate_brute_fixed.py** ⭐⭐⭐⭐⭐
   - 自动检测目标类型
   - 内置28个精选凭据
   - 无误报

2. **routeros_dict_brute_fixed.py** ⭐⭐⭐⭐⭐
   - 支持自定义字典
   - 支持rockyou.txt（1400万密码）
   - 并发模式（最高100线程）
   - 无误报

## ✅ 特性

- ✅ 无误报（三重验证）
- ✅ 并发爆破（最高100线程）
- ✅ 支持超大字典（1400万密码）
- ✅ 自动协议检测
- ✅ 多攻击向量（WebFig/Basic Auth/WinBox）

## 📚 文档

- **BEST_TOOL_GUIDE.md** - 最佳工具使用指南
- **DICT_BRUTE_GUIDE.md** - 字典爆破详细说明
- **COMPLETE_SOLUTION.md** - 完整解决方案
- **FINAL_TOOLS_SUMMARY.md** - 工具总结

## 🎯 性能

| 字典大小 | 并发100线程 |
|---------|------------|
| 100密码 | ~1秒 |
| 10000密码 | ~2分钟 |
| rockyou.txt | ~1.6天 |

## 🔗 GitHub
https://github.com/sadnesssadn-wq/sss/tree/cursor/say-hello-in-chinese-00b5/mikrotik_ecsrp5_toolkit
