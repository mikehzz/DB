--emp ���̺��� 20�� �μ��� �Ҽӵ� �������� �̸���
--3~4��° ���ڸ� '-'�� �����ϼ���.

SELECT  ename,
        REPLACE(ename,SUBSTR(ename,3,2),'--') "REPLACE"
FROM emp
WHERE deptno=20
;