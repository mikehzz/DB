--���� emp���̺� �Ʒ� �� ���� �����͸� �Է��� �� �۾��ϼ���.
--emp���̺��� ����� �μ����� ���޺��� �޿� �հ� ����� ����ϼ���.

--INSERT INTO emp(empno,deptno,ename,sal) values (1000,10,'Tiger',3600);
--INSERT INTO emp(empno,deptno,ename,sal) values (2000,10,'Cat',3000);
--
--commit;
--
--
SELECT  deptno,
        SUM(DECODE(job,'CLERK',sal,0)) "CLERK",
        SUM(DECODE(job,'MANAGER',sal,0)) "MANAGER",
        SUM(DECODE(job,'PRESIDENT',sal,0)) "PRESIDENT",
        SUM(DECODE(job,'ANALYST',sal,0)) "ANALYST",
        SUM(DECODE(job,'SALESMAN',sal,0)) "SALEMAN",
        SUM(sal) "TOTAL"
FROM emp
GROUP BY ROLLUP(deptno)
;
    DEPTNO      CLERK    MANAGER  PRESIDENT    ANALYST    SALEMAN      TOTAL
---------- ---------- ---------- ---------- ---------- ---------- ----------
        10       1300       2450       5000          0          0      15350
        20        800       2975          0       6000          0       9775
        30        950       2850          0          0       5600       9400
                 3050       8275       5000       6000       5600      34525
