SELECT  ename,
        RTRIM(ename,'R') AS "RTRIM"
        
FROM emp
WHERE deptno = 10
;