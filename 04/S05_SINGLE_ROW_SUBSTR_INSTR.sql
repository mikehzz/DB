-- student ���̺��� �����ؼ� �Ʒ� ȭ��� ���� 
--1������ 201���� �л��� �̸��� 
-- ��ȭ��ȣ�� ������ȣ�� ����ϼ���. ��, ������ȣ��
--���ڸ�
-- ���;� �մϴ�.

SELECT name,
        tel,
        SUBSTR(tel,1,INSTR(tel,')')-1) AS "AREA CODE"

FROM student
WHERE deptno1 = 201
;