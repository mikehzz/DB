--emp테이블을 사용해 deptno가 10번인 사원들의
--사원이름을 총 9바이트로 출력하되 빈자리에는 해당 자리의
--숫자로 채우세요.
SELECT  
        LPAD(ename, 9,'123456789') "LPAD"
        
FROM emp
WHERE deptno = 10
;