-- professor ���̺��� ��ȸ�Ͽ� �а���ȣ, ������, �޿�, �а��� �޿�
--�հ踦 ���ϰ� �� ������ �޿��� �ش� �а��� �޿� �հ迡�� �����ϴ�
-- ������ ����ϼ���.

SELECT  profno,
        name,
        pay,
        SUM(pay) OVER(PARTITION BY deptno) "total_deptno",
        ROUND(RATIO_TO_REPORT(pay) OVER(PARTITION BY deptno)*100,2) "ratio(%)"

FROM professor
;
    PROFNO NAME                        PAY total_deptno   ratio(%)
---------- -------------------- ---------- ------------ ----------
      1001 Audie Murphy                550         1200      45.83
      1002 Angela Bassett              380         1200      31.67
      1003 Jessica Lange               270         1200       22.5
      2001 Winona Ryder                250         1090      22.94
      2002 Michelle Pfeiffer           350         1090      32.11
      2003 Whoopi Goldberg             490         1090      44.95
      3001 Emma Thompson               530         1150      46.09
      3002 Julia Roberts               330         1150       28.7
      3003 Sharon Stone                290         1150      25.22
      4001 Meryl Streep                570          900      63.33
      4002 Susan Sarandon              330          900      36.67
