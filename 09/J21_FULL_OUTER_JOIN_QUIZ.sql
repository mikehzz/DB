--professor 테이블에서 교수의 번호, 교수 이름, 입사일, 자신보다 
--입사일 빠른 사람 인원수를 출력하세요. 단, 자신보다 입사일이 빠른 사람
--수를 오름차순으로 출력하세요
--ORACLE
SELECT  t1.profno,
        t1.name,
        TO_CHAR(t1.hiredate,'YYYY/MM/DD') hiredate,
        COUNT(t2.hiredate) count
FROM professor t1, professor t2
WHERE t1.hiredate > t2.hiredate(+)
GROUP BY t1.profno, t1.name,t1.hiredate
ORDER BY 3
;

--ANSI
SELECT  t1.profno,
        t1.name,
        TO_CHAR(t1.hiredate,'YYYY/MM/DD') hiredate,
        COUNT(t2.hiredate) count
FROM professor t1 JOIN professor t2
ON t1.hiredate > t2.hiredate(+)
GROUP BY t1.profno, t1.name,t1.hiredate
ORDER BY 3
;
