--SELECT INSTR('Hello world world', 'world',1,2) AS result
--FROM dual
--;
--결과 13

SELECT INSTR('Hello world', 'world99') AS result
FROM dual
;
-- 결과 0