--Professor 테이블과 department 테이블을 조회하여 각 학과별로
--입사일이 가장 오래된 교수의 교수번호와 이름, 학과명을 출력하세요.

SELECT  t1.profno,
        t1.name "PROF_NAME",
        TO_CHAR(t1.hiredate,'yyyy-mm-dd') "HIREDATE",
        t2.dname
FROM professor t1 , department t2
WHERE t1.deptno = t2.deptno
AND (t1.deptno,t1.hiredate) IN (
                        SELECT deptno,MIN(hiredate)
                        FROM professor
                        GROUP BY deptno
)
ORDER BY 3
;

    PROFNO PROF_NAME            prof_name  DNAME                                             
---------- -------------------- ---------- --------------------------------------------------
      1001 Audie Murphy         1980-06-23 Computer Engineering                              
      4001 Meryl Streep         1981-10-23 Electronic Engineering                            
      3001 Emma Thompson        1981-10-23 Software Engineering                              
      2003 Whoopi Goldberg      1982-04-29 Multimedia Engineering                            
      4005 Meg Ryan             1985-09-18 Chemical Engineering                              
      4003 Nicole Kidman        1999-12-01 Mechanical Engineering                            
      4007 Jodie Foster         2001-05-23 Library and Information science                   
