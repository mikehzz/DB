--emp 테이블을 사용하여 직원들의 급여와 전체 급여의 누적 급여금액을 출력
--하세요. 단, 급여를 오름차순으로 정렬해서 출력하세요.

SELECT  deptno,
        ename,
        sal,
        SUM(sal) OVER(ORDER BY sal)
        
FROM emp
ORDER BY sal
;