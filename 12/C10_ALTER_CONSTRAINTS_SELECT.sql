SELECT  owner,
        CONSTRAINT_name,
        table_name,
        column_name
FROM user_cons_columns
WHERE table_name = UPPER('emp') --���̺� �̸��� �빮��
;




