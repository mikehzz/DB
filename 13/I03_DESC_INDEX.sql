--SELECT  name,
--        pay
--FROM professor
--WHERE pay > 0
--;

CREATE INDEX IDX_PROF_PAY
ON professor(pay DESC);

SELECT  name,
        pay
FROM professor
WHERE pay > 0
;