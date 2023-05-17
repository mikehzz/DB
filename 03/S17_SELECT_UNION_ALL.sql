SELECT studno, 
        name, 
        deptno1,
        1
FROM student
WHERE deptno1 = 101
UNION ALL
SELECT profno, 
        name, 
        deptno,
        2
FROM professor
WHERE deptno = 101
;