CREATE TABLE tt02
(
    no       NUMBER(3,1)     DEFAULT 0,
    name     VARCHAR2(10)    DEFAULT 'no name',
    hiredate DATE            DEFAULT SYSDATE
    
);
INSERT INTO tt02(no) values (12);
SELECT * FROM tt02;

--Table TT02��(��) �����Ǿ����ϴ�.
--1 �� ��(��) ���ԵǾ����ϴ�.
--        NO NAME       HIREDATE
------------ ---------- --------
--        12 no name    23/04/26
--        12 no name    23/04/26