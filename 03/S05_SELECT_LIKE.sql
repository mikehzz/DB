-- sal�� ù ���ڰ� 1�� �����ϴ� ����� empno, ename, deptno
-- ���� like ���
SELECT empno,
        ename,
        deptno,
        sal
FROM emp
WHERE sal LIKE '1%'
;