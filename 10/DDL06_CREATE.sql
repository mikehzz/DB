--CREATE TABLE dept6
--AS

--CREATE TABLE dept6
--AS
--SELECT dcode, dname
--FROM dept2
--WHERE dcode IN(1000,1001,1002)
--;

--SELECT * FROM dept6;
--
--컬럼 추가
--ALTER TABLE dept6
--ADD (loc VARCHAR2(10))
--;

--추가된 컬럼 확인
--SELECT * FROM dept6;

--컬럼 추가에 default값에 'seoul' 추가

ALTER TABLE dept6
ADD (location VARCHAR2(20) default 'SEOUL');

--컬럼 추가 하면서 데이터도 default값으로 입력 됨
SELECT * FROM dept6;




