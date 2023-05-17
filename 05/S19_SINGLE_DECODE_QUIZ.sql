--student 테이블에서 1 전공이 101번인 학생의 이름과 연락처
--와 지역을 출력하세요.
--지역번호가 02는 "SEOUL", 031은 "GYEONGGI", 051은 "BUSAN"
--052는 'ULSAN",055는 "GYEONGNAM"입니다.

SELECT  name,
        tel,
        DECODE(SUBSTR(tel,1,INSTR(tel,')')-1)
                                            ,02,'SEOUL'
                                            ,031,'GYEONGGI'
                                            ,051,'BUSAN'
                                            ,052,'ULSAN'
                                            ,055,'GYEONGNAM') "LOC"
FROM student
WHERE deptno1 = 101
;
--James Seo	055)381-2158	055	GYEONGNAM
--Billy Crystal	055)333-6328	055	GYEONGNAM
--Richard Dreyfus	02)6788-4861	02	SEOUL
--Danny Devito	055)278-3649	055	GYEONGNAM