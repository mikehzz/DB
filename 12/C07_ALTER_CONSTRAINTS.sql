--step1. ������ ���̺� c_test1, c_test2					
--					
--step2. �� ���� ���̺� ���� ������ �����ϰ� �����͸� �Է�					
--					
--step3. On delete cascde �׽�Ʈ�� ����					
--					
--step4. On delete set null �׽�Ʈ ����					
--step1
CREATE TABLE c_test1(
 no NUMBER,
 name VARCHAR2(6 BYTE),
 deptno NUMBER
);
--
CREATE TABLE c_test2(
 no NUMBER,
 name VARCHAR2(10 BYTE)
);
--step2. �� ���� ���̺� ���� ������ �����ϰ� �����͸� �Է�
--c_test1(child) deptno, c_test2(parent) no
--ALTER TABLE c_test1
--ADD CONSTRAINT fk_ctest1_deptno FOREIGN KEY(deptno)
--REFERENCES c_test2(no);
--3�࿡ ����:
--ORA-02270: �� ����Ͽ� ���� ��ġ�ϴ� ���� �Ǵ� �⺻ Ű�� �����ϴ�.
--> c_test2�� no �÷��� unique ���� �߰�
--ALTER TABLE c_test2
--ADD CONSTRAINT uk_ctest2_no UNIQUE(no);
--> c_test2�� no �÷��� unique ���� �߰����� fk����
--ALTER TABLE c_test1
--ADD CONSTRAINT fk_ctest1_deptno FOREIGN KEY(deptno)
--REFERENCES c_test2(no)
--ON DELETE CASCADE;
--c_test2(parent) ������ �Է�
INSERT INTO c_test2 VALUES(10,'AAA');
INSERT INTO c_test2 VALUES(20,'BBB');
INSERT INTO c_test2 VALUES(30,'BBB');

COMMIT;

--�Է� ������ Ȯ��
SELECT * FROM c_test2;

--c_test1(child) ������ �Է� : deptno���� 10,20,30�� ������
--�� �Է� ����

--INSERT INTO c_test1 VALUES(1, 'apple', 99);
--
--INSERT INTO c_test1 VALUES(1, 'apple',10);
--INSERT INTO c_test1 VALUES(2, 'banana',20);
--INSERT INTO c_test1 VALUES(3, 'cherry',30);
--
--commit;

--SELECT * FROM c_test1;

--step3. on delete cascade �׽�Ʈ�� ����
--> c_test2 ���̺� no=10 �����͸� ����, �ڽ��ʿ� name apple
--�� ������ ����

DELETE FROM c_test2 WHERE no = 10;
--        NO NAME      
------------ ----------
--        10 AAA       
--        20 BBB       
--        30 BBB       

--c_test1 �����͵� ���� ����
SELECT * FROM c_test1;



