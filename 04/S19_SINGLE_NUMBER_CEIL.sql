SELECT  ROWNUM, --����ϴ� ������� ��ȣ�� �ޱ��.
               CEIL(ROWNUM/5) AS RNUM,
                ename
        FROM emp
;
--SELECT *
--FROM(
--        SELECT  ROWNUM, --����ϴ� ������� ��ȣ�� �ޱ��.
--               CEIL(ROWNUM/5) AS RNUM,
--                ename
--        FROM emp
--)
--WHERE RNUM=2
--;