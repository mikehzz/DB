SELECT  owner,
        constraint_name,
        constraint_type,
        status
FROM user_constraints
WHERE table_name = UPPER('NEW_EMP2')
;

