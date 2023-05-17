--부서와 직업별 평균 급여 및 사원 수와 부서별 평균 급여와
--사원 수, 전체 사원의 평균 급여와 사원수를 구하세요.

--부서와 직업별 평균 급여
--부서별 평균 급여와 사원수
--전체 사원의 평균 급여와 사원수

--1. GROUP BY, UNION ALL로 구하기
--2. ROLLUP()
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
    DEPTNO JOB          AVG_SAL    CNT_EMP
---------- --------- ---------- ----------
        10 CLERK           1300          1
        10 MANAGER         2450          1
        10 PRESIDENT       5000          1
        10               2916.7          3
        20 ANALYST         3000          2
        20 CLERK            800          1
        20 MANAGER         2975          1
        20               2443.8          4
        30 CLERK            950          1
        30 MANAGER         2850          1
        30 SALESMAN        1400          4

    DEPTNO JOB          AVG_SAL    CNT_EMP
---------- --------- ---------- ----------
        30               1566.7          6
                         2148.1         13

13개 행이 선택되었습니다. 