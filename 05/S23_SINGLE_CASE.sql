--emp테이블에서 comm이 null인 경우 해당없음
--comm이 0인 경우 수당없음
--comm이 0보다 큰 경우 수당 출력
--출력은 empno,ename,comm,"comm_text"

SELECT  empno,
        ename,
        comm,
        CASE WHEN comm is null THEN '해당없음'
             WHEN comm = 0  THEN '수당없음'
             WHEN comm > 0  THEN '수당 : ' || comm
        
        END "comm_text"

FROM emp
;