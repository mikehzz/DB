--STEP 1. NEW_EMP23����

--STEP 2. NAME�÷��� �ε��� ����

--STEP 3. �ε��� �̻�� ��ȸ

--STEP 4. �ε��� ��� ��ȸ
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

--step 3. �ε��� �̻�� ��ȸ

SELECT name FROM new_emp23;
--SMITH
--ALLEN
--KING
--BLAKE
--JAMES
--MILLER


--step 4. �ε��� �̻�� ��ȸ
SELECT name FROM new_emp23
WHERE name > '0';
--ALLEN
--BLAKE
--JAMES
--KING
--MILLER
--SMITH



