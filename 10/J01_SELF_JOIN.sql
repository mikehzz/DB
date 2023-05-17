--emp���� ��� �̸�, �Ŵ��� �̸�
--emp ���̺��� ��ġ ���� �ٸ� ���̺� �� �� ó�� ����.
--ORACLE
SELECT  t1.ename "emp_name", 
        t2.ename "mgr_name"
FROM emp t1 , emp t2
WHERE t1.mgr = t2.empno
;

--ANSI
SELECT  t1.ename "emp_name", 
        t2.ename "mgr_name"
FROM emp t1 JOIN emp t2
ON t1.mgr = t2.empno
;

--MANAGER�� ���� ����� ��� : OUTER JOIN
SELECT  t1.ename "emp_name", 
        t2.ename "mgr_name"
FROM emp t1 RIGHT OUTER JOIN emp t2
ON t1.mgr = t2.empno
;

--MANAGER�� ���� ����� ��� : OUTER JOIN
SELECT  t1.ename "emp_name", 
        t2.ename "mgr_name"
FROM emp t1 LEFT OUTER JOIN emp t2
ON t1.mgr = t2.empno
;
