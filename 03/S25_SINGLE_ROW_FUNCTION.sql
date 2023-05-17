SELECT ename,
       LENGTH(ename) as "len"
FROM emp
WHERE deptno = 20
;
--SMITH	5
--JONES	5
--SCOTT	5
--FORD	4