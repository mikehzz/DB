--emp���̺��� deptno�� 30���� ������� empno, ename
--sal,comm���� ����ϵ� comm ���� null�� �ƴϸ� sal+comm
--���� ����ϰ� comm ���� null�̸� sal*0�� ���� ����ϼ���.

SELECT  empno,
        ename,
        sal,
        comm,
        NVL2(comm,sal+comm,sal*0) "nvl2"
FROM emp
WHERE deptno = 30
;
--7499	ALLEN	1600	300	1900
--7521	WARD	1250	500	1750
--7654	MARTIN	1250	1400	2650
--7698	BLAKE	2850		0
--7844	TURNER	1500	0	1500
--7900	JAMES	950		0