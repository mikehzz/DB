--날짜 데이터 입력 하기
--WINDOW/UNIX 날짜형식이 상이하다.
--OS에 맞는 날짜형식으로 입력 필요.

INSERT INTO professor (profno,name,id,position,pay,hiredate)
VALUES (5001,'James Bond','Love_me','a full professor',500,'2014-10-23');

-- TO_DATE('2014-10-23','YYYY-MM-DD')
SELECT * 
FROM professor
WHERE profno = '5001'
;
