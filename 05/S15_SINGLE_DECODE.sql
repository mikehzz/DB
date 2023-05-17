SELECT
    deptno,
    name,
    decode(deptno,
           101,
           decode(name, 'Audie Murphy', 'BEST!')) "DNAME"
FROM
    professor;
--101	Audie Murphy	BEST!
--101	Angela Bassett	
--101	Jessica Lange	
--102	Winona Ryder	
--102	Michelle Pfeiffer	
--102	Whoopi Goldberg	
--103	Emma Thompson	
--103	Julia Roberts	
--103	Sharon Stone	
--201	Meryl Streep	
--201	Susan Sarandon	
--202	Nicole Kidman	
--202	Holly Hunter	
--203	Meg Ryan	
--301	Andie Macdowell	
--301	Jodie Foster	