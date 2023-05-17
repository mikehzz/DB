SELECT  max(DECODE(day, 'SUN', dayno)) SUN,
        max(DECODE(day, 'MON', dayno)) MON,
        max(DECODE(day, 'TUE', dayno)) TUE,
        max(DECODE(day, 'WED', dayno)) WED,
        max(DECODE(day, 'THU', dayno)) THU,
        max(DECODE(day, 'FRI', dayno)) FRI,
        max(DECODE(day, 'SAT', dayno)) SAT
        
FROM cal
GROUP BY weekno 
ORDER BY weekno 
;
SU MO TU WE TH FR SA
-- -- -- -- -- -- --
1  2  3  4  5  6  7 
8  9  10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31      