SELECT deptno,
        name,
        DECODE(deptno, 101,DECODE(name,'Audie Murphy','BEST!','GOOD!'),'N/A') "DNAME"
FROM professor
;
--101	Audie Murphy	BEST!
--101	Angela Bassett	GOOD!
--101	Jessica Lange	GOOD!
--102	Winona Ryder	N/A
--102	Michelle Pfeiffer	N/A
--102	Whoopi Goldberg	N/A
--103	Emma Thompson	N/A
--103	Julia Roberts	N/A
--103	Sharon Stone	N/A
--201	Meryl Streep	N/A
--201	Susan Sarandon	N/A
--202	Nicole Kidman	N/A
--202	Holly Hunter	N/A
--203	Meg Ryan	N/A
--301	Andie Macdowell	N/A
--301	Jodie Foster	N/A