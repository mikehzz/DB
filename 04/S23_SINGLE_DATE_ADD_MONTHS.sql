SELECT  SYSDATE,
        ADD_MONTHS(sysdate, +2),
        ADD_MONTHS(sysdate, -2)
FROM dual
;
        