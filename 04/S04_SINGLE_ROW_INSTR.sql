--student테이블 에서 1전공이 101번인 학생들의 
--tel컬럼을 조회하여
--3이 첫 번째로 나오는 위치를 이름과 
--전화번호와 함께 출력 하세요.

SELECT name,
        tel,
        INSTR(tel, '3') AS result
FROM student
WHERE deptno1=101
;