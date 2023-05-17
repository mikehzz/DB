--1.아래의 표를 보고 테이블을 생성하면서 제약 조건을 설정하세요.

CREATE TABLE tcons (
 no NUMBER
 CONSTRAINT pk_tcons_no PRIMARY KEY,
 name VARCHAR2(20 byte)
 CONSTRAINT tcons_name_nn NOT NULL,
 jumin VARCHAR2(13 byte)
 CONSTRAINT tcons_jumin_nn NOT NULL
 CONSTRAINT uk_tcons_jumin UNIQUE,
 area NUMBER(8)
 CONSTRAINT ck_tcons_area CHECK(area<4),
 deptno VARCHAR2(6 byte)
 CONSTRAINT fk_tcons_deptno
 REFERENCES dept2(dcode)
);

--2.tcons 테이블의 name컬럼이 emp2테이블의 name 컬럼의 값을 참조
--하도록 참조키 제약 조건을 추가 설정하는 쿼리를 쓰세요(tcons 테이블
--이 자식 테이블입니다.)

ALTER TABLE tcons
ADD CONSTRAINT fk_tcons_name FOREIGN KEY(name)
REFERENCES emp2(name);

--3.tcons 테이블의 jumin 컬럼에 만들어져 있는 unique 제약 조건을
--"사용안함"으로 변경하되 해당 테이블의 데이터에 DML까지 안 되도록
--변경하는 쿼리를 쓰세요

SELECT  table_name,
        column_name,
        constraint_name
FROM user_cons_columns
WHERE table_name = UPPER('emp')
;


--5.emp 테이블에 설정되어 있는 제약 조건 중 자신이 생성한 제약 조건들
--을 테이블명, 컬럼명, 제약 조건명으로 검색하는 쿼리를 쓰세요(단,
--Foreign key는 제외한다.)

SELECT  owner,
        CONSTRAINT_name,
        table_name,
        column_name
FROM user_cons_columns
WHERE table_name = UPPER('emp')
;


SELECT  owner,
        CONSTRAINT_name,
        CONSTRAINT_type,
        status
FROM user_constraints
WHERE table_name = UPPER('EMP')
AND constraint_type <> 'R'
;






