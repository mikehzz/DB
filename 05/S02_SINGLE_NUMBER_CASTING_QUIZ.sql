--professor ���̺��� ��ȸ�Ͽ� 201�� �а��� �ٹ��ϴ� ��������
--�̸���, �޿�, ���ʽ�, ������ ����ϼ���.

SELECT name,
        pay,
        bonus,
        TO_CHAR((pay*12)+bonus, '999,999') "ALL"
        

FROM professor
WHERE deptno = 201
;
