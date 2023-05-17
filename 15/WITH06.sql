--with_test1
--no�� 120000~130000
--���̿� ������� pay�� ���� ���� ����� ã�� �� �� ������� pay��
--������� ���� ���� �۾�


SELECT COUNT(*)
FROM with_test1
WHERE pay <ALL (
                SELECT pay
                FROM with_test1
                WHERE no BETWEEN 120000 AND 130000
);

--no�÷��� �ε��� ���� idx_withtest1_no
CREATE INDEX idx_withtest1_no ON with_test1(no);

SELECT COUNT(*)
FROM with_test1
WHERE pay <ALL (
                SELECT /*+INDEX (T1 idx_with_test1_no) */pay
                FROM with_test1 T1
                WHERE no BETWEEN 120000 AND 130000
);

--������ �۾��� WITH���� ����Ͽ� ����
WITH t as (
        SELECT MIN(pay) min_pay
        FROM with_test1 T1
        WHERE pay >0
        AND no BETWEEN 120000 AND 130000
)
SELECT COUNT(*)
FROM t, with_test1 w
WHERE w.pay < t.min_pay
;


WITH t as (
        SELECT MIN(pay) min_pay
        FROM with_test1 T1
        WHERE pay >0
        AND no BETWEEN 120000 AND 130000
)
SELECT COUNT(*)
FROM t, with_test1 w
WHERE w.pay < t.min_pay
;


