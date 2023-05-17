SELECT  ename,hiredate,sal,
        LEAD(sal,1,0) OVER(ORDER BY hiredate) "LAG"
FROM emp
;
ENAME      HIREDATE        SAL        LAG
---------- -------- ---------- ----------
SMITH      80/12/17        800       1600
ALLEN      81/02/20       1600       1250
WARD       81/02/22       1250       2975
JONES      81/04/02       2975       2850
BLAKE      81/05/01       2850       2450
CLARK      81/06/09       2450       1500
TURNER     81/09/08       1500       1250
MARTIN     81/09/28       1250       5000
KING       81/11/17       5000        950
JAMES      81/12/03        950       3000
FORD       81/12/03       3000       1300

ENAME      HIREDATE        SAL        LAG
---------- -------- ---------- ----------
MILLER     82/01/23       1300       3000
SCOTT      87/04/19       3000          0

13개 행이 선택되었습니다. 