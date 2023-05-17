--emp2 ���̺�� p_grade ���̺��� ��ȸ�Ͽ� ���� ������ �ִ� �����
--�̸��� ����, ���� ����, �ش� ������ ������ ���� �ݾװ� ���� �ݾ���
--�Ʒ� ��� ȭ��� ���� ����ϼ���.

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