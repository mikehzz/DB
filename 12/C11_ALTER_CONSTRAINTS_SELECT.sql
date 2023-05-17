--fk의 child, parent 정보를 같이 출력

SELECT  a.table_name "child_table",
        c.column_name "child_column",
        a.constraint_name "child_cons_name",
        --parent
        b.table_name "parent_table",
        a.r_constraint_name "parent_cons_name",
        d.column_name "parent_column"
FROM user_constraints a, user_constraints b, user_cons_columns c,
     (SELECT CONSTRAINT_name, column_name, table_name
      FROM user_cons_columns) d
      
WHERE a.r_constraint_name = b.constraint_name
AND   a.constraint_name = c.constraint_name
AND   a.r_constraint_name = d.constraint_name
AND   a.constraint_type = 'R'
;


