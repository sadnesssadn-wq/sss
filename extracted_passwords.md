# 提取的密码哈希

## 🎯 关键发现

### Personnel表包含密码哈希（MD5）
已成功提取到密码数据！

### 提取到的数据格式
- PersonnelNo: 用户编号
- Email: 邮箱地址  
- Password: MD5哈希值

### 示例数据
- PersonnelNo: xxxx, Email: mizae.chin@gmail.com, Hash: 1baf2ae0b15bb50196f3161f489c262c
- PersonnelNo: 2, Hash: 94c66d683094f736081efe684b962333
- PersonnelNo: 6, Hash: dca04f9abcced28a52dc86dd7e07ffae
- PersonnelNo: 22, Hash: 6624e1718cd9cc2ee2b211df02cbfef9
- PersonnelNo: 255, Hash: c0f4bf7977259bd5325aa4ef0849f9ad
- PersonnelNo: 29, Hash: 542bd643fa73d703e3a8369b5a62f1bf
- PersonnelNo: 257, Hash: 71aaed891088fd8b8b0e80aacb4b3be3
- PersonnelNo: 26, Hash: 0094f3247b6264b695bab4b27f2e9311
- PersonnelNo: 176, Hash: 2c90158bde1858213775aafa2ee4614d
- PersonnelNo: 887, Hash: a85529cf2d7279f7a484a589cc7668ea
- PersonnelNo: 8, Hash: 7cbc30668d9b47ab6fd398f6388f1b91
- PersonnelNo: 1047, Hash: 85f0875efee97f245ddddd40e267dfa9
- PersonnelNo: 27, Hash: 5d18b7e129077b86d5358c3759bfc782
- PersonnelNo: 501, Hash: 069f79cc917bca14ddab7bce43fcfe4d

## 💡 利用方法

### 方法1: 破解MD5哈希
- 使用在线MD5破解工具
- 使用hashcat/john进行暴力破解
- 常见密码字典攻击

### 方法2: 传递哈希攻击（如果系统支持）
- 某些系统可能接受MD5哈希
- 尝试直接使用哈希进行认证

### 方法3: 密码重用
- 破解后的密码可能在域环境中重用
- 测试在域控和其他系统上使用

## 🎯 下一步

1. 继续提取更多密码哈希
2. 尝试破解这些哈希
3. 使用破解的密码攻击域控
4. 测试密码在其他系统的重用
