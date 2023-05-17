CREATE TABLE s_order (
    ord_no NUMBER(4),
    ord_name VARCHAR2(10),
    p_name VARCHAR2(20),
    p_qty NUMBER(5)

);

pcwk_seq

INSERT INTO s_order VALUES(pcwk_seq.NEXTVAL, 'JAMES','apple',5);

SELECT * FROM s_order;
SELECT pcwk_seq.CURRVAL FROM dual;

INSERT INTO s_order VALUES (pcwk_seq.NEXTVAL,'FORD','berry',3);

100	JAMES	apple	5
101	FORD	berry	3







