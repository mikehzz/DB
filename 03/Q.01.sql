-- Q1. emp���̺��� �μ���ȣ�� 30���̰�, ����(job)�� 'SALESMAN'�� ������� ����ϼ���
-- ����(job)�� 'SALESMAN'�� ������� ����ϼ���
-- (���, �̸�, ����, �޿�, �μ���ȣ)

SELECT empno, ename, job, sal, deptno

FROM emp
WHERE deptno = 30
AND job = 'SALESMAN'
;