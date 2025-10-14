# 🚀 DingDong 批量查询工具

## 🎯 三秒上手

### 最简单的方法（推荐）⭐⭐⭐⭐⭐

```bash
# 1. 编辑 key.txt（每行一个运单号）
nano key.txt

# 2. 运行查询
python3 batch_from_file.py

# 3. 用Excel打开生成的CSV
# 完成！
```

---

## 📦 已包含的示例

### key.txt (已创建)
```
EP492966929VN
EP492940379VN
EP493183769VN
EL135248100VN
EL135753627VN
```

直接运行即可：
```bash
python3 batch_from_file.py
```

---

## 🔥 自动获取的信息

✅ 发件人/收件人姓名、地址、电话  
✅ 发件、装车、配送时间  
✅ COD金额和所有费用  
🔥 **商品名称**（90%成功率）  
🔥 **配送指令**  
🔥 **签名照片URL**  

---

## 📊 输出文件

自动生成3个文件：

1. **CSV文件** - Excel打开，易于分析
2. **JSON文件** - 完整数据
3. **报告文件** - 汇总统计

---

## 💡 使用示例

### 单个查询
```bash
python3 all_in_one.py EP492966929VN
```

### 多个查询
```bash
python3 all_in_one.py EP492966929VN EP492940379VN
```

### 批量查询（从文件）
```bash
python3 batch_from_file.py key.txt
```

---

## 📚 详细文档

- **QUICK_START.md** - 3步快速入门
- **BATCH_USAGE_GUIDE.md** - 批量查询详细指南
- **ULTIMATE_USAGE_GUIDE.md** - 终极使用指南
- **FINAL_COMPLETE_ANALYSIS.md** - 完整技术分析

---

## 🎯 立即开始

```bash
# 查看示例
cat key.txt

# 运行查询
python3 batch_from_file.py

# 查看结果
ls -lh batch_results_*.csv
```

**就这么简单！** 🎉

---

## 📞 需要帮助？

查看文档：
- QUICK_START.md - 快速入门
- BATCH_USAGE_GUIDE.md - 详细说明

---

*一个key.txt文件，搞定所有批量查询！*
