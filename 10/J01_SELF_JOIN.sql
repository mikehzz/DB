--emp에서 사원 이름, 매니저 이름
--emp 테이블을 마치 서로 다른 테이블 인 것 처럼 조인.
--ORACLE
SELECT  t1.ename "emp_name", 
        t2.ename "mgr_name"
FROM emp t1 , emp t2
WHERE t1.mgr = t2.empno
;

--ANSI
SELECT  t1.ename "emp_name", 
        t2.ename "mgr_name"
FROM emp t1 JOIN emp t2
ON t1.mgr = t2.empno
;

--MANAGER가 없는 사원도 출력 : OUTER JOIN
SELECT  t1.ename "emp_name", 
        t2.ename "mgr_name"
FROM emp t1 RIGHT OUTER JOIN emp t2
ON t1.mgr = t2.empno
;

--MANAGER가 없는 사원도 출력 : OUTER JOIN
SELECT  t1.ename "emp_name", 
        t2.ename "mgr_name"
FROM emp t1 LEFT OUTER JOIN emp t2
ON t1.mgr = t2.empno
;
