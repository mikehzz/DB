--emp 테이블에서 deptno가 30번인 사원들을 조회하여 comm
--값이 있을 경우 'Exist'을 출력하고 comm 값이 null
--일 경우 'NULL'을 출력하세요.

SELECT  empno,
        ename,
        comm,
        NVL2(comm,'Exist','NULL') "nvl2"
FROM emp
WHERE deptno = 30
;
--7499	ALLEN	300	Exist
--7521	WARD	500	Exist
--7654	MARTIN	1400	Exist
--7698	BLAKE		NULL
--7844	TURNER	0	Exist
--7900	JAMES		NULL