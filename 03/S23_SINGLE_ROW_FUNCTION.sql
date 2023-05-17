--LOWER() : 모두다 소문자
--UPPER() : 모두다 대문자
--INITCAP() : 글자에 대문자
SELECT  ename,
        LOWER(ename) lower_name,
        INITCAP(ename) initcap_name,
        UPPER(ename) upper_name
FROM emp
;