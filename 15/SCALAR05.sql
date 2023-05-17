--step1

--with_test1 테이블 생성후 500만건 데이터 입력
CREATE TABLE with_test1
(
    no NUMBER,
    name VARCHAR2(20),
    pay NUMBER(6)
)
TABLESPACE USERS
;

--500만건 데이터 입력
BEGIN
    DBMS_RANDOM.SEED(0);
    FOR i IN 1..5000000 LOOP
    INSERT INTO with_test1
    VALUES (i,
            DBMS_RANDOM.STRING('A', 7),
            DBMS_RANDOM.VALUE (1, 999999)
    );
    END LOOP;
    COMMIT;
END;
/

--SELECT * FROM with_test1;
SELECT COUNT(*) FROM with_test1;
