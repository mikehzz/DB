--�θ� ���̺��� �÷��� PK, UK�� �����Ǿ� �־�� �Ѵ�.
--(name �÷��� pk, uk ����.)
--NEW_EMP2 ���̺��� name�÷��� EMP2 ���̺��� name �÷��� ����						
--�����ϵ��� ����Ű ���� ������ ����(NEW_EMP2�� �ڽ� ���̺�)						
--ALTER TABLE new_emp2
--ADD CONSTRAINT fk_emp2_name FOREIGN KEY(name)
--REFERENCES emp2(name);
--3�࿡ ����:
--ORA-02270: �� ����Ͽ� ���� ��ġ�ϴ� ���� �Ǵ� �⺻ Ű�� �����ϴ�.
--emp2���̺��� name�� unique ���� ���� �߰�
--ALTER TABLE emp2
--ADD CONSTRAINT uk_emp2_name UNIQUE(name);
--emp2���̺��� name unique ���� ���� �߰� ���� ����
ALTER TABLE new_emp2
ADD CONSTRAINT fk_emp2_name FOREIGN KEY(name)
REFERENCES emp2(name);



