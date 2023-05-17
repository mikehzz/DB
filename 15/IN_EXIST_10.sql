--big 테이블 order_t의 cust_no에 인덱스 생성
-- idx_order_t_01

 CREATE INDEX idx_order_t_01 ON order_t( cust_no ASC);

-- EXISTS 연산자 서브 쿼리로 수행


--1번이라도 주문한 고객수
EXPLAIN PLAN FOR
SELECT COUNT(*)
FROM cust_t t1
WHERE EXISTS (
                SELECT 1 FROM order_t t2 WHERE t1.cust_no = t2.cust_no
);


