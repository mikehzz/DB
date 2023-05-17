--desc student;
--desc score;
--desc hakjum;

--oracle none equi join
SELECT  t1.name stud_name,
        t2.total,
        t3.grade
FROM student t1, score t2, hakjum t3
WHERE t1.studno = t2.studno
AND t2.total >= t3.min_point
AND t2.total <= t3.max_point
;

--ansi
SELECT  t1.name stud_name,
        t2.total,
        t3.grade
FROM student t1 JOIN score t2
ON t1.studno = t2.studno
JOIN hakjum t3
ON t2.total >= t3.min_point
AND t2.total <= t3.max_point
;

