--emp���̺��� comm�� null�� ��� �ش����
--comm�� 0�� ��� �������
--comm�� 0���� ū ��� ���� ���
--����� empno,ename,comm,"comm_text"

SELECT  empno,
        ename,
        comm,
        CASE WHEN comm is null THEN '�ش����'
             WHEN comm = 0  THEN '�������'
             WHEN comm > 0  THEN '���� : ' || comm
        
        END "comm_text"

FROM emp
;