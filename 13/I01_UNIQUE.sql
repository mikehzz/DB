--CREATE UNIQUE INDEX 인덱스명  
--ON 테이블 이름(컬럼이름1 ASC|DESC, 컬럼이름2 ASC|DESC)

--CREATE UNIQUE INDEX IDX_DEPT2_DNAME
--ON dept2(dname ASC);

--dname에 중복된 이름을 입력
INSERT INTO dept2 values (9100, 'temp01', 1006, 'Seoul Branch');

INSERT INTO dept2 values (9110, 'temp01', 1006, 'Busan Branch');
--명령의 10 행에서 시작하는 중 오류 발생 -
--ORA-00001: 무결성 제약 조건(SCOTT.IDX_DEPT2_DNAME)에 위배됩니다







