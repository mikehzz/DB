SELECT  SYSDATE,
        TO_DATE('2023/04/20') "YYYY/MM/DD",
        TO_DATE('2023-04-20') "YYYY-MM-DD",
        TO_DATE('20230420') "YYYYMMDD",        
        TO_DATE('2023/04/20')+7 "YYYY/MM/DD+7"        
        
FROM dual
;
--23/04/19	23/04/20	23/04/20	23/04/20	23/04/27