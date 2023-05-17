SELECT deptno,
       NULL                       job,
       Round(Avg(Nvl(sal, 0)), 1) avg_sal,
       Count(*)                   cnt_emp
FROM   emp
GROUP  BY deptno
UNION ALL
SELECT deptno,
       job,                             
       Round(Avg(Nvl(sal, 0)), 1) avg_sal,
       Count(*)                   cnt_emp
FROM   emp
GROUP  BY deptno,
          job
UNION ALL
SELECT NULL                       deptno,
       NULL                       job,
       Round(Avg(Nvl(sal, 0)), 1) avg_sal,
       Count(*)                   cnt_emp
FROM   emp
ORDER  BY 1,
          2; 
SELECT deptno no,
       job, 
       AVG(NVL(sal,0)) "AVG_SAL"


SELECT deptno,
       AVG(NVL(sal,0)) 
FROM emp
WHERE AVG(NVL(sal,0)) > 2000
;
WHERE AVG(NVL(sal,0)) > 2000
      *
4행에 오류:
ORA-00934: 그룹 함수는 허가되지 않습니다

SELECT deptno,
       AVG(NVL(sal,0)) 
FROM emp
WHERE deptno > 10
GROUP BY deptno
HAVING AVG(NVL(sal,0)) > 2000
;

	SELECT t1.name stud_name,
	       t2.name prof_name
	FROM student t1, professor t2
	WHERE t1.profno = t2.profno(+)  --데이터가 없는 쪽에 +
	;
	SELECT COUNT(*) FROM student;
	--ANSI OUTER JOIN
	SELECT t1.name stud_name,
	       t2.name prof_name
	  FROM student t1 LEFT OUTER JOIN  professor t2
	    ON t1.profno = t2.profno  --데이터가 있는 쪽을 가리킨다.
	;


