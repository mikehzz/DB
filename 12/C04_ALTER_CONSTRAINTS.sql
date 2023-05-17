--NEW_EMP2 테이블에 loc_code컬럼에 NOT NULL 제약 조건 추가
ALTER TABLE new_emp2
MODIFY(loc_code CONSTRAINT emp2_loccode_nn NOT NULL);


desc new_emp2;