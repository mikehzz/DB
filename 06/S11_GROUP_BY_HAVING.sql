SELECT deptno,
        AVG(NVL(sal,0))
FROM emp
WHERE deptno > 10
GROUP BY deptno
HAVING AVG(NVL(sal,0)) > 2000
;

--having���� group by �յڷ� ��� ����!
--GROUP BY������ �ƴ� �Ϲ� ���� WHERE ��� ����!
    DEPTNO AVG(NVL(SAL,0))
---------- ---------------
        20         2443.75

