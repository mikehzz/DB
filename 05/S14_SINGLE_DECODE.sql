--professor ���̺����� ������ �̸��� �а����� ����ϵ�
--�а� ��ȣ�� 101���̸� 'Computer Engineering',102���̸�
--'Multimedia Engineering',103���̸� 'Software Engineering'
--�� �ܿ��� 'ETC'�� ����ϼ���.
SELECT  deptno,
        name,
        DECODE(deptno,101,'Computer Engineering'
                      ,102,'Multimedia Engineering'
                      ,103,'Software Engineering'
                         ,'ETC') "DNAME"

FROM   professor
;
--101	Audie Murphy	Computer Engineering
--101	Angela Bassett	Computer Engineering
--101	Jessica Lange	Computer Engineering
--102	Winona Ryder	Multimedia Engineering
--102	Michelle Pfeiffer	Multimedia Engineering
--102	Whoopi Goldberg	Multimedia Engineering
--103	Emma Thompson	Software Engineering
--103	Julia Roberts	Software Engineering
--103	Sharon Stone	Software Engineering
--201	Meryl Streep	ETC
--201	Susan Sarandon	ETC
--202	Nicole Kidman	ETC
--202	Holly Hunter	ETC
--203	Meg Ryan	ETC