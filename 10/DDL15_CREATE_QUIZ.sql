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

--�� 2�� �������� ������ new_emp2 ���̺� DATE Ÿ���� ���� birthday
--�÷��� �߰��ϴ� ������ ������. ��, �ش��÷��� �߰��� �� �⺻ ������
--���� ��¥(SYSDATE)�� �ڵ����� �Էµǵ��� �ϼ���.

 ALTER TABLE new_emp2
 ADD (birthday DATE DEFAULT sysdate)
 ;
 
 select * from new_emp2;
 
 --������ ������ new_emp2 ���̺��� birthday �÷� �̸��� birth�� 
 --�����ϴ� ������ ������.

ALTER TABLE new_emp2
RENAME COLUMN birthday TO birth;
 
--������ ������ new_emp2 ���̺��� NO�÷��� ���̸� NUMBER(7)��
--�����ϴ� ������ ������.
ALTER TABLE new_emp2
MODIFY (no NUMBER(7));

--new_emp2 ���̺��� �÷� �߿��� birth �÷��� �����ϴ� ������ ������.

ALTER TABLE new_emp2
DROP COLUMN birth;

--new_emp2 ���̺��� �÷��� ���ܳ��� �����͸� ����� ������ ������.
TRUNCATE table new_emp2;

--new_emp2 ���̺��� ������ �����ϴ� ������ ������.
DROP table new_emp2;
