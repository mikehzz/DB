--emp 부서별로 급여가 가장 높은 상위 3명의 사원을 조회하는 쿼리이다.

WITH ranked_emp AS (
    SELECT  t1.empno,
            t1.ename,
            t1.sal,
            t2.dname,
            RANK() OVER ( PARTITION by t1.deptno ORDER BY t1.sal) rank
    FROM emp t1 
    INNER JOIN dept t2 
    ON t1.deptno = t2.deptno
)
SELECT *
FROM ranked_emp
WHERE rank <=3
;


