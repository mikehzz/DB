SELECT  t1.name stud_name,
        t2.name prof_name
FROM student t1, professor t2
WHERE t1.profno(+) = t2.profno --�����Ͱ� �ִ� ���� ����Ų��.
UNION
SELECT  t1.name stud_name,
        t2.name prof_name
FROM student t1 ,professor t2
WHERE t1.profno = t2.profno(+) --�����Ͱ� �ִ� ���� ����Ų��.
;


--ansi full outer join
SELECT  t1.name stud_name,
        t2.name prof_name
FROM student t1 FULL OUTER JOIN professor t2
ON t1.profno = t2.profno --�����Ͱ� �ִ� ���� ����Ų��.
;