--fruit 테이블 출력

SELECT  MAX(DECODE(name,'apple',price)) "APPLE", 
        MAX(DECODE(name,'grape',price)) "GRAPE",
        MAX(DECODE(name,'orange',price)) "ORANGE"
FROM fruit
;