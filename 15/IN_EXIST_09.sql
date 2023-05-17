--EXEC dbms_stats.gather_table_stats('SCOTT', 'CUST_T',no_invalidate =>false);
--EXEC dbms_stats.gather_table_stats('SCOTT', 'order_t',no_invalidate =>false);

SELECT  table_name,
        num_rows,
        blocks,
        avg_row_len
FROM user_tables
WHERE table_name IN ('CUST_T', 'ORDER_T');
--TABLE_NAME  NUM_ROWS     BLOCKS AVG_ROW_LEN
---------------------- ---------- -----------
--CUST_T             0          0           0
--ORDER_T      2000000      11117          28



