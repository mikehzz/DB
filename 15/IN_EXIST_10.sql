--big ���̺� order_t�� cust_no�� �ε��� ����
-- idx_order_t_01

 CREATE INDEX idx_order_t_01 ON order_t( cust_no ASC);

-- EXISTS ������ ���� ������ ����


--1���̶� �ֹ��� ����
EXPLAIN PLAN FOR
SELECT COUNT(*)
FROM cust_t t1
WHERE EXISTS (
                SELECT 1 FROM order_t t2 WHERE t1.cust_no = t2.cust_no
);


