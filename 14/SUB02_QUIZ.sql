--student ���̺�� department ���̺��� ����Ͽ� 'Anthorny Hopkins'
--�л��� 1 ����(deptno1)�� ������ �л����� �̸��� 1���� �̸��� ����ϼ���.
SELECT  t1.name,t2.dname
FROM student t1, department t2
WHERE t1.deptno1 =t2.deptno
AND t1.deptno1 = (
                    SELECT deptno1
                    FROM student
                    WHERE name = 'Anthony Hopkins'
)
; 