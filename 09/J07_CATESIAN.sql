--SELECT empno, ename,job,sal
--FROM emp
--WHERE deptno = 10
--;
--������ ������ 5�� ����
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