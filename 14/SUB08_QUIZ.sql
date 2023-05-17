--emp2 테이블을 사용하여 전체 직원 중 'Section head' 직급의 최소
--연봉자보다 연봉이 높은 사람의 이름과 직급, 연봉을 출력하세요.
--단, 연봉 출력 형식은 아래와 같이 천 단위 구분 기호와 $표시를 하세요.

SELECT  name,
        position,
        TO_CHAR(pay,'$999,999,999') "SALARY"
FROM    emp2 
WHERE pay > ANY (
                    SELECT pay
                    FROM emp2
                    WHERE position = 'Section head'
);



