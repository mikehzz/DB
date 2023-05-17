SELECT  ROUND(987.655,2) "ROUND1",--소수 3째자리에서 반올림
        ROUND(987.655,0) "ROUND2",--소수 점이하 첫 번째에서 반올림
        ROUND(987.655,-1) "ROUND3"--정수 뒤에서 첫 번째에서 반올림
FROM dual
;