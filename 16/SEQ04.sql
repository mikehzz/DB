--값이 감소하는 시퀀스 생성하기

--CREATE SEQUENCE pcwk_seq_rev
--INCREMENT BY -2
--MINVALUE 0
--MAXVALUE 20
--START WITH 10;

--테이블 pcwk_req1
--CREATE TABLE pcwk_req1 ( no NUMBER);
INSERT INTO pcwk_req1 VALUES (pcwk_seq_rev.NEXTVAL);
SELECT * FROM pcwk_req1;

--명령의 11 행에서 시작하는 중 오류 발생 -
--INSERT INTO pcwk_req1 VALUES (pcwk_seq_rev.NEXTVAL)
--오류 보고 -
--ORA-08004: 시퀀스 PCWK_SEQ_REV.NEXTVAL goes below MINVALUE은 사례로 될 수 없습니다




