SELECT  grade,
        COUNT(*)        
FROM student
GROUP BY grade

UNION ALL

SELECT deptno1,COUNT(*)
FROM student
GROUP BY deptno1
;

     GRADE   COUNT(*)
---------- ----------
         1          5
         2          5
         4          5
         3          5
       101          4
       103          2
       202          2
       301          2
       201          6
       102          4

10�� ���� ���õǾ����ϴ�. 