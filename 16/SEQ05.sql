--desc user_sequences;
--이름            널?       유형            
--------------- -------- ------------- 
--SEQUENCE_NAME NOT NULL VARCHAR2(128) 
--MIN_VALUE              NUMBER        
--MAX_VALUE              NUMBER        
--INCREMENT_BY  NOT NULL NUMBER        
--CYCLE_FLAG             VARCHAR2(1)   
--ORDER_FLAG             VARCHAR2(1)   
--CACHE_SIZE    NOT NULL NUMBER        
--LAST_NUMBER   NOT NULL NUMBER        
--SCALE_FLAG             VARCHAR2(1)   
--EXTEND_FLAG            VARCHAR2(1)   
--SESSION_FLAG           VARCHAR2(1)   
--KEEP_VALUE             VARCHAR2(1)

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

--SEQUENCE수정
--START_WITH는 변경 불가
ALTER SEQUENCE pcwk_seq
MAXVALUE 200
cache 20
;




