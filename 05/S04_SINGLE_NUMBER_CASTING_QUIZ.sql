--emp ���̺��� ��ȸ�Ͽ� comm���� ������ �ִ� ������� empno
--ename,hiredate, �� ����. 15% �λ� �� ������ ����ϼ���.

SELECT  empno,
        ename,
        TO_CHAR(hiredate, 'YYYY-MM-DD') "hiredate",
        TO_CHAR((sal*12)+comm, '$999,999') "sal",
        TO_CHAR((sal*12)*1.15, '$999,999') "15% UP"
        
FROM emp

WHERE NOT comm is null 
;
--7499	ALLEN	1981-02-20	  $19,500	  $22,080
--7521	WARD	1981-02-22	  $15,500	  $17,250
--7654	MARTIN	1981-09-28	  $16,400	  $17,250
--7844	TURNER	1981-09-08	  $18,000	  $20,700