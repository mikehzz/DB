--emp테이블에서 부서별로 각 직급별 인원이 몇명인지 계산하기

SELECT  deptno,
        COUNT(DECODE(job, 'CLERK','0',null)) "CLERK",
        COUNT(DECODE(job, 'SALESMAN','0',null)) "SALESMAN",
        COUNT(DECODE(job, 'ANALYST','0',null)) "ANALST",
        COUNT(DECODE(job, 'MANAGER','0',null)) "MANAGER",
        COUNT(DECODE(job, 'PRESIDENT','0',null)) "PRESIDENT"
FROM emp
GROUP BY deptno
ORDER BY deptno ASC
;