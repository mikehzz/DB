--customer ���̺�� gift ���̺��� Join�Ͽ� ���� �ڱ� ����Ʈ����
--���� ����Ʈ�� ��ǰ �� �� ������ ������ �� �ִٰ� �� ��
--Notebook�� ������ �� �ִ� ����� ����Ʈ, ��ǰ���� ����ϼ���.

SELECT  t1.gname,
        t1.point,
        t2.gname
FROM customer t1, gift t2
WHERE t1.point >= t2.g_start
AND t2.gname = 'Notebook'
;