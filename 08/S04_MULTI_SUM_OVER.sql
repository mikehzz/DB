--panmae 테이블을 사용하여 1000번 대리점의 판매 내역을 제품 코드별로
--분류한 후 판매일자, 제품코드, 판매량, 누적 판매금액을 출력하세요.

SELECT  p_date,
        p_code,
        p_qty,
        p_total,
        SUM(p_total) OVER(PARTITION BY p_code ORDER BY p_total) "TOTAL"
FROM panmae
WHERE p_store = 1000
;  
P_DATE       P_CODE      P_QTY    P_TOTAL      TOTAL
-------- ---------- ---------- ---------- ----------
20110103        100          2       1600       1600
20110101        100          3       2400       4000
20110102        102          2       2000       2000
20110102        105          2       3000       3000