--EMP2 ���̺��� ��ȸ�ؼ� ������ �߿���
--�ڽ��� ���� ��տ����� ���ų� ���� �޴� ������� 
--�̸��� ����, ���� ������ ����ϼ���.

SELECT  t1.name,
        t1.position,
        t1.pay
FROM emp2 t1
WHERE pay >= (
                SELECT AVG(pay)
                FROM emp2 t2
                WHERE t1.position = t2.position
);


