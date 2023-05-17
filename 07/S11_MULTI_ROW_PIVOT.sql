SELECT * FROM (SELECT  deptno, job FROM emp )
PIVOT (COUNT(job) FOR job IN ('CLERK' AS "CLERK"
                             ,'SALESMAN' AS "SALESMAN"
                             ,'ANALYST' AS "ANALYST"
                             ,'MANAGER' AS "MANAGER"
                             ,'PRESIDENT' AS "PRESIDENT"
                             )
)
ORDER BY 1 --컬럼명을 사용할 수 없음. 컬럼순서로 접근 정렬
;