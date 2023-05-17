SELECT ename,
       job,
       CONCAT(ename, job) as "concat", --param °³¼ö 2°³
       ename ||' '|| job as "name job"
FROM emp
WHERE deptno = 10;