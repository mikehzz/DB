--시퀀스 삭제
--DROP SEQUENCE pcwk_seq;

SELECT  sequence_name,
        MIN_VALUE,
        MAX_VALUE,
        INCREMENT_BY,
        CYCLE_FLAG,
        ORDER_FLAG,
        cache_size,
        last_number
FROM user_sequences
WHERE sequence_name = UPPER('pcwk_seq');

