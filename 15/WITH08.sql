CREATE TABLE CUST_T
(
    cust_no VARCHAR2(1000),
    cust_nm VARCHAR2(1000)
);

INSERT INTO CUST_T
SELECT  level,
        'PC' || TO_CHAR(LEVEL,'00000')
FROM dual
CONNECT BY level <= 10000
;

COMMIT;

SELECT COUNT(*) FROM cust_t;

CREATE TABLE ORDER_T
(
    ORDER_NO VARCHAR2(4000),
    CUST_NO VARCHAR2(1000),
    ORDER_DT VARCHAR2(8),
    PRODUCT_NM VARCHAR2(4000)
);

 --700¸¸°Ç
INSERT INTO order_t
SELECT level          AS order_no,
       MOD(level,500) AS cust_no,
       TO_CHAR(SYSDATE - MOD(level,30),'YYYYMMDD') AS order_dt,
       DBMS_RANDOM.STRING('A',7) AS product_nm
FROM dual
CONNECT BY level <= 2000000
;
COMMIT;

SELECT COUNT(*) FROM order_t;


