--카티션 곱을 사용하여 부서번호 10번인 집합 5세트 생성
SELECT *
FROM (
    SELECT empno, ename, job,sal
    FROM emp
    where deptno = 10
),(
    SELECT level
    FROM dual
    CONNECT BY level <= 5
)
;
     EMPNO ENAME      JOB              SAL      LEVEL
---------- ---------- --------- ---------- ----------
      7782 CLARK      MANAGER         2450          1
      7839 KING       PRESIDENT       5000          1
      7934 MILLER     CLERK           1300          1
      1000 Tiger                      3600          1
      2000 Cat                        3000          1
      7782 CLARK      MANAGER         2450          2
      7839 KING       PRESIDENT       5000          2
      7934 MILLER     CLERK           1300          2
      1000 Tiger                      3600          2
      2000 Cat                        3000          2
      7782 CLARK      MANAGER         2450          3

     EMPNO ENAME      JOB              SAL      LEVEL
---------- ---------- --------- ---------- ----------
      7839 KING       PRESIDENT       5000          3
      7934 MILLER     CLERK           1300          3
      1000 Tiger                      3600          3
      2000 Cat                        3000          3
      7782 CLARK      MANAGER         2450          4
      7839 KING       PRESIDENT       5000          4
      7934 MILLER     CLERK           1300          4
      1000 Tiger                      3600          4
      2000 Cat                        3000          4
      7782 CLARK      MANAGER         2450          5
      7839 KING       PRESIDENT       5000          5

     EMPNO ENAME      JOB              SAL      LEVEL
---------- ---------- --------- ---------- ----------
      7934 MILLER     CLERK           1300          5
      1000 Tiger                      3600          5
      2000 Cat                        3000          5

25개 행이 선택되었습니다.