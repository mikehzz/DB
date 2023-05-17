--Emp2 테이블과 p_grade 테이블을 조회하여 사원들의 이름과 나이,현재
--직급, 예상 직급을 출력하세요. 예상 직급은 나이로 계산하며 나이가 받
--아야 하는 직급을 의미한다. 나이는 오늘(sysdate)을 기준으로 하되
--trunc로 소수점 이하는 절삭해서 계산하세요.

SELECT  t1.name,
        TRUNC(MONTHS_BETWEEN('2023/04/25', t1.birthday)/12) "AGE",
        t1.position "CURR_POSITION",
        t2.position "BE POSITION"    
FROM emp2 t1 , p_grade t2

WHERE TRUNC(MONTHS_BETWEEN('2023/04/25', t1.birthday)/12) >= t2.s_age(+)
AND TRUNC(MONTHS_BETWEEN('2023/04/25', t1.birthday)/12) <= t2.e_age(+)
;


