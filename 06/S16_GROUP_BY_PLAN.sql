--1. EXPLAN PLAN FOR
--   SQL

SELECT  deptno,
        null job,
        ROUND(AVG(NVL(sal,0)),1) avg_sal, 
        COUNT(*) cnt_emp
FROM emp
GROUP BY deptno

UNION ALL
SELECT deptno, 
       job,
       ROUND(AVG(NVL(sal,0)),1) avg_sal,
       COUNT(*) cnt_emp
FROM emp
GROUP BY deptno, job

UNION ALL
SELECT null deptno, 
       null job,
       ROUND(AVG(NVL(sal,0)),1) avg_sal, COUNT(*) cnt_emp
FROM emp
ORDER BY 1,2
;
--2.
--col PLAN_TABLE_OUTPUT format a80 -- 출력 FORMAT
--SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY()); --DBMS_XLAN.DISPLAY() 프로시저를 통해 텍스트 형태로 출력

