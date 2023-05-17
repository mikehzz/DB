SELECT  h_year,
        DECODE(h_month,1,h_month,NULL) M01,
        DECODE(h_month,2,h_month,NULL) M02,
        DECODE(h_month,3,h_month,NULL) M03,
        DECODE(h_month,4,h_month,NULL) M04,
        DECODE(h_month,5,h_month,NULL) M05,
        DECODE(h_month,6,h_month,NULL) M06,
        DECODE(h_month,7,h_month,NULL) M07,
        DECODE(h_month,8,h_month,NULL) M08,
        DECODE(h_month,9,h_month,NULL) M09,
        DECODE(h_month,10,h_month,NULL) M10,
        DECODE(h_month,11,h_month,NULL) M11,
        DECODE(h_month,12,h_month,NULL) M12
        
FROM tb_pivot
;