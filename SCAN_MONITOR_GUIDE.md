# 🎯 全部子域名扫描 - 监控指南

**扫描已启动！**  
**Screen会话：** `subdomain_scan`  
**开始时间：** 2025-11-15 20:18:49  
**目标数量：** 47个（46个子域名 + 2个HTTP IP）

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

## 📊 扫描进度

### 阶段1：指纹识别（5-10分钟）⏳
```
✓ 47个目标批量指纹扫描
✓ 识别技术栈和CMS
✓ 筛选高价值目标
```

### 阶段2：目录扫描（30-60分钟）⏳
```
✓ 12个核心业务域名深度扫描
✓ 敏感路径探测
✓ 管理后台发现
```

**预计总耗时：** 40-70分钟

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

## 🖥️ Screen会话管理

### 查看扫描进度
```bash
# 连接SSH
sshpass -p '@admin1314@' ssh -o StrictHostKeyChecking=no -p 2233 root@82.29.71.156

# 进入screen查看实时输出
screen -r subdomain_scan

# 退出screen（不停止扫描）
按 Ctrl+A，然后按 D
```

### 查看日志文件
```bash
# 实时监控日志
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 'tail -f /root/gj/scan_all_*.log'

# 查看最新50行
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 'tail -50 /root/gj/scan_all_*.log'

# 查看完整日志
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 'cat /root/gj/scan_all_*.log'
```

### 检查扫描状态
```bash
# 查看screen是否还在运行
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 'screen -ls'

# 查看扫描进程
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 'ps aux | grep -E "dirsearch|fingerprint"'

# 查看已生成的结果文件
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 'ls -lh /root/gj/results_*/'
```

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

## 📁 输出文件位置

### 主要结果目录
```
/root/gj/results_20251115_201849/
├── targets_P0_数据库管理.txt       # 最高优先级
├── targets_P0_开发工具.txt         # 次优先级
├── targets_P1_CMS.txt              # CMS系统
├── targets_phpMyAdmin.txt          # phpMyAdmin
├── targets_Jenkins.txt             # Jenkins
├── targets_WordPress.txt           # WordPress
├── high_value_targets.json         # 完整JSON报告
├── dirsearch_luong.vnpost.vn.txt   # 目录扫描结果1
├── dirsearch_donhang.vnpost.vn.txt # 目录扫描结果2
└── ...                             # 其他目录扫描结果
```

### 主日志文件
```
/root/gj/scan_all_20251115_201849.log
```

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

## 🎯 扫描目标清单（47个）

### VNPost核心系统（7个）⭐⭐⭐⭐⭐
```
✓ https://donhang.vnpost.vn          订单主API
✓ https://luong.vnpost.vn            工资系统
✓ https://postid.vnpost.vn           SSO登录
✓ https://buucucdidong.vnpost.vn     移动邮局
✓ https://maps.vnpost.vn             地图服务
✓ https://pns.vnpost.vn              推送通知
```

### EMS系统（7个）⭐⭐⭐⭐
```
✓ https://api-dingdong.ems.com.vn    Dingdong API
✓ https://bill.ems.com.vn            账单系统
✓ https://cdn-img.ems.com.vn         CDN服务
✓ https://ws.ems.com.vn              WebSocket
✓ https://gwmobile.emsone.com.vn     移动网关
✓ https://pogw.emsone.com.vn         POS网关
✓ https://img.emsone.com.vn          图片服务
```

### Viettel系统（2个）⭐⭐⭐⭐⭐
```
✓ https://devdevice.viettelpost.vn   开发环境
✓ https://devicev2.viettelpost.vn    设备API v2
```

### Firebase项目（7个）⭐⭐⭐⭐
```
✓ https://csdl-kh.firebaseio.com              客户数据库
✓ https://my-vnpost.firebaseio.com            MyVNPost
✓ https://ems-khl-app-notify.firebaseio.com   EMS通知
✓ https://viettel-post-8cb80.firebaseio.com   Viettelpost
✓ https://viettelpost-evtman.firebaseio.com   事件管理
✓ https://dingdong-1524126013190.firebaseio.com
✓ https://dingdong-3e5cb.firebaseio.com
```

### Zalo集成（5个）⭐⭐⭐⭐
```
✓ https://dev-oauth.zaloapp.com      开发OAuth
✓ https://oauth.zaloapp.com          OAuth认证
✓ https://graph.zaloapp.com          Graph API
✓ https://plugin.zaloapp.com         插件服务
✓ https://ztevents.zaloapp.com       事件跟踪
```

