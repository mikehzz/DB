--emp 테이블에서 20번 부서에 소속된 직원들의 이름과
--3~4번째 글자만 '-'로 변경하세요.

SELECT  ename,
        REPLACE(ename,SUBSTR(ename,3,2),'--') "REPLACE"
FROM emp
WHERE deptno=20
;