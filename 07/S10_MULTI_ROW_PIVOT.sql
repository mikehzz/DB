--emp���̺��� �μ����� �� ���޺� �ο��� ������� ����ϱ�

SELECT  deptno,
        COUNT(DECODE(job, 'CLERK','0',null)) "CLERK",
        COUNT(DECODE(job, 'SALESMAN','0',null)) "SALESMAN",
        COUNT(DECODE(job, 'ANALYST','0',null)) "ANALST",
        COUNT(DECODE(job, 'MANAGER','0',null)) "MANAGER",
        COUNT(DECODE(job, 'PRESIDENT','0',null)) "PRESIDENT"
FROM emp
GROUP BY deptno
ORDER BY deptno ASC
;