--�л� ���̺�(student)�� �а� ���̺�(department)�� ����Ͽ� �л��̸�
--1���� �а� ��ȣ(deptno1),1���� �а� �̸��� ����ϼ���(ANSI Join
--������ Oracle Join �������� ���� SQL�� �ۼ��ϼ���.)

SELECT  t1.name stud_name,
        t2.name prof_name
FROM student t1 JOIN professor t2
ON t1.deptno1 = t2.deptno --�����Ͱ� �ִ� ���� ����Ų��.
;