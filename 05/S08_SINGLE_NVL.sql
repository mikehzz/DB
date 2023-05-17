SELECT ename,
        sal,
        comm,
        NVL(comm,0) "COMM_0",
        NVL(comm,200) "COMM_200"
FROM emp
WHERE deptno = 30
;
--ALLEN	1600	300	300	300
--WARD	1250	500	500	500
--MARTIN	1250	1400	1400	1400
--BLAKE	2850		0	200
--TURNER	1500	0	0	0
--JAMES	950		0	200