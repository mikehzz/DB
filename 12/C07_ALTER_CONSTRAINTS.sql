--step1. 연습용 테이블 c_test1, c_test2					
--					
--step2. 두 개의 테이블에 제약 조건을 설정하고 데이터를 입력					
--					
--step3. On delete cascde 테스트를 수행					
--					
--step4. On delete set null 테스트 진행					
--step1
CREATE TABLE c_test1(
 no NUMBER,
 name VARCHAR2(6 BYTE),
 deptno NUMBER
);
--
CREATE TABLE c_test2(
 no NUMBER,
 name VARCHAR2(10 BYTE)
);
--step2. 두 개의 테이블에 제약 조건을 설정하고 데이터를 입력
--c_test1(child) deptno, c_test2(parent) no
--ALTER TABLE c_test1
--ADD CONSTRAINT fk_ctest1_deptno FOREIGN KEY(deptno)
--REFERENCES c_test2(no);
--3행에 오류:
--ORA-02270: 이 열목록에 대해 일치하는 고유 또는 기본 키가 없습니다.
--> c_test2에 no 컬럼에 unique 조건 추가
--ALTER TABLE c_test2
--ADD CONSTRAINT uk_ctest2_no UNIQUE(no);
--> c_test2에 no 컬럼에 unique 조건 추가이후 fk생성
--ALTER TABLE c_test1
--ADD CONSTRAINT fk_ctest1_deptno FOREIGN KEY(deptno)
--REFERENCES c_test2(no)
--ON DELETE CASCADE;
--c_test2(parent) 데이터 입력
INSERT INTO c_test2 VALUES(10,'AAA');
INSERT INTO c_test2 VALUES(20,'BBB');
INSERT INTO c_test2 VALUES(30,'BBB');

COMMIT;

--입력 데이터 확인
SELECT * FROM c_test2;

--c_test1(child) 데이터 입력 : deptno에는 10,20,30번 데이터
--만 입력 가능

--INSERT INTO c_test1 VALUES(1, 'apple', 99);
--
--INSERT INTO c_test1 VALUES(1, 'apple',10);
--INSERT INTO c_test1 VALUES(2, 'banana',20);
--INSERT INTO c_test1 VALUES(3, 'cherry',30);
--
--commit;

--SELECT * FROM c_test1;

--step3. on delete cascade 테스트를 수행
--> c_test2 테이블에 no=10 데이터를 삭제, 자식쪽에 name apple
--인 데이터 삭제

DELETE FROM c_test2 WHERE no = 10;
--        NO NAME      
------------ ----------
--        10 AAA       
--        20 BBB       
--        30 BBB       

--c_test1 데이터도 같이 삭제
SELECT * FROM c_test1;



