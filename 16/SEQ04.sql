--���� �����ϴ� ������ �����ϱ�

--CREATE SEQUENCE pcwk_seq_rev
--INCREMENT BY -2
--MINVALUE 0
--MAXVALUE 20
--START WITH 10;

--���̺� pcwk_req1
--CREATE TABLE pcwk_req1 ( no NUMBER);
INSERT INTO pcwk_req1 VALUES (pcwk_seq_rev.NEXTVAL);
SELECT * FROM pcwk_req1;

--����� 11 �࿡�� �����ϴ� �� ���� �߻� -
--INSERT INTO pcwk_req1 VALUES (pcwk_seq_rev.NEXTVAL)
--���� ���� -
--ORA-08004: ������ PCWK_SEQ_REV.NEXTVAL goes below MINVALUE�� ��ʷ� �� �� �����ϴ�




