-- DEPT2 테이블에 아래와 같은 내용으로 새로운 부서 정보를 입력하세요.
--부서번호 : 9010
--부서명 : temp_10
--상위부서 : 1006
--지역 : temp_area
SELECT *
FROM dept2;

INSERT INTO dept2 (dcode, dname,pdept,area)
VALUES('9010','temp_10','1006','temp_area')
;
--부서번호 : 9020
--부서명 : temp_20
--상위부서 : 1006

INSERT INTO dept2 (dcode, dname,pdept)
VALUES('9020','temp_20','1006')
;

INSERT INTO professor24
SELECT profno,name,pay
FROM professor
WHERE profno > 4000
;

SELECT * FROM professor24;

--professor테이블에서 profno가 3000번 이하의 교수들의 profno,
--name,pay를 가져와서 professor4 테이블에 한꺼번에 입력하는 쿼리
--를 쓰세요.

CREATE TABLE professor4
AS
SELECT profno,name,pay
FROM professor
WHERE profno <= 3000
;

SELECT *
FROM professor4;

-- professor 테이블에서 'Sharon Stone'교수의 bonus를 100원으로
-- 인상하세요.

UPDATE professor
   SET bonus = 100
WHERE  position = (SELECT position
                    FROM professor
                    WHERE name = 'Sharon Stone'
                    )
;

SELECT * FROM professor
WHERE name = 'Sharon Stone';

SELECT * FROM professor;