--panmae ���̺��� ����Ͽ� 1000�� �븮���� �Ǹ� ������ ����ϵ�
--�Ǹ�����, ��ǰ�ڵ�, �Ǹŷ�, 
--���� �Ǹűݾ��� ����ϼ���.

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