--EMP2 ���̺�� dept2 ���̺��� ��ȸ�Ͽ� �� �μ��� ��� ������ ���ϰ�
--���߿��� ��� ������ ���� ���� �μ��� ��� �������� ���� �޴� ����
--���� �μ���, ������, ������ ����ϼ���.

SELECT  EMPNO,
        name,
        TO_CHAR(pay,'$999,999,999') SALARY
FROM emp2
WHERE pay < ALL (
                    SELECT  AVG(pay)
                    FROM emp2
                    GROUP BY deptno
)
ORDER BY 3
;
