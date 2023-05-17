--professor 테이블에서 학과번호와 교수명, 학과명을 출력하되
--deptno가 101번

SELECT  deptno,
        name,
        DECODE(deptno, 101, 'Computer Enginnering') "DNA"

FROM professor
;
--101	Audie Murphy	Computer Enginnering
--101	Angela Bassett	Computer Enginnering
--101	Jessica Lange	Computer Enginnering
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