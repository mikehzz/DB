SELECT  sysdate,
        TO_CHAR(SYSDATE, 'YYYY') "YYYY",
        TO_CHAR(SYSDATE, 'RRRR') "RRRR",
        TO_CHAR(SYSDATE, 'YY') "YY",
        TO_CHAR(SYSDATE, 'YEAR') "EARY"
FROM dual
;