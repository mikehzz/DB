--기존 인덱스 제거
--CUST_T 인덱스 생성

--CREATE INDEX idx_order_t_01 ON order_t(cust_no ASC);

--DROP INDEX idx_order_t_01;
--CREATE INDEX idx_cust_t_01 ON cust_t(cust_no ASC);
EXPLAIN PLAN FOR
SELECT /*+ leading(order_t) use_nl(order_t cust_t) */ COUNT(*)
FROM cust_t
WHERE cust_no IN (SELECT cust_no FROM order_t)
;

SELECT * FROM TABLE(dbms_xplan.display);


