--emp2 테이블을 조회하여 직급별로 해당 직급에서 최대 연봉을 받는 
--직원의 이름과 직급, 연봉을 출력하세요. 연봉 순으로 오름차순 정렬하세요.
SELECT  name,
        position,
        TO_CHAR(pay,'$999,999,999') "SALARY" 
FROM emp2
WHERE (position,pay) IN (
                            SELECT  position, MAX(pay)
                            FROM emp2
                            GROUP BY position
)
ORDER BY 3
;
NAME                           POSITION                       SALARY       
------------------------------ ------------------------------ -------------
Keanu Reeves                   Deputy Section chief             $35,000,000
Gene Hackman                   Section head                     $56,000,000
Tommy Lee Jones                Deputy department head           $60,000,000
Kevin Bacon                    Department head                  $75,000,000
Kurt Russell                   Boss                            $100,000,000
