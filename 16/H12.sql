
SELECT  empno, ename, job,mgr,
        PRIOR ename AS mgr_name,
        level,
        LPAD(' ',(LEVEL-1)*2, ' ') || ename as depth_name,
        SYS_CONNECT_BY_PATH(ename,'->') AS ename_list
FROM emp
START WITH mgr IS NULL --KING
CONNECT BY  PRIOR empno = mgr
            AND   ename <> 'JONES'
ORDER SIBLINGS BY empno
;