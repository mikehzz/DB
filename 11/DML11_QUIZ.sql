-- DEPT2 ���̺� �Ʒ��� ���� �������� ���ο� �μ� ������ �Է��ϼ���.
--�μ���ȣ : 9010
--�μ��� : temp_10
--�����μ� : 1006
--���� : temp_area
SELECT *
FROM dept2;

INSERT INTO dept2 (dcode, dname,pdept,area)
VALUES('9010','temp_10','1006','temp_area')
;
--�μ���ȣ : 9020
--�μ��� : temp_20
--�����μ� : 1006

INSERT INTO dept2 (dcode, dname,pdept)
VALUES('9020','temp_20','1006')
;

INSERT INTO professor24
SELECT profno,name,pay
FROM professor
WHERE profno > 4000
;

SELECT * FROM professor24;

--professor���̺��� profno�� 3000�� ������ �������� profno,
--name,pay�� �����ͼ� professor4 ���̺� �Ѳ����� �Է��ϴ� ����
--�� ������.

CREATE TABLE professor4
AS
SELECT profno,name,pay
FROM professor
WHERE profno <= 3000
;

SELECT *
FROM professor4;

-- professor ���̺��� 'Sharon Stone'������ bonus�� 100������
-- �λ��ϼ���.

UPDATE professor
   SET bonus = 100
WHERE  position = (SELECT position
                    FROM professor
                    WHERE name = 'Sharon Stone'
                    )
;

SELECT * FROM professor
WHERE name = 'Sharon Stone';

SELECT * FROM professor;