--EMP2 ���̺�� Dept2 ���̺��� ��ȸ�Ͽ� 
--������� �̸��� �μ� �̸��� ����ϼ���.

SELECT t1.name, ( SELECT t2.dname
                  FROM dept2 t2
                  WHERE t2.dcode = t1.deptno
                 ) "DNAME"
FROM emp2 t1
;

--��Į�� ���������� ���� ������ ����� ���� �� NULL���� �����ش�.
--�� �Ǹ� RETURN�Ǿ�� �Ѵ�.
--dept2 ���̺��� �����Ͱ� �޸𸮿� �ε� �ɸ�ŭ �۾�� ���ɻ� ���.

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
