SELECT LPAD(ename, LEVEL*4, '*') "ename", level
FROM emp
CONNECT BY empno = PRIOR mgr --PRIOR이 붙어 있는 컬럼에서 이전 데이터 값을 찾는데 사용 : KING mgr은 없으므로 king만 조회
START WITH empno = 7839 --king
;