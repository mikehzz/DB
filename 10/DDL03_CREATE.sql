CREATE TABLE 도토리(
    번호 NUMBER,
    이름 VARCHAR2(30),
    등록일 DATE
);

-- 컬럼과 테이블은 30BYTE까지 가능
-- 테이블 이름은 문자로 시작, 숫자로 시작할 수 없다. 그러나
-- 특수문자는 '_' 사용
-- 숫자를 표함할 수는 있다.
-- ORACLE KEY WORD는 컬럼과 테이블 이름에 사용하지 않기를 권장
-- SCOTT사용자가 TEST 테이블을 만들고, HR TEST라는 이름을 사용할수 있다.

