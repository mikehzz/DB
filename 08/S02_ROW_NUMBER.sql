SELECT  empno,
        ename,
        sal,
        RANK() OVER (ORDER BY sal DESC) sal_rank,
        DENSE_RANK() OVER (ORDER BY sal DESC) sal_dense_rank,
        ROW_NUMBER() OVER (ORDER BY sal DESC) sal_row_num
        
        
        
FROM emp
;
     EMPNO ENAME             SAL   SAL_RANK SAL_DENSE_RANK SAL_ROW_NUM
---------- ---------- ---------- ---------- -------------- -----------
      7839 KING             5000          1              1           1
      7902 FORD             3000          2              2           2
      7788 SCOTT            3000          2              2           3
      7566 JONES            2975          4              3           4
      7698 BLAKE            2850          5              4           5
      7782 CLARK            2450          6              5           6
      7499 ALLEN            1600          7              6           7
      7844 TURNER           1500          8              7           8
      7934 MILLER           1300          9              8           9
      7521 WARD             1250         10              9          10
      7654 MARTIN           1250         10              9          11

     EMPNO ENAME             SAL   SAL_RANK SAL_DENSE_RANK SAL_ROW_NUM
---------- ---------- ---------- ---------- -------------- -----------
      7900 JAMES             950         12             10          12
      7369 SMITH             800         13             11          13

13개 행이 선택되었습니다. 