--1. static_table
--CREATE TABLE static_table (no NUMBER);

--2. ������ 1000�� �Է�
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
--3. ������ �Է°Ǽ� Ȯ��
--SELECT COUNT(1) FROM static_table;

--4. Dictionary Ȯ��
-- SELECT num_rows, blocks
-- FROM user_tables
-- WHERE table_name = 'STATIC_TABLE'
-- ;

--5. ��ųʸ��� �����ڰ� �������� ������Ʈ

ANALYZE TABLE STATIC_TABLE COMPUTE STATISTICS;

--6. Dictionary Ȯ��
-- SELECT num_rows, blocks
-- FROM user_tables
-- WHERE table_name = 'STATIC_TABLE'
-- ;

