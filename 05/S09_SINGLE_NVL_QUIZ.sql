--professor ���̺��� 201�� �а� �������� �̸��� �޿�
--bonus, �� ������ ����ϼ���.
--��, �� ������ (pay*12+bonus)�� ����ϰ� bonus�� ����
--������ 0���� ����ϼ���.

SELECT  profno,
        name,
        pay,
        NVL(bonus,0),
        TO_CHAR((pay*12)+NVL(bonus,0),'999,999') "TOTAL"
        
FROM professor
WHERE deptno = 201
;
--4001	Meryl Streep	570	130	   6,970
--4002	Susan Sarandon	330	0	   3,960