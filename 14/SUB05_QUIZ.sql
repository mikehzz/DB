SELECT  empno,
        name,
        deptno
FROM emp2
WHERE deptno IN (
                    SELECT dcode
                    FROM dept2
                    WHERE area = 'Pohang Main Office'
)
;
     EMPNO NAME                           DEPTNO
---------- ------------------------------ ------
  19900101 Kurt Russell                   0001  
  19966102 Kevin Bacon                    1003  
  19970112 Val Kilmer                     1006  
  19960212 Chris O'Donnell                1007 
  
  