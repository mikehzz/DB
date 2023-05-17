--Emp2 ���̺�� p_grade ���̺��� ��ȸ�Ͽ� ������� �̸��� ����,����
--����, ���� ������ ����ϼ���. ���� ������ ���̷� ����ϸ� ���̰� ��
--�ƾ� �ϴ� ������ �ǹ��Ѵ�. ���̴� ����(sysdate)�� �������� �ϵ�
--trunc�� �Ҽ��� ���ϴ� �����ؼ� ����ϼ���.

SELECT  t1.name,
        TRUNC(MONTHS_BETWEEN('2023/04/25', t1.birthday)/12) "AGE",
        t1.position "CURR_POSITION",
        t2.position "BE POSITION"    
FROM emp2 t1 , p_grade t2

WHERE TRUNC(MONTHS_BETWEEN('2023/04/25', t1.birthday)/12) >= t2.s_age(+)
AND TRUNC(MONTHS_BETWEEN('2023/04/25', t1.birthday)/12) <= t2.e_age(+)
;


