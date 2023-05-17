--EMP���̺��� �μ����� ��� �޿��� ����ϰ�,
--�̸� �̿��� ��� �޿����� ���� �޿��� �޴� �������
--�̸��� �μ���, �޿��� ��ȸ�ϴ� �����̴�.

--�μ��� ��� �޿�
WITH avg_salaries AS (
    SELECT deptno, ROUND(AVG(NVL(sal,0)),1) avg_sal
    FROM emp
    GROUP BY deptno
),
high_salary_emp AS (
    SELECT t1.empno, t2.dname, t3.avg_sal
    FROM emp t1, dept t2, avg_salaries t3
    WHERE t1.deptno = t2.deptno
    AND t1.deptno  = t3.deptno
    AND t1.sal > t3.avg_sal
)
SELECT *
FROM high_salary_emp
;




