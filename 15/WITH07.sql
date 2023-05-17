-- �ݺ��� ���̺� ������ �� ���� �����ϵ��� �ϰ� �ҿ�ð��� Ȯ��
-- pay�߿� ���� ���� ���� ���� ū ��, �׸��� ���� ū ���� ���� ����
-- ���� ���̸� ���Ϸ��� �Ѵ�.

-- �ε��� ���� : idx_withtest1_pay
--DROP INDEX idx_withtest1_pay;

SELECT 'MAX_PAY' C1, MAX(pay) max_pay FROM with_test1
UNION ALL
SELECT 'MIN_PAY' C1, MIN(pay) min_pay FROM with_Test1
UNION ALL
SELECT 'MAX-MIN' C1, (MAX(pay)-MIN(pay)) DIFF_PAY FROM with_Test1
;
--C1         MAX_PAY
--------- ----------
--MAX_PAY     999999
--MIN_PAY          1
--MAX-MIN     999998

--WITH���� �̿��Ͽ� with_test1�� �� ���� �����ϵ��� ����
WITH sup_pay AS (
    SELECT MAX(pay) max_pay,
           MIN(pay) min_pay
    FROM with_test1
)
SELECT 'MAX_PAY' C1, max_pay FROM sub_pay
UNION ALL
SELECT 'MIN_PAY' C1, min_pay FROM sub_pay
UNION ALL
SELECT 'MAX-MIN' C1, (max_pay-min_pay) diff_pay FROM sub_pay
;