--emp 테이블을 조회하여 comm값을 가지고 있는 사람들의 empno
--ename,hiredate, 총 연봉. 15% 인상 후 연봉을 출력하세요.

SELECT  empno,
        ename,
        TO_CHAR(hiredate, 'YYYY-MM-DD') "hiredate",
        TO_CHAR((sal*12)+comm, '$999,999') "sal",
        TO_CHAR((sal*12)*1.15, '$999,999') "15% UP"
        
FROM emp

WHERE NOT comm is null 
;
--7499	ALLEN	1981-02-20	  $19,500	  $22,080
--7521	WARD	1981-02-22	  $15,500	  $17,250
--7654	MARTIN	1981-09-28	  $16,400	  $17,250
--7844	TURNER	1981-09-08	  $18,000	  $20,700