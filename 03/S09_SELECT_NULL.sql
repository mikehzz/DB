-- NULL 연산자는 별도로 있음
-- comm = NULL (x)
-- comm IS NULL (o)
SELECT ename,
        sal,
        comm 
FROM emp
WHERE comm IS NULL 
;