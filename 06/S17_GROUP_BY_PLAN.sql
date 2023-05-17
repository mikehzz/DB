-- 부서별 평균 급여와 사원수
-- 부서와 직업별 평균 급여와 사원수
-- 직업별 평균 급여와 사원수
-- 전체 사원의 평균 급여와 사원수


--직업별 평균 급여와 사원수
SELECT  deptno,
        null job,
        ROUND(AVG(NVL(sal,0)),1) avg_sal, 
        COUNT(*) cnt_emp
FROM emp
GROUP BY deptno

UNION ALL
SELECT null deptno, 
       job,
       ROUND(AVG(NVL(sal,0)),1) avg_sal,
       COUNT(*) cnt_emp
FROM emp
GROUP BY job

UNION ALL
SELECT null deptno, 
       null job,
       ROUND(AVG(NVL(sal,0)),1) avg_sal, COUNT(*) cnt_emp
FROM emp
ORDER BY 1,2
;