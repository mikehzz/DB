--1.�Ʒ��� ǥ�� ���� ���̺��� �����ϸ鼭 ���� ������ �����ϼ���.

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

--2.tcons ���̺��� name�÷��� emp2���̺��� name �÷��� ���� ����
--�ϵ��� ����Ű ���� ������ �߰� �����ϴ� ������ ������(tcons ���̺�
--�� �ڽ� ���̺��Դϴ�.)

ALTER TABLE tcons
ADD CONSTRAINT fk_tcons_name FOREIGN KEY(name)
REFERENCES emp2(name);

--3.tcons ���̺��� jumin �÷��� ������� �ִ� unique ���� ������
--"������"���� �����ϵ� �ش� ���̺��� �����Ϳ� DML���� �� �ǵ���
--�����ϴ� ������ ������

SELECT  table_name,
        column_name,
        constraint_name
FROM user_cons_columns
WHERE table_name = UPPER('emp')
;


--5.emp ���̺� �����Ǿ� �ִ� ���� ���� �� �ڽ��� ������ ���� ���ǵ�
--�� ���̺��, �÷���, ���� ���Ǹ����� �˻��ϴ� ������ ������(��,
--Foreign key�� �����Ѵ�.)

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






