-- 부서별 평균 급여와 사원수
-- 부서와 직업별 평균 급여와 사원수
-- 직업별 평균 급여와 사원수
-- 전체 사원의 평균 급여와 사원수

--GROUP BY CUBE(deptno, job) ; 2*n
--1. DEPTNO 그룹 집계
--2. JOB 그룹 집계
--3. DEPTNO, JOB 그룹 집계
--4. 전체 그룹 집계

SELECT  deptno, 
        job,
        ROUND(AVG(NVL(sal,0)),1) avg_sal,
        COUNT(*) cnt_emp
        
FROM emp
GROUP BY CUBE(deptno, job)
ORDER BY deptno,job
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
           ANALYST         3000          2
           CLERK         1016.7          3
           MANAGER       2758.3          3
           PRESIDENT       5000          1
           SALESMAN        1400          4
                         2148.1         13

18개 행이 선택되었습니다. 