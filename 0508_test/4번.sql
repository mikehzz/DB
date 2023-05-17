--[¹®Ç×4]

SELECT  t2.dname,
        t1.ename,
        t1.sal,
        SUM(t1.sal) OVER(PARTITION by t1.deptno) "SUM_DEPT",
        ROUND(RATIO_TO_REPORT(t1.sal) OVER(PARTITION by t1.deptno)*100,2) "%R"
        
        
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
ORDER BY 1,2
;
