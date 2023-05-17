SELECT *
FROM dept
WHERE deptno IN (
                SELECT deptno
                FROM dept
                WHERE deptno = &dno
)
;