--Professor ���̺�� department ���̺��� ��ȸ�Ͽ� 'Meg Ryan'����
--���� ���߿� �Ի��� ����� �̸��� �Ի���, �а����� ����ϼ���.

SELECT  t1.name,
        TO_CHAR(t1.hiredate,'yyyy-mm-dd') "HIREDATE",
        t2.dname "dept_name"
FROM professor t1, department t2
WHERE t1.deptno =t2.deptno
AND t1.hiredate > (
                    SELECT hiredate
                    FROM professor
                    WHERE name = 'Meg Ryan'
);



desc Professor;
desc department;
