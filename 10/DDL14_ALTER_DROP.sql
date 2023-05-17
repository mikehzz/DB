--1. static_table
--CREATE TABLE static_table (no NUMBER);

--2. 데이터 1000건 입력
--    BEGIN
--        FOR i IN 1..1000 LOOP
--        
--            INSERT INTO static_table VALUES(i);
--        
--        END LOOP;
--        
--        COMMIT;
--    END;
--    /
--3. 데이터 입력건수 확인
--SELECT COUNT(1) FROM static_table;

--4. Dictionary 확인
-- SELECT num_rows, blocks
-- FROM user_tables
-- WHERE table_name = 'STATIC_TABLE'
-- ;

--5. 딕셔너리를 관리자가 수동으로 업데이트

ANALYZE TABLE STATIC_TABLE COMPUTE STATISTICS;

--6. Dictionary 확인
-- SELECT num_rows, blocks
-- FROM user_tables
-- WHERE table_name = 'STATIC_TABLE'
-- ;

