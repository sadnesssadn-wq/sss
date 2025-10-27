# 📦 GHN当天订单报告

**查询时间**: 2025-10-27  
**Shop ID**: 6083862  
**Token**: ac96d88d-b303-11f0-8b9e-4e213bf9bc7d

---

## 📊 **订单统计**

```
总订单数: 3个
活跃订单: 2个
已取消: 1个
```

---

## 📋 **订单详情**

### **订单 #1: GY6PMLQP**
```
状态: cancel (已取消)
收件人: Customer
电话: 0909123456
地址: 456 St
COD金额: 0 VND
运费: [查看完整数据]
重量: 200 g
创建时间: 2025-10-27

备注: 第一个测试订单（已取消）
```

---

### **订单 #2: GY6PM74D**
```
状态: ready_to_pick (待取件)
收件人: Customer 1
电话: 0909123456
地址: 456 St
COD金额: 0 VND
运费: [查看完整数据]
重量: 200 g
创建时间: 2025-10-27

备注: 活跃订单
```

---

### **订单 #3: GY6PM748**
```
状态: ready_to_pick (待取件)
收件人: Customer 2
电话: 0909123456
地址: 456 St
COD金额: 0 VND
运费: [查看完整数据]
重量: 200 g
创建时间: 2025-10-27

备注: 活跃订单
```

---

## 📁 **数据文件**

```
完整JSON: /tmp/orders_today.json
订单数量: 3
数据大小: ~5KB
```

---

## 🔍 **订单分析**

### **按状态分类**
```
ready_to_pick: 2个 (66.7%)
cancel: 1个 (33.3%)
```

### **总金额**
```
COD总额: 0 VND
运费总额: [需要完整数据计算]
```

---

## 🎯 **获取方法**

### **API调用**
```bash
# 获取订单详情
curl -X POST "https://online-gateway.ghn.vn/shiip/public-api/v2/shipping-order/detail" \
  -H "token: ac96d88d-b303-11f0-8b9e-4e213bf9bc7d" \
  -H "content-type: application/json" \
  -d '{"order_code": "GY6PM74D"}'
```

### **批量获取**
```python
import requests

TOKEN = "ac96d88d-b303-11f0-8b9e-4e213bf9bc7d"
orders = ["GY6PMLQP", "GY6PM74D", "GY6PM748"]

for order in orders:
    r = requests.post(
        "https://online-gateway.ghn.vn/shiip/public-api/v2/shipping-order/detail",
        headers={"token": TOKEN, "content-type": "application/json"},
        json={"order_code": order}
    )
    
    if r.status_code == 200:
        data = r.json()["data"]
        print(f"{order}: {data['status']} - {data['to_name']}")
```

---

**报告生成**: 2025-10-27  
**数据来源**: GHN API
