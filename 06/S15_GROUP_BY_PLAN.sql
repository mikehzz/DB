SELECT  deptno,
        position,
        COUNT(*) cnt, 
        sum(pay) pay_sum

FROM professor
GROUP BY deptno,position
ORDER BY deptno,position
;
--    DEPTNO POSITION                              CNT    PAY_SUM
------------ ------------------------------ ---------- ----------
--       101 a full professor                        1        550
--       101 assistant professor                     1        380
--       101 instructor                              1        270
--       102 a full professor                        1        490
--       102 assistant professor                     1        350
--       102 instructor                              1        250
--       103 a full professor                        1        530
--       103 assistant professor                     1        330
--       103 instructor                              1        290
--       201 a full professor                        1        570
--       201 assistant professor                     1        330
--
--    DEPTNO POSITION                              CNT    PAY_SUM
------------ ------------------------------ ---------- ----------
--       202 assistant professor                     1        310
--       202 instructor                              1        260
--       203 a full professor                        1        500
--       301 assistant professor                     1        290
--       301 instructor                              1        220
--
--16개 행이 선택되었습니다. 