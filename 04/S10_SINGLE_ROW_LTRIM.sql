SELECT  ename,
        LTRIM(ename, 'C') "LTRIM",
        LTRIM(' ' || ename) "LTRIM_DEFAULT"

FROM emp
WHERE deptno = 10
;