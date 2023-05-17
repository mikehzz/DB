--GROUP BY ROLLUP(DEPTNO, JOB); //M+1
--1. DEPTNO �׷� ����
--2. DEPTNO, JOB �׷� ����
--3. ��ü

--ROLLUP(DEPTNO, JOB) ������ �ǹ̸� ������ ���� !

SELECT  deptno,
        ROUND(AVG(NVL(sal,0)),1) avg_sal, 
        COUNT(*) cnt_emp

FROM emp
GROUP BY ROLLUP(deptno,job)
;
    DEPTNO    AVG_SAL    CNT_EMP
---------- ---------- ----------
        10       1300          1
        10       2450          1
        10       5000          1
        10     2916.7          3
        20        800          1
        20       3000          2
        20       2975          1
        20     2443.8          4
        30        950          1
        30       2850          1
        30       1400          4

    DEPTNO    AVG_SAL    CNT_EMP
---------- ---------- ----------
        30     1566.7          6
               2148.1         13

13�� ���� ���õǾ����ϴ�.