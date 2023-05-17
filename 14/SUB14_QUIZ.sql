--EMP2 테이블을 조회해서 직원들 중에서
--자신의 직급 평균연봉과 같거나 많이 받는 사람들의 
--이름과 직급, 현재 연봉을 출력하세요.

SELECT  t1.name,
        t1.position,
        t1.pay
FROM emp2 t1
WHERE pay >= (
                SELECT AVG(pay)
                FROM emp2 t2
                WHERE t1.position = t2.position
);


