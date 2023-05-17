--student 테이블에서 1전공이 102번인 학생들의 이름과
--전화번호, 전화번호에서 국번 부분만 '*'처리해 출력하세요.
--단, 모든 국번은 3자리로 간주합니다.

SELECT  name,
        tel,
        REPLACE(tel,
                    SUBSTR(tel,INSTR(tel,')')+1,3),
                    '***') "re_sub"
FROM student
WHERE deptno1 = 102
;