--���̺� ���� ��ɾ�

--DROP TABLE dept7;
--
--SELECT * FROM dept7;

--������ ���̺� ����
SELECT  object_name,
        original_name,
        createtime          
FROM recyclebin
;

--������ ���̺� �����ϱ�

--FLASHBACK TABLE "BIN$Qc93VrSEQNWBiya5AAGsEQ==$0" TO BEFORE DROP;
SELECT * FROM dept7;

