--emp 테이블을 사용해 부서별로 급여 누적 합계가 나오도록 출력하세요.
--단, 부서별로 오름차순 출력하세요.

SELECT  deptno,
        ename,
        sal,
        SUM(sal) OVER(PARTITION BY deptno ORDER BY sal ASC) "TOTAL"
        
FROM emp
;
    DEPTNO ENAME             SAL      TOTAL
---------- ---------- ---------- ----------
        10 MILLER           1300       1300
        10 CLARK            2450       3750
        10 Cat              3000       6750
        10 Tiger            3600      10350
        10 KING             5000      15350
        20 SMITH             800        800
        20 JONES            2975       3775
        20 SCOTT            3000       9775
        20 FORD             3000       9775
        30 JAMES             950        950
        30 WARD             1250       3450