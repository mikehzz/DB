--emp���̺��� deptno�� 10���� ������� �̸��� ��
--9�ڸ��� ����ϵ� ������ ���ڸ����� �ش� �ڸ����� �ش�
--�Ǵ� ���ڰ� ��µǵ��� �ϼ���.

--CLARK6789
--KING56789
--MILLER789

SELECT 
        ename,
        SUBSTR('123456789',LENGTH(ename)+1) "sub_str",
        RPAD(ename,9,SUBSTR('123456789',LENGTH(ename)+1)) AS RPAD
FROM emp
WHERE deptno = 10
;