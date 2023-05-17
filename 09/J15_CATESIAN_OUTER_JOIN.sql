--ORACLE OUTER JOIN
SELECT  t1.name stud_name,
        t2.name prof_name
FROM student t1, professor t2
WHERE t1.profno(+) = t2.profno --데이터가 없는 쪽에 +
;

SELECT COUNT(*) FROM professor;

--ansi outer join
SELECT  t1.name stud_name,
        t2.name prof_name
FROM student t1 RIGHT OUTER JOIN professor t2
ON t1.profno = t2.profno --데이터가 있는 쪽을 가리킨다.
;

