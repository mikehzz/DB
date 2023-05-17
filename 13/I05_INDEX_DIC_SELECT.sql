--SELECT  TABLE_NAME,
--        COLUMN_NAME,
--        index_name
--FROM user_ind_columns
--WHERE table_name = UPPER('emp')
--;

--EMP	JOB	IDX_EMP_JOB_SAL
--EMP	SYS_NC00009$	IDX_EMP_JOB_SAL
--EMP	EMPNO	PK_EMP

SELECT  table_name,
        index_name
FROM user_indexes
WHERE table_name  = Upper('dept2')
;
--DEPT2	SYS_C007322
--DEPT2	IDX_DEPT2_DNAME
--DEPT2	IDX_DEPT2_AREA


