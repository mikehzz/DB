--연봉 4000이상인 사원들
SELECT empno,
        ename,
        sal
FROM emp
WHERE sal >= 4000
ORDER BY sal
;