CREATE TABLE t_minus
(
    no1 NUMBER,
    no2 NUMBER(3),
    no3 NUMBER(3,2)
)
;
양수
INSERT INTO t_minus VALUES(1,1,1);

소수점
INSERT INTO t_minus VALUES(1.1,1.1,1.1);

MINUS
INSERT INTO t_minus VALUES(-1,-1,-1);

SELECT * FROM t_minus;

