SELECT deptno no,
       job,
       AVG(NVL(sal,0)) "AVG_SAL"
FROM emp
GROUP BY no job
ORDER BY deptno, job
;
--¿À·ù