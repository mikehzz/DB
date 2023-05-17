-- Q2. emp테이블에서 부서번호가 10,20이고 
-- sal 2000 이상인 사원들 정보를 출력하세요.
-- (사번, 이름, 직무, 급여, 부서번호)

SELECT empno, ename, job, sal, deptno

FROM emp
WHERE sal >= 2000
AND deptno in (10,20)
;