--step4. on delete set null 테스트 진행

--fk는 수정 없음: drop하고 새로 생성해야 함.

--DROP : fk_ctest1_deptno
ALTER TABLE c_test1
DROP CONSTRAINT fk_ctest1_deptno;

--fk 새로 생성 on delete set null
--ALTER TABLE c_test1
--ADD CONSTRAINT fk_ctest1_deptno FOREIGN KEY(deptno)
--REFERENCES c_test2("NO")
--ON DELETE SET NULL;

--c_test1, c_test2

SELECT * FROM c_test1;
SELECT * FROM c_test2;

--c_test1에 deptno=20 컬럼의 데이터가 null로 변경됨
--DELETE FROM c_test2 WHERE no = 20;

SELECT * FROM c_test1;
DELETE FROM c_test1 WHERE deptno = 20;


