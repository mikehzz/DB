--CTRL + /
--원하는 조건만 골라내기
--SELECT [COLUMN OR EXPRESSION]
--FROM [TABLE OR VIEW]
--WHERE 원하는 조건
--;

SELECT t1.empno,
        t1.ename
FROM emp t1
WHERE t1.empno = 7900
;