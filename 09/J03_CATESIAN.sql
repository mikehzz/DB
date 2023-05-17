--정상적인 Oracle Join
SELECT t1.name, t2.name
FROM cat_a t1, cat_b t2
WHERE t1.no = t2.no