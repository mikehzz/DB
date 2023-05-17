-- INSTR('문자열' 또는 컬럼, 찾는 글자, 시작위치, 몇 번째인지(DEFAULT 1)
-- 문자열 'Hello World!'엣 'World'의 시작 위치를 찾습니다.
SELECT INSTR('Hello world', 'world') AS result
FROM dual
;
