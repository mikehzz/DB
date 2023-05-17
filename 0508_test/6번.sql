--ORACLE JOIN
SELECT
    t1.name  stud_name,
    t2.total total,
    t3.grade grade,
    t4.name  prof_name
FROM
    student   t1,
    score     t2,
    hakjum    t3,
    professor t4
WHERE
        t1.studno = t2.studno
    AND t2.total >= t3.min_point
    AND t2.total <= t3.max_point
    AND t1.profno = t4.profno
ORDER BY
    2 DESC;
--ANSI JOIN
SELECT
    t1.name  stud_name,
    t2.total total,
    t3.grade grade,
    t4.name  prof_name
FROM
         student t1
    JOIN score     t2 ON t1.studno = t2.studno
    JOIN hakjum    t3 ON t2.total >= t3.min_point
                      AND t2.total <= t3.max_point
    JOIN professor t4 ON t1.profno = t4.profno
ORDER BY
    2 DESC;