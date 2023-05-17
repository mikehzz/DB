SELECT ename,
        sal
FROM emp
WHERE job='MANAGER'
AND sal > 2000
;

CREATE INDEX idx_emp_job_sal
ON emp(job ASC, sal DESC) 
;

SELECT  ename,
        job,
        sal
FROM emp
WHERE job > 'A'
AND sal >0
;
ENAME      JOB              SAL
---------- --------- ----------
SCOTT      ANALYST         3000
FORD       ANALYST         3000
MILLER     CLERK           1300
JAMES      CLERK            950
SMITH      CLERK            800
JONES      MANAGER         2975
BLAKE      MANAGER         2850
CLARK      MANAGER         2450
KING       PRESIDENT       5000
ALLEN      SALESMAN        1600
TURNER     SALESMAN        1500
WARD       SALESMAN        1250
MARTIN     SALESMAN        1250
