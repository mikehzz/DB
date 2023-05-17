--MAX함수를 사용해 최대값 출력
--실행계획 : MAX SORT 실행
EXPLAIN PLAN FOR
SELECT MAX(name) FROM new_emp23;

--col PLAN_TABLE_OUTPUT format a150											
--SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY());

SELECT MAX(name) FROM new_emp23;

MAX(NAME)
------------------
--SMITH
--HINT : /*+ INDEX_DESC */

SELECT /* + INDEX_DESC(new_emp23 idx_new_emp23_name) */ name
FROM new_emp23
WHERE name >'0'
AND ROWNUM =1
;

--위 방법 보다는 아래 SQL로 작성 하는 것을 권장함.
SELECT /* + INDEX_DESC(new_emp23 idx_new_emp23_name) */ name
FROM new_emp23
WHERE name >'0'
AND ROWNUM =1
;


