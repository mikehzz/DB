--emp2 테이블과 p_grade 테이블을 조회하여 현재 직급이 있는 사원의
--이름과 직급, 현재 연봉, 해당 직급의 연봉의 하한 금액과 상한 금액을
--아래 결과 화면과 같이 출력하세요.

SELECT  t1.name,
        t1.position,
        TO_CHAR(t1.pay,'999,999,999') "PAY",
        TO_CHAR(t2.S_PAY,'999,999,999') "Low PAY",
        TO_CHAR(t2.E_PAY,'999,999,999') "HIGH PAY"
FROM emp2 t1 JOIN p_grade t2
ON t1.position = t2.position
;
NAME                           POSITION                       PAY          Low PAY      HIGH PAY    
------------------------------ ------------------------------ ------------ ------------ ------------
AL Pacino                      Department head                  72,000,000   60,010,000   75,000,000
Woody Harrelson                Section head                     50,000,000   45,010,000   51,000,000
Tommy Lee Jones                Deputy department head           60,000,000   51,010,000   60,000,000
Gene Hackman                   Section head                     56,000,000   45,010,000   51,000,000
Kevin Bacon                    Department head                  75,000,000   60,010,000   75,000,000
Hugh Grant                     Section head                     51,000,000   45,010,000   51,000,000
Keanu Reeves                   Deputy Section chief             35,000,000   30,000,000   45,000,000
Val Kilmer                     Department head                  68,000,000   60,010,000   75,000,000
Chris O'Donnell                Section head                     49,000,000   45,010,000   51,000,000