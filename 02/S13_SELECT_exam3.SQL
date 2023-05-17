--DESC emp;
col "NAME AND Sal" for a50
SELECT ename || '''s sal is ' || '$' || Sal as "NAME AND Sal"
FROM emp
;