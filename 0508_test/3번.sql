--[문항3]
SELECT TT1.seq,       --SELECT 문에 함수 사용.
       TT1.title,
       DECODE(TT1.DIV,10,'10:자유게시판',20,'20:공지사항')DIV,
       TT1.read_cnt,
       TO_CHAR(TT1.reg_dt,'YYYYMMDD') REG_DT,
       TT1.reg_id,
       TO_CHAR(TT1.mod_dt,'YYYYMMDD HH:MM:SS' ) MOD_DT,
       TT1.mod_id
FROM (
    SELECT ROWNUM rnum,T1.*
    FROM (
        SELECT *
        FROM board_99
        --검색조건
        ORDER BY seq
    )T1
    WHERE ROWNUM <=20
)TT1
WHERE rnum >=10
;