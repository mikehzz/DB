--EMP2 테이블과 dept2 테이블을 조회하여 각 부서별 평균 연봉을 구하고
--그중에서 평균 연봉이 가장 적은 부서의 평균 연봉보다 적게 받는 직원
--들의 부서명, 직원명, 연봉을 출력하세요.

SELECT  EMPNO,
        name,
        TO_CHAR(pay,'$999,999,999') SALARY
FROM emp2
WHERE pay < ALL (
                    SELECT  AVG(pay)
                    FROM emp2
                    GROUP BY deptno
)
ORDER BY 3
;
