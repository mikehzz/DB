SELECT  COUNT(*)||'EA' TOTAL,
        COUNT(DECODE(TO_CHAR(birthday,'MM'),'01',0,NULL))||'EA' JAN,
        COUNT(DECODE(TO_CHAR(birthday,'MM'),'02',0,NULL))||'EA' FEB,
        COUNT(DECODE(TO_CHAR(birthday,'MM'),'03',0,NULL))||'EA' MAR,
        COUNT(DECODE(TO_CHAR(birthday,'MM'),'04',0,NULL))||'EA' APR,
        COUNT(DECODE(TO_CHAR(birthday,'MM'),'05',0,NULL))||'EA' MAY,
        COUNT(DECODE(TO_CHAR(birthday,'MM'),'06',0,NULL))||'EA' JUN,
        COUNT(DECODE(TO_CHAR(birthday,'MM'),'07',0,NULL))||'EA' JUL,
        COUNT(DECODE(TO_CHAR(birthday,'MM'),'08',0,NULL))||'EA' AUG,
        COUNT(DECODE(TO_CHAR(birthday,'MM'),'09',0,NULL))||'EA' SEP,
        COUNT(DECODE(TO_CHAR(birthday,'MM'),'10',0,NULL))||'EA' OCT,
        COUNT(DECODE(TO_CHAR(birthday,'MM'),'11',0,NULL))||'EA' NOV,
        COUNT(DECODE(TO_CHAR(birthday,'MM'),'12',0,NULL))||'EA' DEC

FROM student;