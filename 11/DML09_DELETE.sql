--DEPT2 테이블에서 부서번호(DCODE)가 9000~9999번 사이인 정보를 삭제 하세요.

--SELECT *
--FROM dept2
--WHERE dcode BETWEEN 9000 AND 9999
--;
--
--DELETE FROM dept2
--WHERE dcode BETWEEN 9000 AND 9999
--;
--
--SELECT *
--FROM dept2
--WHERE dcode BETWEEN 9000 AND 9999

--delete문은 데이터를 삭제한다고 알고 있지만 
--사실 데이터는 삭제되지 않고, 해당 블록에 그대로 남아 있으며 특별한
--룰(BBED 등)을 이용하면 DELETE된 데이터도
--전부 복구할 수 있다.
--그래서 DELETE후 테이블의 크기를 확인해 보면 크기가 줄지 않고
--그대로 입니다.


