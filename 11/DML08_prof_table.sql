SELECT profno, name, bonus,position
FROM professor
WHERE position = 'assistant professor'
;

UPDATE professor
   SET bonus = 200
 WHERE position = 'assistant professor'
;

--commit;