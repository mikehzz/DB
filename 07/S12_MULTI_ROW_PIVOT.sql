--emp테이블에서 부서별로 인원이 몇명인지 계산하기, 부서별 급여합계
SELECT * FROM (SELECT deptno, empno, job, sal FROM emp)
PIVOT(
       COUNT(empno) AS COUNT,
       SUM(NVL(sal,0)) AS SUM FOR job IN ('CLERK' AS "CLERK"
                             ,'SALESMAN' AS "SALESMAN"
                             ,'ANALYST' AS "ANALYST"
                             ,'MANAGER' AS "MANAGER"
                             ,'PRESIDENT' AS "PRESIDENT"
                            )
)
ORDER BY 1
;
    DEPTNO CLERK_COUNT  CLERK_SUM SALESMAN_COUNT SALESMAN_SUM ANALYST_COUNT ANALYST_SUM MANAGER_COUNT MANAGER_SUM PRESIDENT_COUNT PRESIDENT_SUM
---------- ----------- ---------- -------------- ------------ ------------- ----------- ------------- ----------- --------------- -------------
        10           1       1300              0                          0                         1        2450               1          5000
        20           1        800              0                          2        6000             1        2975               0              
        30           1        950              4         5600             0                         1        2850               0              