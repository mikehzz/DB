SELECT ename,
       job,
       CONCAT(ename, job) as "concat", --param ���� 2��
       ename ||' '|| job as "name job"
FROM emp
WHERE deptno = 10;