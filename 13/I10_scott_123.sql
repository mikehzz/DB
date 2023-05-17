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
commit;

SELECT  TT1.rnum as NO,     --SELECT 문에 함수 사용.
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
;

SELECT * FROM board
ORDER by 1;


