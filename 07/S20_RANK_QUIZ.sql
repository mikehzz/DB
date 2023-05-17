--emp 테이블을 조회하여 empno, ename, sal, deptno 같은 부서 내 job별로
--급여 순위를 출력 하세요.

SELECT  empno,
        ename,
        sal,
        deptno,
        job,
        RANK() OVER(PARTITION BY deptno, job ORDER BY sal DESC) "RANK" 
FROM emp
;
     EMPNO ENAME             SAL     DEPTNO JOB             RANK
---------- ---------- ---------- ---------- --------- ----------
      7902 FORD             3000         20 ANALYST            1
      7788 SCOTT            3000         20 ANALYST            1
      7934 MILLER           1300         10 CLERK              1
      7900 JAMES             950         30 CLERK              2
      7369 SMITH             800         20 CLERK              3
      7566 JONES            2975         20 MANAGER            1
      7698 BLAKE            2850         30 MANAGER            2
      7782 CLARK            2450         10 MANAGER            3
      7839 KING             5000         10 PRESIDENT          1
      7499 ALLEN            1600         30 SALESMAN           1
      7844 TURNER           1500         30 SALESMAN           2

     EMPNO ENAME             SAL     DEPTNO JOB             RANK
---------- ---------- ---------- ---------- --------- ----------
      7521 WARD             1250         30 SALESMAN           3
      7654 MARTIN           1250         30 SALESMAN           3

13개 행이 선택되었습니다. 


     EMPNO ENAME             SAL     DEPTNO JOB             RANK
---------- ---------- ---------- ---------- --------- ----------
      7934 MILLER           1300         10 CLERK              1
      7782 CLARK            2450         10 MANAGER            1
      7839 KING             5000         10 PRESIDENT          1
      7788 SCOTT            3000         20 ANALYST            1
      7902 FORD             3000         20 ANALYST            1
      7369 SMITH             800         20 CLERK              1
      7566 JONES            2975         20 MANAGER            1
      7900 JAMES             950         30 CLERK              1
      7698 BLAKE            2850         30 MANAGER            1
      7499 ALLEN            1600         30 SALESMAN           1
      7844 TURNER           1500         30 SALESMAN           2

     EMPNO ENAME             SAL     DEPTNO JOB             RANK
---------- ---------- ---------- ---------- --------- ----------
      7521 WARD             1250         30 SALESMAN           3
      7654 MARTIN           1250         30 SALESMAN           3

13개 행이 선택되었습니다. 