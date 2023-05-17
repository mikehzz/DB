--emp���̺��� ��ȸ�Ͽ� �� �������� �޿��� �ش� �μ� �հ�ݾ׿��� �� %��
--������ �����ϴ����� ����ϼ���. ��, �μ� ��ȣ�� �������� ������������
--����ϼ���.

SELECT  deptno,
        ename,
        sal,
        sum(sal) over(PARTITION BY deptno ORDER BY deptno) "SUM_DEPT",
        ROUND(sal/sum(sal) over(PARTITION BY deptno ORDER BY deptno)*100,2) "%",
        ROUND(RATIO_TO_REPORT(sal) over(PARTITION BY deptno)*100,2) "%R"
        
FROM emp
;
    DEPTNO ENAME             SAL   SUM_DEPT          %         %R
---------- ---------- ---------- ---------- ---------- ----------
        10 CLARK            2450      15350      15.96      15.96
        10 Cat              3000      15350      19.54      19.54
        10 MILLER           1300      15350       8.47       8.47
        10 Tiger            3600      15350      23.45      23.45
        10 KING             5000      15350      32.57      32.57
        20 JONES            2975       9775      30.43      30.43
        20 SMITH             800       9775       8.18       8.18
        20 SCOTT            3000       9775      30.69      30.69
        20 FORD             3000       9775      30.69      30.69
        30 TURNER           1500       9400      15.96      15.96
        30 JAMES             950       9400      10.11      10.11