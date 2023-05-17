--emp테이블에서 sal >= 2000 그리고 sal <=3000보다 작은 사람들의
--empno, ename, sal

SELECT 
        empno,
        ename,
        sal
FROM 
        emp
WHERE sal BETWEEN 2000 AND 3000     --작은 조건이 앞에 큰 값이 AND뒤에
--ORDER BY sal
;   