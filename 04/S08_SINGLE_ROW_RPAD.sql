--emp���̺��� �Ʒ��� ���� deptno�� 10���� �������
--ename�� 10�ڸ��� ����ϵ� ������ ���ڸ����� '-'��
--ä�켼��.
SELECT  
        ename,
        RPAD(ename, 10,'-') "Rpad"
        
FROM emp
WHERE deptno = 10
;