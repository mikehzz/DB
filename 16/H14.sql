--Ư�� ���������� �ֻ��� ���� ã���ִ� �Լ�
SELECT  empno, ename,
        CONNECT_BY_ROOT empno "root_empno",
        SYS_CONNECT_BY_PATH(ename,'->') AS ename_list
FROM  emp
WHERE LEVEL > 1
AND   empno = 7369
CONNECT BY  PRIOR empno = mgr
;
7369	SMITH	7902	->FORD->SMITH
7369	SMITH	7566	->JONES->FORD->SMITH
7369	SMITH	7839	->KING->JONES->FORD->SMITH