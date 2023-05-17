--
SELECT ename,
        sal,
        comm,
        sal*12+comm --comm 칼럼에 null이 존재 : null + sal -> null
FROM emp
;