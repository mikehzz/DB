--SELECT ROWNUM, ename
--FROM emp
--ORDER BY ename
--;
--특정 데이터의 순위 확인하기
SELECT RANK('SMITH') WITHIN GROUP (ORDER BY ename) "RANK"
FROM emp
;
      RANK
----------
        11