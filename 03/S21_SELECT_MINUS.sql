-- 
SELECT empno, ename, sal
FROM emp
MINUS

SELECT empno, ename, sal
FROM emp
WHERE sal > 2500
;