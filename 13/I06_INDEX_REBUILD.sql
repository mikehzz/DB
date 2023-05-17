--step 1. �׽�Ʈ�� ���̺� i_test�� �����ϰ� �����͸� ���� �� �ε����� ����.
--step 2. �ε��� ���� ��ȸ
--step 3. �׽�Ʈ�� ���̺� i_test���� �Ϻ� ������ ���� �� �ε��� ��ȸ
--step 4. Rebuild �۾� ����

-- STEP 1
CREATE TABLE i_test(
	no NUMBER
);
-- ���̺��� �����Ǿ����ϴ�.
 STEP 2
BEGIN
	FOR i IN 1..100000 LOOP
		INSERT INTO i_test VALUES (i);
	END LOOP;
	COMMIT;
END;
/
-- PL/SQL ó���� ���������� �Ϸ�Ǿ����ϴ�.

------------
--    100000
--1.2 i_test �Է� ������ Ȯ��
SELECT COUNT(*) FROM i_test;
1.3. idx_itest_no
CREATE INDEX idx_itest_no
ON i_test ( no );

--step 2
--�ε��� ������� �ֽ�ȭ
ANALYZE INDEX idx_itest_no VALIDATE STRUCTURE;

SELECT (DEL_LF_ROWS_LEN/LF_ROWS_LEN)*100 BLANCE
FROM INDEX_stats
WHERE NAME = UPPER('idx_itest_no');

--step 3.
DELETE FROM i_test
WHERE NO BETWEEN 1 and 40000
;
--40000 ���� �����Ǿ����ϴ�.

SELECT COUNT(*) FROM i_test;
--100000

SELECT (del_lf_rows_len/lf_rows_len) * 100 BLANCE
FROM index_stats
WHERE NAME = UPPER('idx_itest_no');
--0


--�ε��� ������� �ֽ�ȭ
ANALYZE INDEX idx_itest_no VALIDATE STRUCTURE;

SELECT (del_lf_rows_len/lf_rows_len) * 100 BLANCE
FROM index_stats
WHERE NAME = UPPER('idx_itest_no');

--step 4. REbuild�۾� ����
ALTER INDEX idx_itest_no REBUILD;

--�ε��� ������� �ֽ�ȭ
ANALYZE INDEX idx_itest_no VALIDATE STRUCTURE;

SELECT (del_lf_rows_len/lf_rows_len) * 100 BLANCE
FROM index_stats
WHERE NAME = UPPER('idx_itest_no');






