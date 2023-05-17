--panmae 테이블을 사용하여 1000번 대리점의 판매 내역을 출력하되
--판매일자, 제품코드, 판매량, 
--누적 판매금액을 출력하세요.

SELECT  p_date,
        p_code,
        p_qty,
        p_total,
        SUM(p_total) OVER(ORDER BY p_total) "TOTAL"
FROM panmae
WHERE p_store = 1000
;                                                                                                                                                                                                                                                   
P_DATE       P_CODE      P_QTY    P_TOTAL      TOTAL
-------- ---------- ---------- ---------- ----------
20110103        100          2       1600       1600
20110102        102          2       2000       3600
20110101        100          3       2400       6000
20110102        105          2       3000       9000