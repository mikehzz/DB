-- NULL �����ڴ� ������ ����
-- comm = NULL (x)
-- comm IS NULL (o)
SELECT ename,
        sal,
        comm 
FROM emp
WHERE comm IS NULL 
;