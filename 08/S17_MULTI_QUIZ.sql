--loan ���̺��� ����Ͽ� ��ü ������ ���������ڵ�, ��������,��������
--����Ǽ�,������� �����ڵ�� ������������ �����հ踦 ���ϼ���.
SELECT  l_code "���������ڵ�",
        l_store "��������",
        l_date "��������",
        l_qty "����Ǽ�",
        l_total "�����",
        SUM(l_total) OVER (PARTITION BY l_code,l_store ORDER BY l_date) "��������ݾ�"
        

FROM loan
ORDER BY l_code
;