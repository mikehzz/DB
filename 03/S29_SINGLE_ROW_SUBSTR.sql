SELECT SUBSTR('ABCDE', 3, 2) "3,2",
       SUBSTR('ABCDE', -3, 2) "3,2",
       SUBSTR('ABCDE', -3, 4) "-3,4"
FROM dual
;