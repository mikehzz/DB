--step 1. 테스트용 테이블 i_test를 생성하고 데이터를 넣은 후 인덱스를 생성.
--step 2. 인덱스 상태 조회
--step 3. 테스트용 테이블 i_test에서 일부 데이터 삭제 후 인덱스 조회
--step 4. Rebuild 작업 수행

-- STEP 1
CREATE TABLE i_test(
	no NUMBER
);
-- 테이블이 생성되었습니다.
 STEP 2
BEGIN
	FOR i IN 1..100000 LOOP
		INSERT INTO i_test VALUES (i);
	END LOOP;
	COMMIT;
END;
/
-- PL/SQL 처리가 정상적으로 완료되었습니다.

------------
--    100000
--1.2 i_test 입력 데이터 확인
SELECT COUNT(*) FROM i_test;
1.3. idx_itest_no
CREATE INDEX idx_itest_no
ON i_test ( no );

--step 2
--인덱스 통계정보 최신화
ANALYZE INDEX idx_itest_no VALIDATE STRUCTURE;

SELECT (DEL_LF_ROWS_LEN/LF_ROWS_LEN)*100 BLANCE
FROM INDEX_stats
WHERE NAME = UPPER('idx_itest_no');

--step 3.
DELETE FROM i_test
WHERE NO BETWEEN 1 and 40000
;
--40000 행이 삭제되었습니다.

SELECT COUNT(*) FROM i_test;
--100000

SELECT (del_lf_rows_len/lf_rows_len) * 100 BLANCE
FROM index_stats
WHERE NAME = UPPER('idx_itest_no');
--0


--인덱스 통계정보 최신화
ANALYZE INDEX idx_itest_no VALIDATE STRUCTURE;

SELECT (del_lf_rows_len/lf_rows_len) * 100 BLANCE
FROM index_stats
WHERE NAME = UPPER('idx_itest_no');

--step 4. REbuild작업 수행
ALTER INDEX idx_itest_no REBUILD;

--인덱스 통계정보 최신화
ANALYZE INDEX idx_itest_no VALIDATE STRUCTURE;

SELECT (del_lf_rows_len/lf_rows_len) * 100 BLANCE
FROM index_stats
WHERE NAME = UPPER('idx_itest_no');






