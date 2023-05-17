--oracle equi join
SELECT  t1.name stud_name,
        t2.name prof_name,
        t3.dname dept_name
FROM student t1, professor t2, department t3
WHERE t1.profno = t2.profno
AND t1.deptno1=t3.deptno
;

--ansi equi join

SELECT  t1.name stud_name,
        t2.name prof_name,
        t3.dname dept_name
    FROM student t1 INNER JOIN professor t2
        ON t1.profno = t2.profno
    INNER JOIN department t3
        ON t1.deptno1=t3.deptno
;