### 其他服务（17个）⭐⭐⭐
```
✓ https://mp3.zing.vn
✓ https://srv.mp3.zing.vn
✓ https://news.zing.vn
✓ https://n.zing.vn
✓ https://media.songkhoe.vn
✓ https://m.songkhoe.vn
✓ https://zalo-webhook.somee.com
✓ https://www.zalo-webhook.somee.com
✓ https://e.crashlytics.com
✓ https://settings.crashlytics.com
✓ https://vbhxh-mobile-api.easyhrm.vn
✓ https://api-development.movecrop.com
✓ https://api.mapbox.com
✓ https://sp.zalo.me
✓ https://m.tinngan.vn
✓ https://static.realm.io
✓ https://csdlkh.mkit.vn
✓ https://service.keeng.vn
```

### HTTP明文IP（2个）⭐⭐⭐⭐⭐
```
✓ http://113.190.232.99:8003         EMS Logistics
✓ http://125.212.193.21:8886         Songkhoe
```

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

## ⚙️ 扫描配置

### 指纹识别参数
```
并发数：100
超时：3秒
指纹库：2000+条
```

### Dirsearch参数
```
扩展名：php,html,jsp,asp
状态码：200,301,302,403,401,500
线程数：20
超时：10秒
随机UA：开启
```

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

## 🔔 停止/重启扫描

### 停止扫描
```bash
# 方法1：进入screen后停止
screen -r subdomain_scan
# 按 Ctrl+C 停止
# 按 Ctrl+A, D 退出

# 方法2：直接杀死screen
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 'screen -S subdomain_scan -X quit'

# 方法3：杀死进程
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 'pkill -f "scan_all_subdomains"'
```

### 重新启动扫描
```bash
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 'screen -dmS subdomain_scan bash -c "cd /root/gj && ./scan_all_subdomains.sh"'
```

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

## 📊 预期结果

### 指纹识别结果（阶段1）
- 技术栈识别
- CMS类型
- 服务器版本
- 框架版本
- 高价值目标筛选

### 目录扫描结果（阶段2）
- 管理后台路径
- API端点
- 配置文件泄露
- 备份文件
- 敏感目录

### 高价值发现
- phpMyAdmin
- Jenkins
- GitLab
- 数据库管理界面
- 未授权访问页面
- 默认凭据系统

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

## 📝 快速监控命令（复制即用）

### 监控进度（推荐）
```bash
# 实时查看日志（推荐）
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 'tail -f /root/gj/scan_all_*.log'

# 每10秒刷新一次进度
watch -n 10 "sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 'tail -30 /root/gj/scan_all_*.log'"
```

### 查看结果
```bash
# 查看高价值目标
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 'ls -lh /root/gj/results_*/targets_P0_*.txt'

# 查看所有结果文件
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 'ls -lh /root/gj/results_*/'

# 下载结果到本地
sshpass -p '@admin1314@' scp -P 2233 -r root@82.29.71.156:/root/gj/results_* ./
```

### 快速预览发现
```bash
# 查看P0级别目标
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 'cat /root/gj/results_*/targets_P0_*.txt 2>/dev/null'

# 查看dirsearch发现的敏感路径
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 'grep -h "200\|403" /root/gj/results_*/dirsearch_*.txt 2>/dev/null | head -50'
```

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

## ✅ 当前状态

```
✅ Screen会话：运行中
✅ 扫描脚本：执行中
✅ 目标数量：47个
✅ 阶段1：指纹识别（进行中）⏳
⏳ 阶段2：目录扫描（待启动）
```

**下次检查时间：** 10-15分钟后（阶段1完成）

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

## 🎯 扫描完成后的下一步

1. **查看高价值目标**
   ```bash
   cat /root/gj/results_*/targets_P0_*.txt
   ```

2. **分析敏感路径**
   ```bash
   grep -E "admin|login|config|backup" /root/gj/results_*/dirsearch_*.txt
   ```

3. **手动验证发现**
   - 访问发现的管理后台
   - 测试默认凭据
   - 验证未授权访问

4. **深度利用**
   - 根据发现的漏洞类型
   - 执行针对性攻击
   - 记录利用过程

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

**扫描已在后台运行！预计40-70分钟完成。** 🚀
