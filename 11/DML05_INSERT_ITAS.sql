SELECT *
FROM professor
WHERE 1=2
;

CREATE TABLE professor23
AS
SELECT *
FROM professor
WHERE 1=2
;

professor테이블데이터를 professor23입력
ITAS : 서브쿼리로 여러 데이터를 가져와서 입력하는 방법
SELECT * FROM professor23;

 데이터 삽입
INSERT INTO professor23
SELECT * FROM professor
;

 데이터 보기
SELECT * FROM professor23;

