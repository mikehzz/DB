--STEP 1. NEW_EMP23생성

--STEP 2. NAME컬럼에 인덱스 생성

--STEP 3. 인덱스 미사용 조회

--STEP 4. 인덱스 사용 조회
--
--CREATE TABLE new_emp23
--(
--    no NUMBER,
--    name VARCHAR2(10),
--    sal NUMBER
--);
--INSERT INTO new_emp23 VALUES (1000,'SMITH',300 );
--INSERT INTO new_emp23 VALUES (1001,'ALLEN',250 );
--INSERT INTO new_emp23 VALUES (1002,'KING',430  );
--INSERT INTO new_emp23 VALUES (1003,'BLAKE',200 );
--INSERT INTO new_emp23 VALUES (1004,'JAMES',620 );
--INSERT INTO new_emp23 VALUES (1005,'MILLER',810);
--commit;

--1000,'SMITH',300
--1001,'ALLEN',250
--1002,'KING',430
--1003,'BLAKE',200
--1004,'JAMES',620
--1005,'MILLER',810

--SELECT * FROM new_emp23;

--step 2.
CREATE INDEX IDX_new_emp23_name
ON new_emp23 (name ASC);

--step 3. 인덱스 미사용 조회

SELECT name FROM new_emp23;
--SMITH
--ALLEN
--KING
--BLAKE
--JAMES
--MILLER


--step 4. 인덱스 미사용 조회
SELECT name FROM new_emp23
WHERE name > '0';
--ALLEN
--BLAKE
--JAMES
--KING
--MILLER
--SMITH



