-- STUDENT 테이블에서 JUMIN번호 컬럼을 사용해
-- 1전공이 101번인 학생들의 이름, 태어난월일,
-- 생일 하루전 출력하기

SELECT  
        name,
        jumin,
        SUBSTR(jumin,3,4) as "Birthday",
        SUBSTR(jumin,3,4)-1 as "Birthday-1"
        
FROM student
WHERE deptno1 = 101
;
--James Seo	7510231901813	1023	1022
--Billy Crystal	7601232186327	0123	122
--Richard Dreyfus	7711291186223	1129	1128
--Danny Devito	7808192157498	0819	818