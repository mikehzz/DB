--professor 테이블에서 201번 학과 교수들의 이름과 급여
--bonus, 총 연봉을 출력하세요.
--단, 총 연봉은 (pay*12+bonus)로 계산하고 bonus가 없는
--교수는 0으로 계산하세요.

SELECT  profno,
        name,
        pay,
        NVL(bonus,0),
        TO_CHAR((pay*12)+NVL(bonus,0),'999,999') "TOTAL"
        
FROM professor
WHERE deptno = 201
;
--4001	Meryl Streep	570	130	   6,970
--4002	Susan Sarandon	330	0	   3,960