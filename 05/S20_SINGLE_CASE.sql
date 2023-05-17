--student ���̺��� �����Ͽ� deptno1�� 201���� �л��� �̸��� ��ȭ��ȣ
--�������� ����ϼ���. ��, ������ȣ�� 02�� "SEOUL", 031�̸� "GYEONGGI"
--051�̸� "BUSAN",055�̸�"

SELECT name,
        tel,
        CASE SUBSTR(tel,1,INSTR(tel,')')-1) WHEN '02' THEN 'SEOUL'
                                            WHEN '031' THEN 'GYEONGGI'
                                            WHEN '051' THEN 'BUSAN'
                                            WHEN '052' THEN 'ULSAN'
                                            WHEN '053' THEN 'DEAGU'
                                            WHEN '055' THEN 'GYEONGNAM'
                                                       ELSE 'ETC'
        
        END "CASE",
        DECODE(SUBSTR(tel,1,INSTR(tel,')')-1) ,'02','SEOUL'
                                             ,'031','GTEONGGI'
                                             ,'051','BUSAN'
                                             ,'052','ULSAN'
                                             ,'055','GYEONGNAM')"LOC"

FROM student
WHERE deptno1 = 201
;
--Demi Moore	02)6255-9875	SEOUL	SEOUL
--Macaulay Culkin	02)312-9838	SEOUL	SEOUL
--Wesley Snipes	053)736-4981	DEAGU	
--Steve Martin	02)6175-3945	SEOUL	SEOUL
--Sean Connery	02)381-5440	SEOUL	SEOUL
--Christian Slater	031)345-5677	GYEONGGI	GTEONGGI