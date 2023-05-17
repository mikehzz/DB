--학생 테이블(student)과 학과 테이블(department)을 사용하여 학생이름
--1전공 학과 번호(deptno1),1전공 학과 이름을 출력하세요(ANSI Join
--문법과 Oracle Join 문법으로 각각 SQL을 작성하세요.)

SELECT  t1.name stud_name,
        t2.name prof_name
FROM student t1 JOIN professor t2
ON t1.deptno1 = t2.deptno --데이터가 있는 쪽을 가리킨다.
;