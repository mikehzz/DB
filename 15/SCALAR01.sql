 test 1. �� �� �̻��� �����Ͱ� return ��û�ϴ� ��� ���� �߻�

 t3, t4 ���̺� ����

CREATE TABLE t3
(
    no NUMBER,
    name VARCHAR2(10),
    deptno NUMBER
);
CREATE TABLE t4
(
    deptno NUMBER,
    dname VARCHAR2(10)
);

--T3
INSERT INTO t3 VALUES(1, 'AAA', 100);
INSERT INTO t3 VALUES(2, 'BBB', 200);
INSERT INTO t3 VALUES(3, 'CCC', 300);

COMMIT;

--T4
INSERT INTO t4 VALUES (100,'DDD' );
INSERT INTO t4 VALUES (100,'EEE' );      --���� �߻�
INSERT INTO t4 VALUES (200,'FFF' );
INSERT INTO t4 VALUES (300,'GGG' );

COMMIT;

SELECT * FROM t4;
SELECT * FROM t3;

dname : 1�� �̻� ������ return
SELECT t3.no,t3.name,(  
                        SELECT dname
                        FROM t4
                        WHERE t4.deptno = t3.deptno
                      )
FROM t3
;

SELECT t3.no,t3.name,(SELECT dname
1�࿡ ����:
ORA-01427: ���� �� ���� ���ǿ� 2�� �̻��� ���� ���ϵǾ����ϴ�.


UPDATE t4
SET deptno = 400
WHERE dname = 'DDD'
;

SELECT t3.no,t3.name,(  
                        SELECT dname
                        FROM t4
                        WHERE t4.deptno = t3.deptno
                      )
FROM t3
;

