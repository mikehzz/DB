--emp ���̺��� ����Ͽ� �������� �޿��� ��ü �޿��� ���� �޿��ݾ��� ���
--�ϼ���. ��, �޿��� ������������ �����ؼ� ����ϼ���.

SELECT  deptno,
        ename,
        sal,
        SUM(sal) OVER(ORDER BY sal)
        
FROM emp
ORDER BY sal
;