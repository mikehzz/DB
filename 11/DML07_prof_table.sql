CREATE TABLE prof4 (
	prof_no NUMBER,
	name varchar2(25)

);
CREATE TABLE prof5 (
	prof_no NUMBER,
	name varchar2(25)

);

INSERT ALL
WHEN profno BETWEEN 1000 AND 1999 THEN
 INTO prof4 VALUES (profno, name)
WHEN profno BETWEEN 2000 AND 2999 THEN
 INTO prof5 VALUES (profno, name)
SELECT profno, name
FROM professor
;

SELECT * FROM prof4;

SELECT * FROM prof5;







