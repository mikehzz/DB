--student ���̺��� 1 ����(deptno1)�� 201���� �а��� ��� ������
--���� �����԰� ���� �л����� �̸��� �����Ը� ����ϼ���.

SELECT  name,
        weight
FROM student
WHERE weight>(SELECT AVG(weight)
            FROM student
            WHERE deptno1 =201
);
