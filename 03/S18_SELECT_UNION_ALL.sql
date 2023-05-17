SELECT  studno,
        name,
        deptno1
FROM student
WHERE deptno1 = 101

UNION ALL
SELECT 
        studno,
        name,
        deptno2
FROM student
WHERE deptno2 = 201
;