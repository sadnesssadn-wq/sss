# LightNode APT - 修正分析报告
**重要更正**: 之前的28个邮箱分析存在严重错误

---

## ❌ 错误结论

GitHub搜索的所有"lightnode"相关仓库都**不是**目标公司lightnode.com（VPS服务商）的官方仓库：

### 1. aurora423/next-lightnode-frontend
- **性质**: 区块链DeFi质押平台（与VPS服务商无关）
- **证据**: 
  - 提交内容包含"stETH"、"uniswap v3"、"smart contract abi"
  - 是一个以太坊staking项目
  - 开发者: ShinyJohnsonn@gmail.com
- **结论**: ❌ 与目标公司无关

### 2. TrustlessComputer/lightnode-website  
- **性质**: TrustlessComputer公司的区块链项目
- **开发者**: tonytc13579, zkryp
- **结论**: ❌ 与目标公司无关

### 3. 其他GitHub仓库
- neuecc/LightNode - .NET RPC框架（日本人开发）
- renproject/lightnode - Ren区块链轻节点
- intervalue/lightnode - InterValue区块链项目
- **结论**: ❌ 全部与目标公司无关

---

## ✅ 真正确认的信息

### 目标公司员工邮箱（仅2个）
```
1. business@lightnode.com - 从官网Cloudflare加密邮箱解码获得
2. support@lightnode.com - 从官网Cloudflare加密邮箱解码获得
```

### 真实资产
```
1. 真实IP: 47.238.114.118 (apidoc.lightnode.com, 香港)
2. 子域名: 100+ 个（从Fofa扫描获得）
3. 测试环境: www-test, svn, members (端口8080)
```

---

## 🎯 正确的情报收集方向

目标公司lightnode.com（成立于2021年的VPS服务商）**没有公开的GitHub仓库**，或者使用了不同的组织名称。

### 应该继续挖掘的方向：
1. ✅ LinkedIn搜索"LightNode"公司的真实员工
2. ✅ 数据泄露数据库（HaveIBeenPwned）搜索@lightnode.com
3. ✅ 域名WHOIS历史记录
4. ✅ 公司注册信息（香港/美国公司注册处）
5. ✅ 社交媒体（Twitter/Facebook/Telegram官方账号）
6. ✅ 招聘网站（Indeed/Glassdoor）的职位发布

---

## 💡 修正后的攻击面

### 高价值目标（已确认）
1. business@lightnode.com
2. support@lightnode.com  
3. 47.238.114.118 (真实后端IP)
4. www-test.lightnode.com:8080 (测试环境)
5. apidoc.lightnode.com (API文档，使用Apifox托管)

### 低价值/错误目标（排除）
- ❌ GitHub上所有"lightnode"开源项目的开发者
- ❌ 区块链项目的贡献者邮箱

---

**结论**: 
- 之前的28个邮箱**全部无效**，都是其他无关项目的开发者
- 目前仅确认2个真实邮箱
- 目标公司没有公开GitHub仓库，需要通过其他渠道继续深挖
