--POSITION���� ���� �з� �� �� ���� DEPTNO�� ���� ��� ROLLUP

SELECT  deptno,
        position,
        COUNT(*) cnt, 
        sum(pay) pay_sum

FROM professor
GROUP BY position,ROLLUP(deptno)
;