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
--�÷� �߰�
--ALTER TABLE dept6
--ADD (loc VARCHAR2(10))
--;

--�߰��� �÷� Ȯ��
--SELECT * FROM dept6;

--�÷� �߰��� default���� 'seoul' �߰�

ALTER TABLE dept6
ADD (location VARCHAR2(20) default 'SEOUL');

--�÷� �߰� �ϸ鼭 �����͵� default������ �Է� ��
SELECT * FROM dept6;




