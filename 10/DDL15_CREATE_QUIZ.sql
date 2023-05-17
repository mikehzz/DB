CREATE TABLE new_emp
(
  no NUMBER(5),
  name VARCHAR2(20),
  hiredate DATE,
  bonus NUMBER(6,2)
);
desc new_emp; 

CREATE TABLE new_emp2
AS
SELECT no,name,hiredate FROM new_emp;
desc new_emp2;
--
-- INSERT INTO new_emp2 Values (1, 'J' SYSDATE);
-- commit;
--CREATE TABLE new_emp3
--AS
--SELECT * FROM new_emp2
--WHERE 1 = 2;

--위 2번 문제에서 생성한 new_emp2 테이블에 DATE 타입을 가진 birthday
--컬럼을 추가하는 쿼리를 쓰세요. 단, 해당컬럼이 추가될 때 기본 값으로
--현재 날짜(SYSDATE)가 자동으로 입력되도록 하세요.

 ALTER TABLE new_emp2
 ADD (birthday DATE DEFAULT sysdate)
 ;
 
 select * from new_emp2;
 
 --위에서 생성한 new_emp2 테이블의 birthday 컬럼 이름을 birth로 
 --변경하는 쿼리를 쓰세요.

ALTER TABLE new_emp2
RENAME COLUMN birthday TO birth;
 
--위에서 생성한 new_emp2 테이블의 NO컬럼의 길이를 NUMBER(7)로
--변경하는 쿼리를 쓰세요.
ALTER TABLE new_emp2
MODIFY (no NUMBER(7));

--new_emp2 테이블의 컬럼 중에서 birth 컬럼을 삭제하는 쿼리를 쓰세요.

ALTER TABLE new_emp2
DROP COLUMN birth;

--new_emp2 테이블의 컬럼은 남겨놓고 데이터만 지우는 쿼리를 쓰세요.
TRUNCATE table new_emp2;

--new_emp2 테이블을 완전히 삭제하는 쿼리를 쓰세요.
DROP table new_emp2;
