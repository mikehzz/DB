--부모 테이블의 컬럼은 PK, UK가 설정되어 있어야 한다.
--(name 컬럼은 pk, uk 없음.)
--NEW_EMP2 테이블의 name컬럼이 EMP2 테이블의 name 컬럼의 값을						
--참조하도록 참조키 제약 조건을 설정(NEW_EMP2가 자식 테이블)						
--ALTER TABLE new_emp2
--ADD CONSTRAINT fk_emp2_name FOREIGN KEY(name)
--REFERENCES emp2(name);
--3행에 오류:
--ORA-02270: 이 열목록에 대해 일치하는 고유 또는 기본 키가 없습니다.
--emp2테이블의 name을 unique 제약 조건 추가
--ALTER TABLE emp2
--ADD CONSTRAINT uk_emp2_name UNIQUE(name);
--emp2테이블의 name unique 제약 조건 추가 이후 생성
ALTER TABLE new_emp2
ADD CONSTRAINT fk_emp2_name FOREIGN KEY(name)
REFERENCES emp2(name);



