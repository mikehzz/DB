SELECT grade,deptno1,COUNT(*) CNT
FROM student
GROUP BY GROUPING SETS(grade, deptno1)
;

     GRADE    DEPTNO1        CNT
---------- ---------- ----------
         1                     5
         2                     5
         4                     5
         3                     5
                  102          4
                  201          6
                  301          2
                  202          2
                  101          4
                  103          2

10개 행이 선택되었습니다.