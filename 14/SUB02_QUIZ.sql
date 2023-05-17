--student 테이블과 department 테이블을 사용하여 'Anthorny Hopkins'
--학생과 1 전공(deptno1)이 동일한 학생들의 이름과 1전공 이름을 출력하세요.
SELECT  t1.name,t2.dname
FROM student t1, department t2
WHERE t1.deptno1 =t2.deptno
AND t1.deptno1 = (
                    SELECT deptno1
                    FROM student
                    WHERE name = 'Anthony Hopkins'
)
; 