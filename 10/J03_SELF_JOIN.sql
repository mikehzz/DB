CREATE TABLE tt02
(
    no       NUMBER(3,1)     DEFAULT 0,
    name     VARCHAR2(10)    DEFAULT 'no name',
    hiredate DATE            DEFAULT SYSDATE
    
);
INSERT INTO tt02(no) values (12);
SELECT * FROM tt02;

--Table TT02이(가) 생성되었습니다.
--1 행 이(가) 삽입되었습니다.
--        NO NAME       HIREDATE
------------ ---------- --------
--        12 no name    23/04/26
--        12 no name    23/04/26