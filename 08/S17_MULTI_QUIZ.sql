--loan 테이블을 사용하여 전체 지점의 대출종목코드, 대출지점,대출일자
--대출건수,대출액을 대출코드와 대출지점별로 누적합계를 구하세요.
SELECT  l_code "대출종목코드",
        l_store "대출지점",
        l_date "대출일자",
        l_qty "대출건수",
        l_total "대출액",
        SUM(l_total) OVER (PARTITION BY l_code,l_store ORDER BY l_date) "누적대출금액"
        

FROM loan
ORDER BY l_code
;