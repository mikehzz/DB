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
--col PLAN_TABLE_OUTPUT format a80 -- ��� FORMAT
--SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY()); --DBMS_XLAN.DISPLAY() ���ν����� ���� �ؽ�Ʈ ���·� ���

