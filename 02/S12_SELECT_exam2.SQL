--DESC emp;
col "NAME AND JOB" for a50
SELECT ename || '(' || job || ') , ' || ename || '''' || job || ''''as "NAME AND JOB"
FROM emp
;