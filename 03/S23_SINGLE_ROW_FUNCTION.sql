--LOWER() : ��δ� �ҹ���
--UPPER() : ��δ� �빮��
--INITCAP() : ���ڿ� �빮��
SELECT  ename,
        LOWER(ename) lower_name,
        INITCAP(ename) initcap_name,
        UPPER(ename) upper_name
FROM emp
;