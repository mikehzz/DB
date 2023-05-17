--SEQUENCE 명    PCWK_SQL
--시작번호         100
--끝 번호          110
--증가 값          1
--반복될 때 다시 시작되는 값 90 
--캐싱은 2개씩 되도록

CREATE SEQUENCE pcwk_seq
INCREMENT BY 1
START WITH 100
MAXVALUE 110
MINVALUE 90
CYCLE
CACHE 2
;

