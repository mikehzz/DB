--문자,날짜 데이터:  '조회값' 조회
SELECT empno,
        ename,
        sal
FROM emp
WHERE ename = 'SMITH' --문자는 대소문자를 구분한다.
;