--professor ���̺��� ��ȸ�Ͽ� 201�� �а��� �ٹ��ϴ� ��������
--�̸���, �޿�, ���ʽ�, ������ ����ϼ���.

SELECT name,
        pay,
        bonus,
        TO_CHAR((sal*12)+comm, '999,999') "annual_sal"
        

FROM professor
WHERE deptno = 201
;
