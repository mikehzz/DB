--BOARD CRUD
INSERT INTO board (
    seq,
    title,
    contents,
    read_cnt,
    reg_id,
    mod_id
) VALUES (
    :v0,
    :v1,
    :v2,
    :v3,
    :v4,
    :v5
);

SELECT * FROM board;

--삭제
DELETE FROM board
WHERE seq = :v0;


--단건조회
SELECT
    seq,
    title,
    contents,
    read_cnt,
    req_dt,
    reg_id,
    mod_dt,
    mod_id
FROM board
WHERE seq = :SEQ
;



UPDATE board
SET
     title = :v1,
     contents = :v2,
     read_cnt = :v3,
     req_dt = :v4,
     reg_id = :v5,
     mod_dt = SYSDATE,
     mod_id = :v7
WHERE seq = :v0
;

commit;


--목록조회
SELECT  TT1.rnum as NO,
        TT1.title,
        TT1.MOD_ID,
        TT1.READ_CNT,
        TO_CHAR(TT1.MOD_DT,'YY.MM.DD') MOD_DT
        
FROM(
SELECT ROWNUM rnum,T1.*
FROM (
    SELECT *
    FROM board
    --검색조건
    ORDER BY mod_dt DESC
)T1
WHERE ROWNUM <= 10
)TT1
WHERE rnum >= 1

--조회 count 증가
UPDATE board
SET read_cnt = NVL(read_cnt,0) + 1
WHERE seq = :v0
;

SELECT *
FROM board;
WHERE seq = 22
;

c