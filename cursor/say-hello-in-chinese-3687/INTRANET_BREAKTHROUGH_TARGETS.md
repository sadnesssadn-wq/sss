# 🎯 内网切入点 - 关键发现

## 💥 最重要的发现

### 1. 内网地图服务！！！
```
https://maps.vnpost.vn/api/autocomplete
https://maps.vnpost.vn/api/reverse?point.lat=XXX
```
**为什么重要**:
- 这可能是内网服务
- 可能支持SSRF
- `reverse` API接受参数

### 2. 13个Jasper报表端点
```
/khl2024/khl/jasper/JasperVD
/khl2024/khl/jasper/printByTTNumber
/khl2024/khl/jasper/dtltmpexportextg
/khl2024/khl/jasper/hdrexportex
/khl2024/khl/jasper/hdrtmpexportex
/khl2024/khl/jasper/dtlexportextn
/khl2024/khl/jasper/dtlexportexqt
/khl2024/khl/jasper/incidentex
/khl2024/khl/jasper/BCCT
/khl2024/khl/jasper/BCTH
/khl2024/khl/jasper/BCTH_01
/khl2024/khl/jasper/phi-chuyen-nganh
/khl2024/khl/jasper/HCC
```

### 3. 多个导出函数
- downloadFile
- downloadExcelFile
- handleGetServiceReport
- acDownloadFile

---

## 🚀 立即行动

1. **测试maps.vnpost.vn** - 可能暴露内网
2. **深度测试Jasper端点** - 逐个测试SSRF
3. **分析导出函数调用** - 找URL参数

