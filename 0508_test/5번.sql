--[¹®Ç×5]

--desc student;
--desc department;
--desc professor;

--select * from student;
--select * from department;
--select * from student;

--ANSI JOIN
SELECT *
FROM(
SELECT ROWNUM rnum,
        T1.*
FROM(SELECT 
        t1.name stud_name,
        t1.deptno1,
        TO_CHAR(t1.birthday,'YYYY-MM-YY') "BIRTHDAY",
        t3.dname,
        t2.name prof_name

FROM    student t1 INNER JOIN professor t2
        ON t1.profno = t2.profno
        INNER JOIN  department t3
        ON t1.deptno1= t3.deptno
        order by 2, 1
) T1
WHERE rownum <= 10
) TT1
WHERE rnum >=1
;


--ORACLE JOIN

SELECT *
FROM(
SELECT ROWNUM rnum,
        T1.*
FROM(SELECT  t1.name stud_name,
        t1.deptno1,
        TO_CHAR(t1.birthday,'YYYY-MM-YY') "BIRTHDAY",
        t3.dname,
        t2.name prof_name
        
FROM student t1 ,professor t2, department t3
WHERE t1.profno = t2.profno
AND   t1.deptno1= t3.deptno
        order by 2, 1
) T1
WHERE rownum <= 10
) TT1
WHERE rnum >=1
;



