-- student 테이블에서 아래와 같이 deptno1이 101번인 학과
-- 학생들의 이름과 전화번호와 전화번호에서 지역번호와 국번을 
-- 제외한 나머지 번호를 *로 표시해서 출력하세요.

SELECT  name,
        tel,
        REPLACE(tel,SUBSTR(tel,INSTR(tel,'-')+1,4),'****') AS "REPLACE"

FROM student
WHERE deptno1 = 101
;