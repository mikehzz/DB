--emp테이블에서 아래와 같이 deptno가 10번인 사원들의
--ename을 10자리로 출력하되 오른쪽 빈자리에는 '-'로
--채우세요.
SELECT  
        ename,
        RPAD(ename, 10,'-') "Rpad"
        
FROM emp
WHERE deptno = 10
;