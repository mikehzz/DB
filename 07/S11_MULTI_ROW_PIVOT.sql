SELECT * FROM (SELECT  deptno, job FROM emp )
PIVOT (COUNT(job) FOR job IN ('CLERK' AS "CLERK"
                             ,'SALESMAN' AS "SALESMAN"
                             ,'ANALYST' AS "ANALYST"
                             ,'MANAGER' AS "MANAGER"
                             ,'PRESIDENT' AS "PRESIDENT"
                             )
)
ORDER BY 1 --�÷����� ����� �� ����. �÷������� ���� ����
;