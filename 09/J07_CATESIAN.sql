--SELECT empno, ename,job,sal
--FROM emp
--WHERE deptno = 10
--;
--임의의 데이터 5건 추출
SELECT level
FROM dual
CONNECT BY level <= 5
;
--     LEVEL
------------
--         1
--         2
--         3
--         4
--         5