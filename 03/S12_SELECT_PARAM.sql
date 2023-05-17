SET VERIFY OFF
SELECT ename,
        hiredate,
        sal,
        comm
FROM emp
WHERE ename = '&ename'
;