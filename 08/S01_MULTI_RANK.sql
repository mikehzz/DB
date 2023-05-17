SELECT  empno,
        ename,
        sal,
        RANK() OVER (ORDER BY sal DESC) sal_rank,
        DENSE_RANK() OVER (ORDER BY sal DESC) sal_dense_rank
        
        
        
        
FROM emp
;
     EMPNO ENAME             SAL   SAL_RANK SAL_DENSE_RANK
---------- ---------- ---------- ---------- --------------
      7839 KING             5000          1              1
      7902 FORD             3000          2              2
      7788 SCOTT            3000          2              2
      7566 JONES            2975          4              3
      7698 BLAKE            2850          5              4
      7782 CLARK            2450          6              5
      7499 ALLEN            1600          7              6
      7844 TURNER           1500          8              7
      7934 MILLER           1300          9              8
      7521 WARD             1250         10              9
      7654 MARTIN           1250         10              9

     EMPNO ENAME             SAL   SAL_RANK SAL_DENSE_RANK
---------- ---------- ---------- ---------- --------------
      7900 JAMES             950         12             10
      7369 SMITH             800         13             11

13개 행이 선택되었습니다.