SELECT LPAD(ename, LEVEL*4, '*') "ename", level
FROM emp
CONNECT BY PRIOR empno = mgr
START WITH empno = 7839 --king
;

KING	1
***JONES	2
*******SCOTT	3
********FORD	3
***********SMITH	4
***BLAKE	2
*******ALLEN	3
********WARD	3
******MARTIN	3
******TURNER	3
*******JAMES	3
***CLARK	2
******MILLER	3

