--seq
--title
--contents
--read_cnt
--reg_dt
--reg_id
--mod_dt
--mod_id

MERGE INTO board ta
USING (
    SELECT
            :seq         as seq,     
            :title       as title,   
            :contents    as contents,
            :read_cnt    as read_cnt  
    FROM dual 
)t2
ON (ta.seq = t2.seq)
WHEN MATCHED THEN
 UPDATE SET title = t2.title,
            contents = t2.contents,
            read_cnt = t2.read_cnt
 WHEN NOT MATCHED THEN
 INSERT (ta.SEQ, ta.title, ta.contents, ta.read_cnt)
 VALUES (t2.SEQ, t2.title, t2.contents, t2.read_cnt)
 ;

SELECT * FROM board;

