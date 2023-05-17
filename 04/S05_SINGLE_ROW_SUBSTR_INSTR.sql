-- student 테이블을 참조해서 아래 화면과 같이 
--1전공이 201번인 학생의 이름과 
-- 전화번호와 지역번호를 출력하세요. 단, 지역번호는
--숫자만
-- 나와야 합니다.

SELECT name,
        tel,
        SUBSTR(tel,1,INSTR(tel,')')-1) AS "AREA CODE"

FROM student
WHERE deptno1 = 201
;