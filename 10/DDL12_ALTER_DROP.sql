1. dept9 ���̺� ctas�� ����
CREATE TABLE dept9
AS
SELECT * FROM dept2
;

--2. ���� Ȯ��
SELECT * FROM dept9;

--3. drop
DROP table dept9;

--4 ������ ���̺� ����
SELECT  object_name,
        original_name,
        createtime          
FROM recyclebin
;

--5. �����ϱ� 
FLASHBACK TABLE "BIN$86XcDwVzSHu5UVaL2s+v6w==$0" TO BEFORE DROP;

--6. ���� Ȯ��
SELECT * FROM dept9;


