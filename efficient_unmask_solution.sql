-- 🔓 高效解脱敏SQL方案
-- 适用于已导出的脱敏数据

-- ==========================================
-- 方案1: 单个MABC查询（测试用）
-- ==========================================

-- 查询单个运单号的真实数据
SELECT 
    MABC,
    NGUOINHAN AS 真实姓名,
    DIENTHOAINHAN AS 真实电话,
    DIACHI AS 真实地址
FROM EMS.E1E2_PH_TEMP_DATA2_LOG 
WHERE MABC = '100916'
  AND DIENTHOAINHAN IS NOT NULL
  AND DIENTHOAINHAN != '0999999999'
  AND ROWNUM = 1;

-- ==========================================
-- 方案2: 批量查询（10个MABC）
-- ==========================================

-- 用IN子句批量查询（适合小批量）
SELECT 
    MABC,
    NGUOINHAN,
    DIENTHOAINHAN
FROM EMS.E1E2_PH_TEMP_DATA2_LOG 
WHERE MABC IN ('100916', '101000', '236160', '299430', '700916', 
               '701000', '725231', '880100', '650100', '100098')
  AND DIENTHOAINHAN IS NOT NULL
  AND DIENTHOAINHAN != '0999999999';

-- ==========================================
-- 方案3: UNION ALL批量查询（推荐）
-- ==========================================

-- 每个MABC一个SELECT，用UNION ALL合并
SELECT MABC, NGUOINHAN, DIENTHOAINHAN 
FROM EMS.E1E2_PH_TEMP_DATA2_LOG 
WHERE MABC='100916' AND DIENTHOAINHAN IS NOT NULL AND ROWNUM=1

UNION ALL

SELECT MABC, NGUOINHAN, DIENTHOAINHAN 
FROM EMS.E1E2_PH_TEMP_DATA2_LOG 
WHERE MABC='101000' AND DIENTHOAINHAN IS NOT NULL AND ROWNUM=1

UNION ALL

SELECT MABC, NGUOINHAN, DIENTHOAINHAN 
FROM EMS.E1E2_PH_TEMP_DATA2_LOG 
WHERE MABC='236160' AND DIENTHOAINHAN IS NOT NULL AND ROWNUM=1

-- ... 继续添加更多MABC

;

-- ==========================================
-- 方案4: 通过电话后4位匹配（模糊匹配）
-- ==========================================

-- 根据脱敏电话的后4位查找可能的真实电话
SELECT 
    NGUOINHAN,
    DIENTHOAINHAN,
    MABC
FROM EMS.E1E2_PH_TEMP_DATA2_LOG 
WHERE DIENTHOAINHAN LIKE '%5747'
  AND NGUOINHAN IS NOT NULL
  AND ROWNUM <= 20;

-- ==========================================
-- 方案5: 按日期范围查询（如果有NGAY字段）
-- ==========================================

-- 查询特定日期的所有真实数据
SELECT 
    MABC,
    NGAY,
    NGUOINHAN,
    DIENTHOAINHAN,
    NGUOIGUI,
    DIENTHOAIGUI
FROM EMS.E1E2_PH_TEMP_DATA2_LOG 
WHERE NGAY = '20251010'
  AND DIENTHOAINHAN IS NOT NULL
  AND ROWNUM <= 100;

-- ==========================================
-- 使用说明
-- ==========================================

/*
1. 测试方案1：验证单个MABC能否查到数据
   
2. 如果成功，使用方案2或3批量查询
   - 方案2：简单，但可能超时
   - 方案3：更稳定，推荐

3. 查询结果格式：
   MABC        | 真实姓名      | 真实电话
   ------------|--------------|-------------
   100916      | Tám Xuyên    | 0368075747
   101000      | Nguyễn Văn A | 0912345678

4. 注意事项：
   - 不是所有MABC都能在真实表中找到
   - 真实表可能有延迟同步
   - 建议每批查询50-100个MABC
*/
