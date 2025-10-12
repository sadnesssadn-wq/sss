# EMS APP API接口文档

## 基础URL
```
https://qllogistics.ems.com.vn/api/
https://apilogistics.ems.com.vn:8080/api/
```

## 客户相关 (Customer)
```
POST /customer/login              - 客户登录
POST /customer/register           - 客户注册
GET  /customer/info              - 获取客户信息
POST /customer/order/create-single - 创建单个订单
GET  /customer/order/list         - 获取订单列表
```

## 订单相关 (Order)
```
GET  /order/detail               - 订单详情
GET  /order/list-license         - 获取订单许可列表
POST /order/update-status        - 更新订单状态
GET  /order/get-all-status       - 获取所有订单状态
GET  /order/get-status           - 获取订单状态
```

## 运单相关 (Shipment)
```
GET  /shipment/list              - 运单列表
GET  /shipment/detail            - 运单详情
GET  /shipment/list-license      - 获取运单许可列表
POST /shipment/update-status     - 更新运单状态
```

## 司机相关 (Driver)
```
POST /driver/login               - 司机登录
GET  /driver/get-user            - 获取司机信息
POST /driver/verify/check        - 验证码确认
POST /driver/reset-password      - 重置密码
DELETE /driver/device-token/delete - 删除设备令牌
```

## 通知相关 (Notification)
```
GET  /notification/badge         - 获取通知徽章
GET  /notification/list          - 通知列表
POST /notification/read          - 标记已读
```

## FAQ相关
```
GET  /faq/get-list-faq           - 获取FAQ列表
GET  /faq/get-faq                - 获取单个FAQ
POST /faq/create                 - 创建FAQ
DELETE /faq/delete-faq           - 删除FAQ
```

## 请求头
```
Content-Type: application/json
```

或

```
Content-Type: application/x-www-form-urlencoded
```

或

```
Content-Type: multipart/form-data
```

## 注意事项
- 登录可能需要特定的认证token
- 某些接口可能需要设备token
- 更新状态接口可能需要管理员权限
