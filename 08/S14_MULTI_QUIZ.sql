--emp���̺��� ����Ͽ� �� ����� �޿����� ��ü ���� �޿� �Ѿ׿���
--�� %�� ������ �����ϴ��� ����ϼ���. ��, �޿� ������ ���� ����� ����
--��µǵ��� �ϼ���.

SELECT  deptno,
        ename,
        sal,
        SUM(sal) over() AS "TOTAL_SAL",     -- sal�� ����
        ROUND(sal/SUM(sal) over()*100,2) "%",
        ROUND(RATIO_TO_REPORT(sal) OVER()*100,2) "%R"
        
FROM emp 
ORDER BY 5 desc
;
    DEPTNO ENAME             SAL  TOTAL_SAL          %         %R
---------- ---------- ---------- ---------- ---------- ----------
        10 KING             5000      34525      14.48      14.48
        10 Tiger            3600      34525      10.43      10.43
        20 SCOTT            3000      34525       8.69       8.69
        20 FORD             3000      34525       8.69       8.69
        10 Cat              3000      34525       8.69       8.69
        20 JONES            2975      34525       8.62       8.62
        30 BLAKE            2850      34525       8.25       8.25
        10 CLARK            2450      34525        7.1        7.1
        30 ALLEN            1600      34525       4.63       4.63
        30 TURNER           1500      34525       4.34       4.34
        10 MILLER           1300      34525       3.77       3.77