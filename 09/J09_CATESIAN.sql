--EQUI JOIN
--oracle join
--SELECT t1.empno,t1.ename,t2.dname
--
--FROM emp t1, dept t2
--WHERE t1.deptno = t2.deptno --조건절에 =
--;

--ANSI JOIN
SELECT t1.empno,t1.ename,t2.dname

FROM emp t1 INNER JOIN dept t2
    ON t1.deptno = t2.deptno --조건절에
;
     EMPNO ENAME      DNAME         
---------- ---------- --------------
      7782 CLARK      ACCOUNTING    
      2000 Cat        ACCOUNTING    
      7934 MILLER     ACCOUNTING    
      1000 Tiger      ACCOUNTING    
      7839 KING       ACCOUNTING    
      7566 JONES      RESEARCH      
      7369 SMITH      RESEARCH      
      7788 SCOTT      RESEARCH      
      7902 FORD       RESEARCH      
      7844 TURNER     SALES         
      7900 JAMES      SALES         
      7499 ALLEN      SALES         
      7521 WARD       SALES         
      7654 MARTIN     SALES         
      7698 BLAKE      SALES         

15개 행이 선택되었습니다. 