-- STUDENT ���̺��� JUMIN��ȣ �÷��� �����
-- 1������ 101���� �л����� �̸�, �¾����,
-- ���� �Ϸ��� ����ϱ�

SELECT  
        name,
        jumin,
        SUBSTR(jumin,3,4) as "Birthday",
        SUBSTR(jumin,3,4)-1 as "Birthday-1"
        
FROM student
WHERE deptno1 = 101
;
--James Seo	7510231901813	1023	1022
--Billy Crystal	7601232186327	0123	122
--Richard Dreyfus	7711291186223	1129	1128
--Danny Devito	7808192157498	0819	818