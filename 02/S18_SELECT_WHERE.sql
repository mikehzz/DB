--�������
SELECT  empno,
        ename,
        sal,               --sal + 100
        sal + 100 ,
        sal *1.1 as bonus, --10%�λ�
        deptno
FROM 
        emp
WHERE 
        deptno = 10
;