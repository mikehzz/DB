--student���̺� ���� 1������ 101���� �л����� 
--tel�÷��� ��ȸ�Ͽ�
--3�� ù ��°�� ������ ��ġ�� �̸��� 
--��ȭ��ȣ�� �Բ� ��� �ϼ���.

SELECT name,
        tel,
        INSTR(tel, '3') AS result
FROM student
WHERE deptno1=101
;