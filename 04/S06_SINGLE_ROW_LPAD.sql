--student ���̺��� 1������ 201���� �а� �л����� id��
--�� 10�ڸ��� ����ϵ� ���� ���ڸ��� '*'��ȣ�� ä�켼��.

SELECT  
        name,
        id,
        LPAD(id, 10,'*') "lpad"
        
FROM student
WHERE deptno1 = 201
;