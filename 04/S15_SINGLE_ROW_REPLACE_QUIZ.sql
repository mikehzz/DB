--student ���̺��� 1������ 102���� �л����� �̸���
--��ȭ��ȣ, ��ȭ��ȣ���� ���� �κи� '*'ó���� ����ϼ���.
--��, ��� ������ 3�ڸ��� �����մϴ�.

SELECT  name,
        tel,
        REPLACE(tel,
                    SUBSTR(tel,INSTR(tel,')')+1,3),
                    '***') "re_sub"
FROM student
WHERE deptno1 = 102
;