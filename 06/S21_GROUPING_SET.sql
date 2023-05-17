SELECT grade,deptno1,COUNT(*) CNT
FROM student
GROUP BY GROUPING SETS(
        (grade, deptno1),
        ()
    )
;
     GRADE    DEPTNO1        CNT
---------- ---------- ----------
         1        101          1
         1        102          1
         1        103          1
         1        201          2
         2        101          1
         2        102          1
         2        201          2
         2        301          1
         3        101          1
         3        102          1
         3        201          1

     GRADE    DEPTNO1        CNT
---------- ---------- ----------
         3        202          1
         3        301          1
         4        101          1
         4        102          1
         4        103          1
         4        201          1
         4        202          1
                              20

19개 행이 선택되었습니다. 