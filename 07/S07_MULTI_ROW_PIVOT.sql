SELECT  max(DECODE(day, 'SUN', dayno)) SUN,
        max(DECODE(day, 'MON', dayno)) MON,
        max(DECODE(day, 'TUE', dayno)) TUE,
        max(DECODE(day, 'WED', dayno)) WED,
        max(DECODE(day, 'THU', dayno)) THU,
        max(DECODE(day, 'FRI', dayno)) FRI,
        max(DECODE(day, 'SAT', dayno)) SAT
        
FROM cal
;
--29 �� ���ڸ��� ASCII����
--DAYNO�� ���ڷ� ASCII(
