--emp2 ���̺��� ��ȸ�Ͽ� ���޺��� �ش� ���޿��� �ִ� ������ �޴� 
--������ �̸��� ����, ������ ����ϼ���. ���� ������ �������� �����ϼ���.
SELECT  name,
        position,
        TO_CHAR(pay,'$999,999,999') "SALARY" 
FROM emp2
WHERE (position,pay) IN (
                            SELECT  position, MAX(pay)
                            FROM emp2
                            GROUP BY position
)
ORDER BY 3
;
NAME                           POSITION                       SALARY       
------------------------------ ------------------------------ -------------
Keanu Reeves                   Deputy Section chief             $35,000,000
Gene Hackman                   Section head                     $56,000,000
Tommy Lee Jones                Deputy department head           $60,000,000
Kevin Bacon                    Department head                  $75,000,000
Kurt Russell                   Boss                            $100,000,000
