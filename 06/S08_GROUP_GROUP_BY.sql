SELECT  deptno,
        AVG(NVL(sal,0))
FROM emp
Group BY deptno
;
    DEPTNO AVG(NVL(SAL,0))
---------- ---------------
        30      1566.66667
        10      2916.66667
        20         2443.75