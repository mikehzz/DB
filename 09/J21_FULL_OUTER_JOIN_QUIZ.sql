--professor ���̺��� ������ ��ȣ, ���� �̸�, �Ի���, �ڽź��� 
--�Ի��� ���� ��� �ο����� ����ϼ���. ��, �ڽź��� �Ի����� ���� ���
--���� ������������ ����ϼ���
--ORACLE
SELECT  t1.profno,
        t1.name,
        TO_CHAR(t1.hiredate,'YYYY/MM/DD') hiredate,
        COUNT(t2.hiredate) count
FROM professor t1, professor t2
WHERE t1.hiredate > t2.hiredate(+)
GROUP BY t1.profno, t1.name,t1.hiredate
ORDER BY 3
;

--ANSI
SELECT  t1.profno,
        t1.name,
        TO_CHAR(t1.hiredate,'YYYY/MM/DD') hiredate,
        COUNT(t2.hiredate) count
FROM professor t1 JOIN professor t2
ON t1.hiredate > t2.hiredate(+)
GROUP BY t1.profno, t1.name,t1.hiredate
ORDER BY 3
;
