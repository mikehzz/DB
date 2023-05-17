SELECT  COUNT(comm),
        SUM(comm),
        AVG(comm)
FROM emp
;
--전체 건수가 아닌 4건으로 평균 계산
--4	2200	550