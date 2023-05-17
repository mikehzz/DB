--professor 테이블에서 각 교수들의 급여를 구하고 각 교수의 급여액이
--전체 교수의 급여 합계에서 차지하는 비율을 출력하세요.

SELECT  deptno,
        name,
        pay,
        SUM(pay) OVER() "TOTAL PAY",
        ROUND(RATIO_TO_REPORT(pay) over()*100,2) "RATIO %"
FROM professor
ORDER BY 5 desc
;