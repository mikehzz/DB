-- professor ���̺��� 'Sharon Stone' ������ ���ް� ������ 
-- ������ ���� ������ ������ �޿��� 
-- 250�� ���� �� �Ǵ� �������� �޿��� 15% �λ��ϼ���

SELECT position,name,pay
FROM professor
WHERE position = (SELECT position
                  FROM professor
                  WHERE name = 'Sharon Stone'
                  )
AND pay < 250
;
--POSITION                       NAME                        PAY
-------------------------------- -------------------- ----------
--instructor                     Andie Macdowell             220

UPDATE professor
   SET pay = pay*1.15
WHERE  position = (SELECT position
                    FROM professor
                    WHERE name = 'Sharon Stone'
                    )
AND pay < 250
;
