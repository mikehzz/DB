--1. 지역번호 찾기

SELECT  
        COUNT(AREA_CODE) TOTAL,
        COUNT(DECODE(AREA_CODE,'02','0',NULL) )"SEOUL",
        COUNT(DECODE(AREA_CODE,'031','0',NULL)) "GYEONGGI",
        COUNT(DECODE(AREA_CODE,'051','0',NULL)) "BUSAN",
        COUNT(DECODE(AREA_CODE,'052','0',NULL)) "ULSAN",
        COUNT(DECODE(AREA_CODE,'053','0',NULL)) "DAEGU",
        COUNT(DECODE(AREA_CODE,'055','0',NULL)) "GYEONGNAM"
FROM(
    SELECT  tel,
            INSTR(tel,')')-1,
            SUBSTR(tel,1,INSTR(tel,')')-1) AREA_CODE
    FROM student
)
;
     TOTAL      SEOUL   GYEONGGI      BUSAN      ULSAN      DAEGU  GYEONGNAM
---------- ---------- ---------- ---------- ---------- ---------- ----------
        20          6          2          4          0          2          6