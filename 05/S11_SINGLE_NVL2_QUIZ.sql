--emp ���̺��� deptno�� 30���� ������� ��ȸ�Ͽ� comm
--���� ���� ��� 'Exist'�� ����ϰ� comm ���� null
--�� ��� 'NULL'�� ����ϼ���.

SELECT  empno,
        ename,
        comm,
        NVL2(comm,'Exist','NULL') "nvl2"
FROM emp
WHERE deptno = 30
;
--7499	ALLEN	300	Exist
--7521	WARD	500	Exist
--7654	MARTIN	1400	Exist
--7698	BLAKE		NULL
--7844	TURNER	0	Exist
--7900	JAMES		NULL