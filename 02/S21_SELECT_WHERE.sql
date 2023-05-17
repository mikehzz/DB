SELECT
        empno,
        ename,
        sal,
        hiredate
FROM
        emp
WHERE hiredate >= '82/02/25'
ORDER BY hiredate ASC
;