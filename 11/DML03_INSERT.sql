--��¥ ������ �Է� �ϱ�
--WINDOW/UNIX ��¥������ �����ϴ�.
--OS�� �´� ��¥�������� �Է� �ʿ�.

INSERT INTO professor (profno,name,id,position,pay,hiredate)
VALUES (5001,'James Bond','Love_me','a full professor',500,'2014-10-23');

-- TO_DATE('2014-10-23','YYYY-MM-DD')
SELECT * 
FROM professor
WHERE profno = '5001'
;
