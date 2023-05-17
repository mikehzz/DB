SELECT  studno,
        name
FROM student
WHERE deptno1 = 101

UNION 
SELECT 
        studno,
        name
FROM student
WHERE deptno2 = 201
;
--9411	James Seo     Áßº¹ Á¦°ÅµÊ
--9511	Billy Crystal
--9512	Nicholas Cage
--9611	Richard Dreyfus
--9711	Danny Devito