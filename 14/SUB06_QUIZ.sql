SELECT *
FROM dept
WHERE EXISTS (
                SELECT deptno
                FROM dept
                WHERE deptno = &dno
)
;
    DEPTNO DNAME          LOC          
---------- -------------- -------------
        10 ACCOUNTING     NEW YORK     
        20 RESEARCH       DALLAS       
        30 SALES          CHICAGO      
        40 OPERATIONS     BOSTON      