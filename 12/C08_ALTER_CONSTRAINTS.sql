--step4. on delete set null �׽�Ʈ ����

--fk�� ���� ����: drop�ϰ� ���� �����ؾ� ��.

--DROP : fk_ctest1_deptno
ALTER TABLE c_test1
DROP CONSTRAINT fk_ctest1_deptno;

--fk ���� ���� on delete set null
--ALTER TABLE c_test1
--ADD CONSTRAINT fk_ctest1_deptno FOREIGN KEY(deptno)
--REFERENCES c_test2("NO")
--ON DELETE SET NULL;

--c_test1, c_test2

SELECT * FROM c_test1;
SELECT * FROM c_test2;

--c_test1�� deptno=20 �÷��� �����Ͱ� null�� �����
--DELETE FROM c_test2 WHERE no = 20;

SELECT * FROM c_test1;
DELETE FROM c_test1 WHERE deptno = 20;


