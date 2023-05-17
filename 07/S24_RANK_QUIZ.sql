SELECT  total||'EA' AS TOTAL,
        JAN  ||'EA' AS JAN,
        FEB  ||'EA' AS FEB,
        MAR  ||'EA' AS MAR,
        MAY  ||'EA' AS MAY,
        JUN  ||'EA' AS JUN,
        JUL  ||'EA' AS JUL,
        AUG  ||'EA' AS AUG,
        SEP  ||'EA' AS SEP,
        OCT  ||'EA' AS OCT,
        NOV  ||'EA' AS NOV,
        DEC  ||'EA' AS DEC
        
        
FROM (
    SELECT * FROM(SELECT TO_CHAR(birthday, 'MM') BIRTH, COUNT(studno) OVER() total FROM student) 
    PIVOT(
        COUNT (BIRTH) FOR BIRTH IN ( '01'AS JAN
                                   ,'02'AS FEB
                                    ,'03'AS MAR
                                    ,'04'AS APR
                                    ,'05'AS MAY
                                    ,'06'AS JUN
                                    ,'07'AS JUL
                                    ,'08'AS AUG
                                    ,'09'AS SEP
                                    ,'10'AS OCT
                                    ,'11'AS NOV
                                    ,'12'AS DEC

        )
    )
)
;