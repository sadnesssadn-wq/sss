# MikroTik RouterOS 爆破工具包

## 工具列表

1. **ecsrp5_protocol.py** - EC-SRP5加密协议实现
2. **routeros_webfig_brute.py** - WebFig单目标爆破
3. **mass_routeros_attack.py** - 批量攻击工具（集成Shodan）

## 使用方法

### 单目标攻击
```bash
python3 routeros_webfig_brute.py http://target-ip
```

### 批量攻击（需要Shodan API）
```bash
python3 mass_routeros_attack.py --shodan YOUR_API_KEY -c KH,TH -l 100
```

### 从文件批量攻击
```bash
python3 mass_routeros_attack.py -f targets.txt -w 20
```

## 特性

- ✅ 检测RouterOS WebFig
- ✅ HTTP Basic Auth爆破
- ✅ 表单登录爆破
- ✅ jsproxy接口爆破
- ✅ Shodan集成
- ✅ 并发攻击
- ✅ 自动保存结果

## 凭据库

包含20+常用凭据，包括：
- 默认凭据（admin/空密码等）
- 柬埔寨/泰国本地化密码
- 常见弱密码

