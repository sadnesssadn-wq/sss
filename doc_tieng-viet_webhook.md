# Webhook

**Để cấu hình webhook, người dùng đăng nhập vào hệ thống, tại menu bên trái.**

![Cấu hình > Webhook > Click Tạo webhook](https://1578743389-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-Ma2uwmvQoTlKhlQ57rk%2F-Ma7s51k6-rInDjnnHoa%2F-Ma7tamDwbGy15GBgS19%2FScreenshot_4.png?alt=media\&token=14011d59-1e72-48a5-b350-60c6afb1ecc9)

#### Header / Body json

{% tabs %}
{% tab title="Header" %}
{% code title="Header" %}

```php
Content-Type : application/json
ems-transaction : "1234567890"
```

{% endcode %}

{% hint style="info" %}
**ems-transaction** *là 1 chuỗi ký tự ngẫu nhiên duy nhất ứng với mỗi trạng thái bưu gửi*
{% endhint %}
{% endtab %}

{% tab title="Body json" %}
{% code title="Body json" %}

```
{
    "tracking_code": "EJ012345678VN",
    "order_code": "ODR356",
    "status_code": 4,
    "status_name": "Đang vận chuyển",
    "note": "Đã đóng chuyến thư đi",
    "locate": "890100 - KTC1 Vĩnh Long (ÐT:02703834180)",
    "datetime": "28/08/2019 07:54:50",
    "total_weight": 240,
    "money_collect": 210000,
    "total_fee": 34000
}

*Note: 
    datetime: thời gian cập nhật trạng thái.
    Chú ý sắp xếp trạng thái nhận về theo trường "datetime".
    Trạng thái có datetime mới nhất sẽ là trạng thái cuối cùng.
```

{% endcode %}
{% endtab %}

{% tab title="Description" %}

| Parameter      | Description                       |
| -------------- | --------------------------------- |
| tracking\_code | *`Mã bưu gửi`*                    |
| order\_code    | *`Mã đơn hàng (Nếu có)`*          |
| status\_code   | *`Mã trạng thái`*                 |
| status\_name   | *`Tên trạng thái`*                |
| note           | *`Ghi chú`*                       |
| locate         | *`Vị trí bưu gửi`*                |
| datetime       | *`Thời gian cập nhật trạng thái`* |
| total\_weight  | *`Khối lượng bưu gửi`*            |
| money\_collect | *`Số tiền thu hộ`*                |
| total\_fee     | *`Tổng cước (Tạm tính)`*          |
| {% endtab %}   |                                   |
| {% endtabs %}  |                                   |

#### Response demo

{% tabs %}
{% tab title="Success response" %}

```php
{
 "code" : "success",
 "transaction" : "1234567890"
}
```

{% endtab %}

{% tab title="Error response" %}

```php
{
 "code" : "error",
 "transaction" : "1234567890"
}
```

{% endtab %}
{% endtabs %}

{% hint style="warning" %}
**Api callback** phải có định dạng response giống với response demo và có method là **POST**
{% endhint %}

{% hint style="warning" %}
Developer xắp sếp dữ liệu webhook nhận về theo param "datetime" trong body json nhận được trước khi hiển thị dữ liệu để tránh hiển thị sai trạng thái.
{% endhint %}

{% hint style="info" %}
**transaction** lấy tại ems-transaction trên **header**
{% endhint %}
