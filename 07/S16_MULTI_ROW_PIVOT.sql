--SELECT ROWNUM, ename
--FROM emp
--ORDER BY ename
--;
--Ư�� �������� ���� Ȯ���ϱ�
SELECT RANK('SMITH') WITHIN GROUP (ORDER BY ename) "RANK"
FROM emp
;
      RANK
----------
        11