--emp ���̺��� 10�� �μ��� ���� �������� ����� �̸�,�޿�
--,�ش� �μ� ���� �޿� ������
--����ϼ���

SELECT  deptno, ename, sal,
        RANK() OVER(ORDER BY sal ASC) RANK_ASC 

FROM emp
WHERE deptno = 10
;
    DEPTNO ENAME             SAL   RANK_ASC
---------- ---------- ---------- ----------
        10 MILLER           1300          1
        10 CLARK            2450          2
        10 KING             5000          3