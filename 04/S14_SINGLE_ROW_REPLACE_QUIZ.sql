--student 테이블에서 1전공이 101번인 학생들의 이름과
--주민번호를 출력하되 주민번호의 뒤 7자리는 '-'과
--'/'로 표시되게 출력하세요.

SELECT  name,
        jumin,
        REPLACE(jumin,SUBSTR(jumin,7,7),'-/-/-/-') AS REPLACE
FROM student
WHERE deptno1 = 101
;