--student ���̺��� tel �÷��� ����Ͽ� ������ �ο����� ��ü ��� ����
--�ϴ� ������ ����ϼ���.
--��, 02-SEOUL, 031-GYEONGGI, 051-BUSAN, 052-ULSAN,053-DAEGU,
--055-GYEONGNAM���� ����ϼ���.

SELECT  
        COUNT(AREA_CODE) || 'EA ('||
        COUNT(AREA_CODE)/COUNT(AREA_CODE)*100 ||
        '%) ' AS "SEOUL",
        
        COUNT(DECODE(AREA_CODE,'02','0',NULL) ) || 'EA (' ||
        COUNT(DECODE(AREA_CODE,'02','0',NULL) )/COUNT(AREA_CODE)*100 ||
        '%) ' AS "SEOUL",
        
        COUNT(DECODE(AREA_CODE,'031','0',NULL)) || 'EA (' ||
        COUNT(DECODE(AREA_CODE,'031','0',NULL) )/COUNT(AREA_CODE)*100 ||
        '%) ' AS "GYEONGGI",
        
        COUNT(DECODE(AREA_CODE,'051','0',NULL)) || 'EA (' ||
        COUNT(DECODE(AREA_CODE,'051','0',NULL) )/COUNT(AREA_CODE)*100 ||
        '%) ' AS "BUSAN",
        
        COUNT(DECODE(AREA_CODE,'052','0',NULL)) || 'EA (' ||
        COUNT(DECODE(AREA_CODE,'052','0',NULL) )/COUNT(AREA_CODE)*100 ||
        '%) ' AS "ULSAN",
        
        COUNT(DECODE(AREA_CODE,'053','0',NULL)) || 'EA (' ||
        COUNT(DECODE(AREA_CODE,'053','0',NULL) )/COUNT(AREA_CODE)*100 ||
        '%) ' AS "DAEGU",
        
        COUNT(DECODE(AREA_CODE,'055','0',NULL)) || 'EA ('||
        COUNT(DECODE(AREA_CODE,'055','0',NULL) )/COUNT(AREA_CODE)*100 ||
        '%) ' AS "GYEONGNAM"
FROM(
    SELECT  tel,
            INSTR(tel,')')-1,
            SUBSTR(tel,1,INSTR(tel,')')-1) AREA_CODE
    FROM student
)
;