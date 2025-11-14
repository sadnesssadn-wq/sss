# GHTK Dirsearch 批量扫描命令速查

## 📋 当前状态

**Screen会话:** `ghtk_scan` (ID: 2159394)
**扫描目标:** 45个URL
**扫描进度:** 进行中
**扫描速度:** 约150 req/s
**词表大小:** 12,306条

---

## 🔧 常用命令

### 查看扫描进度
```bash
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 "/root/gj/monitor_scan.sh"
```

### 进入screen会话（实时查看）
```bash
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 "screen -r ghtk_scan"
# 退出screen: Ctrl+A, 然后按D
```

### 查看扫描日志（最后50行）
```bash
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 "tail -50 /root/gj/dirsearch_results/scan.log"
```

### 查看已发现的路径（实时）
```bash
# 查看所有200状态
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 "grep '200' /root/gj/dirsearch_results/scan.log | tail -20"

# 查看所有403状态
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 "grep '403' /root/gj/dirsearch_results/scan.log | tail -20"
```

### 分析扫描结果（扫描完成后）
```bash
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 "/root/gj/analyze_results.sh"
```

### 下载分析报告到本地
```bash
sshpass -p '@admin1314@' scp -P 2233 root@82.29.71.156:/root/gj/dirsearch_analysis.txt /workspace/
sshpass -p '@admin1314@' scp -P 2233 root@82.29.71.156:/root/gj/dirsearch_results/*.txt /workspace/
```

### 停止扫描（紧急）
```bash
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 "screen -S ghtk_scan -X quit"
```

### 重新启动扫描
```bash
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 "cd /root/gj && screen -dmS ghtk_scan bash -c 'python3 dirsearch/dirsearch.py -l target_urls.txt -e php,asp,aspx,jsp,html,js -i 200,403 -t 30 --full-url -O plain -o dirsearch_results/ghtk_scan_\$(date +%Y%m%d_%H%M%S).txt 2>&1 | tee dirsearch_results/scan.log'"
```

---

## 📊 预计扫描时间

- **单个目标:** 约12,306 / 150 = 82秒 ≈ 1.5分钟
- **45个目标:** 1.5分钟 × 45 = 67.5分钟 ≈ **1小时10分钟**
- **预计完成时间:** 约 `01:10:00` 后

---

## 🎯 扫描完成后的操作

1. **运行分析脚本:**
```bash
/root/gj/analyze_results.sh
```

2. **查看分析报告:**
```bash
cat /root/gj/dirsearch_analysis.txt
```

3. **按域名查看结果:**
```bash
grep "auth.giaohangtietkiem.vn" /root/gj/dirsearch_results/all_results_merged.txt
grep "admin.giaohangtietkiem.vn" /root/gj/dirsearch_results/all_results_merged.txt
```

4. **提取高价值路径:**
```bash
# 管理后台
grep -iE '(admin|manage)' /root/gj/dirsearch_results/all_results_merged.txt | grep '200'

# API接口
grep -iE '(api|v[0-9])' /root/gj/dirsearch_results/all_results_merged.txt | grep '200'

# 备份文件
grep -iE '(backup|\.bak|\.old)' /root/gj/dirsearch_results/all_results_merged.txt | grep '200'
```

---

## 🚨 注意事项

1. **不要关闭SSH连接** - 使用screen可以安全断开
2. **监控服务器资源** - 如果CPU/内存过高，降低线程数
3. **检查WAF封禁** - 如果速度突然下降，可能被限流
4. **保存结果** - 扫描完成后立即备份结果文件

---

**创建时间:** 2025-11-13 23:56
**预计完成:** 2025-11-14 01:06
