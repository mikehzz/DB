--with_test1
--no가 120000~130000
--사이에 사람들중 pay가 가장 작은 사람을 찾은 후 그 사람보다 pay가
--작은사람 수를 세는 작업


SELECT COUNT(*)
FROM with_test1
WHERE pay <ALL (
                SELECT pay
                FROM with_test1
                WHERE no BETWEEN 120000 AND 130000
);

--no컬럼에 인덱스 생성 idx_withtest1_no
CREATE INDEX idx_withtest1_no ON with_test1(no);

SELECT COUNT(*)
FROM with_test1
WHERE pay <ALL (
                SELECT /*+INDEX (T1 idx_with_test1_no) */pay
                FROM with_test1 T1
                WHERE no BETWEEN 120000 AND 130000
);

--동일한 작업을 WITH절을 사용하여 수행
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


