SELECT t3.no,t3.name,(  
                        SELECT dname,deptno
                        FROM t4
                        WHERE t4.deptno = t3.deptno
                      )dname
FROM t3
;
ORA-00913: 값의 수가 너무 많습니다

--스칼라 서브 쿼리는 일반적으로 데이터의 종류나 양이 적은 코드 성격의
--테이블에 적은 수의 데이터를 가져와야 할 경우 join 대신사용하면 성능
--이 좋아지지만, 그런 상황이 아닐 경우는 join보다 성능이 저하 될 수 있다.
