--STEP 2. MIN/MAX 함수를 사용하여 최댓값과 최소값의 차이를 구하고 
--시간측정 with_test1

--SELECT MAX(pay) - MIN(pay)
--FROM with_test1
--;
--MAX(PAY)-MIN(PAY)
-------------------
--           999998

--STEP 2. PAY INDEX 생성, MIN/MAX 함수를 사용하여 최대값과 
--최소값의 차이를 구하고 시간측정

--CREATE INDEX IDX_WITHTEST1_PAY ON with_test1(pay);

--SELECT MAX(pay) - MIN(pay)
--FROM with_test1
--WHERE pay >0
--;

STEP 3. WITH절을 사용하여 동일한 작업 수행

WITH a AS (
 /* 최대값 */
 SELECT /*+ INDEX_DESC(with_test1) */ MAX(pay) pay
 FROM with_test1
 WHERE pay > 0
 AND rownum = 1
),
b as (
 /* 최소값 */
 SELECT /*+ INDEX(with_test1 idx_withtest1_pay) */ MIN(pay) pay
 FROM with_test1
 WHERE pay > 0
 AND rownum = 1
)
SELECT a.pay - b.pay
FROM a,b
;





