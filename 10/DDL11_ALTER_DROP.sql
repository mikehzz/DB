--테이블 삭제 명령어

--DROP TABLE dept7;
--
--SELECT * FROM dept7;

--삭제된 테이블 보기
SELECT  object_name,
        original_name,
        createtime          
FROM recyclebin
;

--삭제된 테이블 복구하기

--FLASHBACK TABLE "BIN$Qc93VrSEQNWBiya5AAGsEQ==$0" TO BEFORE DROP;
SELECT * FROM dept7;

