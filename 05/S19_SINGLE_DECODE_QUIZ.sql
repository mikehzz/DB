--student ���̺��� 1 ������ 101���� �л��� �̸��� ����ó
--�� ������ ����ϼ���.
--������ȣ�� 02�� "SEOUL", 031�� "GYEONGGI", 051�� "BUSAN"
--052�� 'ULSAN",055�� "GYEONGNAM"�Դϴ�.

SELECT  name,
        tel,
        DECODE(SUBSTR(tel,1,INSTR(tel,')')-1)
                                            ,02,'SEOUL'
                                            ,031,'GYEONGGI'
                                            ,051,'BUSAN'
                                            ,052,'ULSAN'
                                            ,055,'GYEONGNAM') "LOC"
FROM student
WHERE deptno1 = 101
;
--James Seo	055)381-2158	055	GYEONGNAM
--Billy Crystal	055)333-6328	055	GYEONGNAM
--Richard Dreyfus	02)6788-4861	02	SEOUL
--Danny Devito	055)278-3649	055	GYEONGNAM