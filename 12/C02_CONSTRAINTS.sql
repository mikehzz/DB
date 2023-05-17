CREATE TABLE new_emp2(
   no NUMBER(4) PRIMARY KEY,
   name VARCHAR2(20) NOT NULL,
   jumin CHAR(13) NOT NULL UNIQUE,
   loc_code NUMBER(1) CHECK(loc_code <5),
   deptno VARCHAR2(6) REFERENCES dept2(dcode)
);
