--MAX�Լ��� ����� �ִ밪 ���
--�����ȹ : MAX SORT ����
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

--�� ��� ���ٴ� �Ʒ� SQL�� �ۼ� �ϴ� ���� ������.
SELECT /* + INDEX_DESC(new_emp23 idx_new_emp23_name) */ name
FROM new_emp23
WHERE name >'0'
AND ROWNUM =1
;


