--EMP2 테이블과 Dept2 테이블을 조회하여 
--사원들의 이름과 부서 이름을 출력하세요.

SELECT t1.name, ( SELECT t2.dname
                  FROM dept2 t2
                  WHERE t2.dcode = t1.deptno
                 ) "DNAME"
FROM emp2 t1
;

--스칼라 서브쿼리는 서브 쿼리의 결과가 없을 때 NULL값을 돌려준다.
--한 건만 RETURN되어야 한다.
--dept2 테이블의 데이터가 메모리에 로드 될만큼 작어야 성능상 우수.

NAME                           DNAME                         
------------------------------ ------------------------------
Kurt Russell                   President                     
AL Pacino                      Management Support Team       
Woody Harrelson                Management Support Team       
Tommy Lee Jones                Financial Management Team     
Gene Hackman                   General affairs               
Kevin Bacon                    Engineering division          
Hugh Grant                     H/W Support Team              
Keanu Reeves                   S/W Support Team              
Val Kilmer                     Business Department           
Chris O'Donnell                Business Planning Team        
Jack Nicholson                 Sales1 Team                   
Denzel Washington              Sales2 Team                   
Richard Gere                   Sales3 Team                   
Kevin Costner                  Sales4 Team                   
JohnTravolta                   Sales1 Team                   
Robert De Niro                 Sales2 Team                   
Sly Stallone                   Sales3 Team                   
Tom Cruise                     Sales4 Team                   
Harrison Ford                  H/W Support Team              
Clint Eastwood                 S/W Support Team 
