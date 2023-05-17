SELECT  ROWNUM, --출력하는 순서대로 번호를 메긴다.
               CEIL(ROWNUM/5) AS RNUM,
                ename
        FROM emp
;
--SELECT *
--FROM(
--        SELECT  ROWNUM, --출력하는 순서대로 번호를 메긴다.
--               CEIL(ROWNUM/5) AS RNUM,
--                ename
--        FROM emp
--)
--WHERE RNUM=2
--;