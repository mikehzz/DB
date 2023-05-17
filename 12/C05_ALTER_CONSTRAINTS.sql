--부모 테이블의 컬럼은 PK, UK가 설정되어 있어야 한다.

ALTER TABLE new_emp2
ADD CONSTRAINT FK_emp2_no FOREIGN KEY(no)
REFERENCES emp2(empno);





