SELECT  ename,
        REPLACE(ename,SUBSTR(ename,1,2),'**') "REPLACE"
FROM emp
WHERE deptno = 10
;