--CREATE  TABLE vt01(
--    col1 NUMBER,
--    col2 NUMBER,
--    col3 NUMBER generated always as (col1+col2)
--);

--STEP 2. ���̺� ������ �Է�(�����÷��� ���� ������ �Է� �ȵ�!)

--INSERT INTO vt01 VALUES (1,2,3);

--1�࿡ ����
--ORA-54013: INSERT

--INSERT INTO vt01(col1,col2) VALUES(12,14);

--SELECT * FROM vt01;

--UPDATE vt01
--set col1 = 17;
--
--SELECT * FROM vt01;


