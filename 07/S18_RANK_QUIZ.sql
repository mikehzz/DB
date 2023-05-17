--emp 테이블에서 10번 부서에 속한 직원들의 사번과 이름,급여
--,해당 부서 내의 급여 순위를
--출력하세요

SELECT  deptno, ename, sal,
        RANK() OVER(ORDER BY sal ASC) RANK_ASC 

FROM emp
WHERE deptno = 10
;
    DEPTNO ENAME             SAL   RANK_ASC
---------- ---------- ---------- ----------
        10 MILLER           1300          1
        10 CLARK            2450          2
        10 KING             5000          3