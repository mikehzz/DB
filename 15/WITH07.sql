-- 반복된 테이블 수행을 한 번만 수행하도록 하고 소요시간을 확인
-- pay중에 제일 작은 값과 제일 큰 값, 그리고 제일 큰 값과 제일 작은
-- 값의 차이를 구하려고 한다.

-- 인덱스 삭제 : idx_withtest1_pay
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

--WITH문을 이용하여 with_test1를 한 번만 접근하도록 수정
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