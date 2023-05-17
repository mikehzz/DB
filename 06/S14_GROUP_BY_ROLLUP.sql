--POSITION으로 먼저 분류 한 후 같은 DEPTNO가 있을 경우 ROLLUP

SELECT  deptno,
        position,
        COUNT(*) cnt, 
        sum(pay) pay_sum

FROM professor
GROUP BY position,ROLLUP(deptno)
;