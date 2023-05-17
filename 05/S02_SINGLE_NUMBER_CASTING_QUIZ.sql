--professor 테이블을 조회하여 201번 학과에 근무하는 교수들의
--이름과, 급여, 보너스, 연봉을 출력하세요.

SELECT name,
        pay,
        bonus,
        TO_CHAR((pay*12)+bonus, '999,999') "ALL"
        

FROM professor
WHERE deptno = 201
;
