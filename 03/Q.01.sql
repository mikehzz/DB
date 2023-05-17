-- Q1. emp테이블에서 부서번호가 30번이고, 직무(job)가 'SALESMAN'인 사원들을 출력하세요
-- 직무(job)가 'SALESMAN'인 사원들을 출력하세요
-- (사번, 이름, 직무, 급여, 부서번호)

SELECT empno, ename, job, sal, deptno

FROM emp
WHERE deptno = 30
AND job = 'SALESMAN'
;