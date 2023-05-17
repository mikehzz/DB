CREATE TABLE professor24
AS
SELECT profno,name,pay
FROM professor
WHERE 1=2
;

INSERT INTO professor24
SELECT profno,name,pay
FROM professor
WHERE profno > 4000
;

SELECT * FROM professor24;








