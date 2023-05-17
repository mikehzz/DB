--전체순위보기
--RANK(조건값) OVER ( ORDER BY 조건값 컬럼명 ASC|DESC)

SELECT  empno, ename, sal,
        RANK() OVER(ORDER BY sal DESC) RANK_DESC,
        RANK() OVER(ORDER BY sal ASC) RANK_ASC 
        
FROM emp
;
--RANK()함수가 여러 컬럼에 사용되는 경우 SELECT 마지막 컬럼 기준으로 정렬
     EMPNO ENAME             SAL  RANK_DESC   RANK_ASC
---------- ---------- ---------- ---------- ----------
      7369 SMITH             800         13          1
      7900 JAMES             950         12          2
      7654 MARTIN           1250         10          3
      7521 WARD             1250         10          3
      7934 MILLER           1300          9          5
      7844 TURNER           1500          8          6
      7499 ALLEN            1600          7          7
      7782 CLARK            2450          6          8
      7698 BLAKE            2850          5          9
      7566 JONES            2975          4         10
      7788 SCOTT            3000          2         11

     EMPNO ENAME             SAL  RANK_DESC   RANK_ASC
---------- ---------- ---------- ---------- ----------
      7902 FORD             3000          2         11
      7839 KING             5000          1         13

13개 행이 선택되었습니다. 