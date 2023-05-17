SELECT  owner,
        CONSTRAINT_name,
        table_name,
        column_name
FROM user_cons_columns
WHERE table_name = UPPER('emp') --테이블 이름은 대문자
;




