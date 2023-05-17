--emp 테이블을 사용하여 사원 중에서 급여(sal)와 보너스(bonus)를 합친 금액이
--가장 많은 경우와 가장 적은 경우, 평균 금액을 구하세요. 단, 보너스가 없을 경우
--는 보너스를 0으로 계산하고 출력 금액은 모두 소수점 첫째 자리까지만 나오게 하세요.

SELECT  
        MAX(NVL(sal,0)+NVL(comm,0)) AS "MAX",
        MIN(NVL(sal,0)+NVL(comm,0)) AS "MIN",
        ROUND(AVG(NVL(sal,0)+NVL(comm,0)),1) "AVG"

FROM emp
;
       MAX        MIN        AVG
---------- ---------- ----------
      5000        800     2317.3