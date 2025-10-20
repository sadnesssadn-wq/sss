# RouterOS WebFig 协议逆向分析

## 认证流程（Curve25519 DH + RC4）

### 1. 初始握手
- 客户端生成32字节随机私钥
- 使用Curve25519计算公钥
- 发送初始请求：\`[0x00000000][0x00000000][32字节公钥]\`

### 2. 密钥交换
- 服务器返回：\`[4字节Session ID][4字节序列号][32字节服务器公钥]\`
- 客户端使用Curve25519 DH计算共享密钥
- 使用SHA1派生RC4加密/解密密钥

### 3. 加密通信
- 所有后续通信使用RC4加密
- 数据包格式：\`[Session ID][序列号][RC4加密数据][RC4加密填充]\`

### 4. 登录认证
- 通过加密通道发送用户名密码（可能是JSON格式）
- 使用window.name传递：\`login=username|password\`

## 关键函数

### JavaScript
- \`Session.prototype.makeInitialRequest()\` - 生成初始请求
- \`Session.prototype.keyExchange(r)\` - 密钥交换
- \`curve25519(privKey, pubKey)\` - Curve25519 DH
- \`RC4.setKey(key)\` - RC4加密初始化
- \`Session.prototype.encrypt(str)\` - 加密数据

### Python实现需要
1. Curve25519椭圆曲线库
2. RC4流密码
3. SHA1哈希
4. 正确的密钥派生逻辑
