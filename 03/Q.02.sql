-- Q2. emp���̺��� �μ���ȣ�� 10,20�̰� 
-- sal 2000 �̻��� ����� ������ ����ϼ���.
-- (���, �̸�, ����, �޿�, �μ���ȣ)

SELECT empno, ename, job, sal, deptno

FROM emp
WHERE sal >= 2000
AND deptno in (10,20)
;