--정상적인 Oracle Join(테이블 3개)
SELECT t1.name, t2.name, t3.name
FROM cat_a t1, cat_b t2, cat_c t3
WHERE t1.no = t2.no
AND t1.no = t3.no
;