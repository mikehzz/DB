SELECT ename,
        hiredate,
        sal,
        comm
FROM emp
WHERE sal > 1000
AND (comm < 1000 OR comm IS NULL)
;