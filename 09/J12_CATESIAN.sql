--oracle equi join
SELECT t1.name stud_name,
       t2.name prof_name
  FROM student t1, professor t2
 WHERE t1.profno = t2.profno
   AND t1.deptno1 = 101
;

--ansi
SELECT t1.name stud_name,
       t2.name prof_name
  FROM student t1 JOIN professor t2
  ON   t1.profno = t2.profno
  AND  t1.deptno1 = 101
;