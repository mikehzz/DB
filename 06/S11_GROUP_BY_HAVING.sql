SELECT deptno,
        AVG(NVL(sal,0))
FROM emp
WHERE deptno > 10
GROUP BY deptno
HAVING AVG(NVL(sal,0)) > 2000
;

--having절은 group by 앞뒤로 사용 가능!
--GROUP BY조건이 아닌 일반 조건 WHERE 사용 가능!
    DEPTNO AVG(NVL(SAL,0))
---------- ---------------
        20         2443.75

