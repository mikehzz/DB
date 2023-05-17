 Dept2 테이블에 아래와 같은 내용으로 새로운 부서 정보를 입력하세요.

부서번호 : 9000
부서명  : temp_1
상위부서 : 1006
지역 : temp area
desc dept2;
INSERT INTO dept2 (dcode, dname,pdept,area)
VALUES('9000','temp_1','1006','temp area')
;

데이터 입력 확인
SELECT * FROM dept2;

컬럼 생략 : 모든 컬럼에 데이터를 입력때
INSERT INTO dept2 
VALUES('9001','temp_2','1006','temp area2');

SELECT * FROM dept2;