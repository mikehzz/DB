--1000�� �Ǹ����� ���ں� �Ǹ� ������ �ݾ� �� ���� �Ǹ� ������ �ݾ� ����

SELECT  p_store,
        p_date,
        p_code,
        p_qty,
        LAG(p_qty, 1) OVER(ORDER BY p_date) "D-1 QTY",
        p_qty - LAG(p_qty, 1) OVER(ORDER BY p_date) "DIFF-QTY",
        p_total,
        LAG(p_total,1) OVER(ORDER BY p_date) "D-1 PRICE",
        p_total - LAG(p_total,1) OVER(ORDER BY p_date) "DIFF PRICE"
FROM panmae
WHERE p_store = 1000
;
P_STO P_DATE       P_CODE      P_QTY    D-1 QTY   DIFF-QTY    P_TOTAL  D-1 PRICE DIFF PRICE
----- -------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
1000  20110101        100          3                             2400                      
1000  20110102        102          2          3         -1       2000       2400       -400
1000  20110102        105          2          2          0       3000       2000       1000
1000  20110103        100          2          2          0       1600       3000      -1400
