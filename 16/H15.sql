--SELECT  empno, ename,
--        LPAD(ename,LEVEL*5,'*') ename,
--        SYS_CONNECT_BY_PATH(ename,'->') AS "ORDER(LOW->HIGH)"
--FROM  emp
--WHERE CONNECT_BY_ISLEAF = 0  -- 4LEVEL -> 1LEVEL 찾아 올라가서 마지막 레벨 삭제
--START WITH empno= 7369
--CONNECT BY  empno = PRIOR mgr
--;

SELECT  empno, ename,
        LPAD(ename,LEVEL*5,'*') ename,
        SYS_CONNECT_BY_PATH(ename,'->') AS "ORDER(LOW->HIGH)"
FROM  emp
WHERE CONNECT_BY_ISLEAF = 1  -- 4LEVEL -> 1LEVEL 찾아 올라가서 마지막 레벨 삭제
START WITH empno= 7369
CONNECT BY  empno = PRIOR mgr
;
7839	KING	****************KING	->SMITH->FORD->JONES->KING