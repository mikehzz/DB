SELECT  name,
        jumin,
        DECODE(SUBSTR(jumin,7,1),1,'MAN'
                                ,2,'WOMAN'
                                ,3,'MAN'
                                ,4,'WOMAN'
                                  ) AS "Gender"
FROM student
WHERE deptno1 = 101
;
SELECT deptno,
        name,
        DECODE(deptno, 101,DECODE(name,'Audie Murphy','BEST!','GOOD!'),'N/A') "DNAME"
FROM professor
;
--James Seo	7510231901813	MAN
--Billy Crystal	7601232186327	WOMAN
--Richard Dreyfus	7711291186223	MAN
--Danny Devito	7808192157498	WOMAN