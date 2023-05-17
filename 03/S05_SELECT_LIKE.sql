-- sal의 첫 숫자가 1로 시작하는 사원의 empno, ename, deptno
-- 숫자 like 사용
SELECT empno,
        ename,
        deptno,
        sal
FROM emp
WHERE sal LIKE '1%'
;