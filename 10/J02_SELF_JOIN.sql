--emp 테이블에서 사원번호, 사원이름, 입사일, 자신보다 먼저 입사한
--사람 인원수를 출력하세요. 단, 자신보다 입사일이 빠른 사람수를 오름
--차순으로 출력하세요(ORACLE JOIN 구문과 ANSI JOIN 구문으로 각각
--SQL을 작성하세요.)

--oracle
SELECT *
FROM(
    SELECT  t1.empno,
            t1.ename,
            t1.hiredate,
            COUNT(t2.hiredate)
    FROM emp t1, emp t2
    WHERE t1.hiredate > t2.hiredate
    GROUP BY t1.empno, t1.ename, t1.hiredate
    ORDER BY 4
)
WHERE hiredate IS NOT NULL
;
     EMPNO ENAME      HIREDATE COUNT(T2.HIREDATE)
---------- ---------- -------- ------------------
      7499 ALLEN      81/02/20                  1
      7521 WARD       81/02/22                  2
      7566 JONES      81/04/02                  3
      7698 BLAKE      81/05/01                  4
      7782 CLARK      81/06/09                  5
      7844 TURNER     81/09/08                  6
      7654 MARTIN     81/09/28                  7
      7839 KING       81/11/17                  8
      7902 FORD       81/12/03                  9
      7900 JAMES      81/12/03                  9
      7934 MILLER     82/01/23                 11
      7788 SCOTT      87/04/19                 12