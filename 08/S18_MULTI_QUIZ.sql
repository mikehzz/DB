--professor ���̺��� �� �������� �޿��� ���ϰ� �� ������ �޿�����
--��ü ������ �޿� �հ迡�� �����ϴ� ������ ����ϼ���.

SELECT  deptno,
        name,
        pay,
        SUM(pay) OVER() "TOTAL PAY",
        ROUND(RATIO_TO_REPORT(pay) over()*100,2) "RATIO %"
FROM professor
ORDER BY 5 desc
;