--OS: 요일 표기가 서로 다름
--한글 windows : 월
--영문:MON
SELECT sysdate,
       NEXT_DAY(sysdate,'화')
FROM dual
;