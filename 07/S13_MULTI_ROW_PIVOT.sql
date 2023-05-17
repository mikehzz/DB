--LAG(출력할 컬럼, OFFSET, 기본출력값) OVER(Query_partition구문, ORDER BY 정렬컬럼)
SELECT  ename,hiredate,sal,
        LAG(sal,1,0) OVER(ORDER BY hiredate) "LAG"
FROM emp
;