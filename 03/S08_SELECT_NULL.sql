--
SELECT ename,
        sal,
        comm,
        sal*12+comm --comm Į���� null�� ���� : null + sal -> null
FROM emp
;