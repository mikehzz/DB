CREATE OR REPLACE PROCEDURE res_sequence (sequencename IN VARCHAR2) 
as curr_val INTEGER;
BEGIN
  EXECUTE IMMEDIATE 'alter sequence ' ||sequencename||' MINVALUE 0';
  EXECUTE IMMEDIATE 'SELECT ' ||sequencename ||'.nextval FROM dual' INTO curr_val;
  EXECUTE IMMEDIATE 'alter sequence ' ||sequencename||' increment by -'||curr_val;
  EXECUTE IMMEDIATE 'SELECT ' ||sequencename ||'.nextval FROM dual' INTO curr_val;
  EXECUTE IMMEDIATE 'alter sequence ' ||sequencename||' increment by 1';
END res_sequence;

CREATE SEQUENCE seq_test;
SELECT seq_test.NEXTVAL FROM dual;

SELECT  sequence_name,
        MIN_VALUE,
        MAX_VALUE,
        INCREMENT_BY,
        CYCLE_FLAG,
        ORDER_FLAG,
        cache_size,
        last_number
FROM user_sequences
WHERE sequence_name = UPPER('seq_test');



