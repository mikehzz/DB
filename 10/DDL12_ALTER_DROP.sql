1. dept9 테이블 ctas로 생성
CREATE TABLE dept9
AS
SELECT * FROM dept2
;

--2. 생성 확인
SELECT * FROM dept9;

--3. drop
DROP table dept9;

--4 삭제된 테이블 보기
SELECT  object_name,
        original_name,
        createtime          
FROM recyclebin
;

--5. 복구하기 
FLASHBACK TABLE "BIN$86XcDwVzSHu5UVaL2s+v6w==$0" TO BEFORE DROP;

--6. 복구 확인
SELECT * FROM dept9;


