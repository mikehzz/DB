--EMP테이블에서 부서별로 평균 급여를 계산하고,
--이를 이용해 평균 급여보다 많은 급여를 받는 사원들의
--이름과 부서명, 급여를 조회하는 쿼리이다.

--부서별 평균 급여
WITH avg_salaries AS (
    SELECT deptno, ROUND(AVG(NVL(sal,0)),1) avg_sal
    FROM emp
    GROUP BY deptno
),
high_salary_emp AS (
    SELECT t1.empno, t2.dname, t3.avg_sal
    FROM emp t1, dept t2, avg_salaries t3
    WHERE t1.deptno = t2.deptno
    AND t1.deptno  = t3.deptno
    AND t1.sal > t3.avg_sal
)
SELECT *
FROM high_salary_emp
;




