-- student ���̺��� birthday �÷��� ����Ͽ� ������ 1����
-- �л��� �̸��� birthday�� �Ʒ� ȭ��� ���� ����ϼ���.

SELECT  studno,
        name,
        TO_CHAR(birthday,'YY/MM/DD') AS birthday
FROM student
WHERE TO_CHAR(birthday,'MM') = '01'
;
