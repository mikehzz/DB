--emp테이블에서 deptno가 10번인 사원들의 이름을 총
--9자리로 출력하되 오른쪽 빈자리에는 해당 자릿수에 해당
--되는 숫자가 출력되도록 하세요.

--CLARK6789
--KING56789
--MILLER789

SELECT 
        ename,
        SUBSTR('123456789',LENGTH(ename)+1) "sub_str",
        RPAD(ename,9,SUBSTR('123456789',LENGTH(ename)+1)) AS RPAD
FROM emp
WHERE deptno = 10
;