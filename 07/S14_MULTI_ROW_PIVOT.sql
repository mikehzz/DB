--LAG(출력할 컬럼, OFFSET, 기본출력값) OVER(Query_partition구문, ORDER BY 정렬컬럼)
SELECT  ename,hiredate,sal,
        LAG(sal,3,99) OVER(ORDER BY hiredate) "LAG"
FROM emp
;
ENAME      HIREDATE        SAL        LAG
---------- -------- ---------- ----------
SMITH      80/12/17        800         99
ALLEN      81/02/20       1600         99
WARD       81/02/22       1250         99
JONES      81/04/02       2975        800
BLAKE      81/05/01       2850       1600
CLARK      81/06/09       2450       1250
TURNER     81/09/08       1500       2975
MARTIN     81/09/28       1250       2850
KING       81/11/17       5000       2450
JAMES      81/12/03        950       1500
FORD       81/12/03       3000       1250

ENAME      HIREDATE        SAL        LAG
---------- -------- ---------- ----------
MILLER     82/01/23       1300       5000
SCOTT      87/04/19       3000        950

13개 행이 선택되었습니다.