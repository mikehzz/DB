--student ���̺��� 1������ 101���� �л����� �̸���
--�ֹι�ȣ�� ����ϵ� �ֹι�ȣ�� �� 7�ڸ��� '-'��
--'/'�� ǥ�õǰ� ����ϼ���.

SELECT  name,
        jumin,
        REPLACE(jumin,SUBSTR(jumin,7,7),'-/-/-/-') AS REPLACE
FROM student
WHERE deptno1 = 101
;