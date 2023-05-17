--Professor 테이블과 department 테이블을 조회하여 'Meg Ryan'교수
--보다 나중에 입사한 사람의 이름과 입사일, 학과명을 출력하세요.

SELECT  t1.name,
        TO_CHAR(t1.hiredate,'yyyy-mm-dd') "HIREDATE",
        t2.dname "dept_name"
FROM professor t1, department t2
WHERE t1.deptno =t2.deptno
AND t1.hiredate > (
                    SELECT hiredate
                    FROM professor
                    WHERE name = 'Meg Ryan'
);



desc Professor;
desc department;
