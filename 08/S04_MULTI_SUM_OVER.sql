--panmae ���̺��� ����Ͽ� 1000�� �븮���� �Ǹ� ������ ��ǰ �ڵ庰��
--�з��� �� �Ǹ�����, ��ǰ�ڵ�, �Ǹŷ�, ���� �Ǹűݾ��� ����ϼ���.

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