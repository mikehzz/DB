-- student ���̺��� �Ʒ��� ���� deptno1�� 101���� �а�
-- �л����� �̸��� ��ȭ��ȣ�� ��ȭ��ȣ���� ������ȣ�� ������ 
-- ������ ������ ��ȣ�� *�� ǥ���ؼ� ����ϼ���.

SELECT  name,
        tel,
        REPLACE(tel,SUBSTR(tel,INSTR(tel,'-')+1,4),'****') AS "REPLACE"

FROM student
WHERE deptno1 = 101
;