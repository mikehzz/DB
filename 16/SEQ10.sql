SELECT LPAD(ename, LEVEL*4, '*') "ename", level
FROM emp
CONNECT BY empno = PRIOR mgr --PRIOR�� �پ� �ִ� �÷����� ���� ������ ���� ã�µ� ��� : KING mgr�� �����Ƿ� king�� ��ȸ
START WITH empno = 7839 --king
;