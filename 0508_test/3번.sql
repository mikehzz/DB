--[����3]
SELECT TT1.seq,       --SELECT ���� �Լ� ���.
       TT1.title,
       DECODE(TT1.DIV,10,'10:�����Խ���',20,'20:��������')DIV,
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
        --�˻�����
        ORDER BY seq
    )T1
    WHERE ROWNUM <=20
)TT1
WHERE rnum >=10
;