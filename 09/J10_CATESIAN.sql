--oracle equi join
--SELECT  t1.name AS STUD_NAME,
--        t2.name AS PROF_NAME
--
--FROM student t1, professor t2
--WHERE t1.profno = t2.profno
--;

--ANSI join
SELECT  t1.name AS STUD_NAME,
        t2.name AS PROF_NAME

FROM student t1 INNER JOIN professor t2
    ON t1.profno = t2.profno
;
