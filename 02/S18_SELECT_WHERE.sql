--산술연산
SELECT  empno,
        ename,
        sal,               --sal + 100
        sal + 100 ,
        sal *1.1 as bonus, --10%인상
        deptno
FROM 
        emp
WHERE 
        deptno = 10
;