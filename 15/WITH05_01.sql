--STEP 2. MIN/MAX �Լ��� ����Ͽ� �ִ񰪰� �ּҰ��� ���̸� ���ϰ� 
--�ð����� with_test1

--SELECT MAX(pay) - MIN(pay)
--FROM with_test1
--;
--MAX(PAY)-MIN(PAY)
-------------------
--           999998

--STEP 2. PAY INDEX ����, MIN/MAX �Լ��� ����Ͽ� �ִ밪�� 
--�ּҰ��� ���̸� ���ϰ� �ð�����

--CREATE INDEX IDX_WITHTEST1_PAY ON with_test1(pay);

--SELECT MAX(pay) - MIN(pay)
--FROM with_test1
--WHERE pay >0
--;

STEP 3. WITH���� ����Ͽ� ������ �۾� ����

WITH a AS (
 /* �ִ밪 */
 SELECT /*+ INDEX_DESC(with_test1) */ MAX(pay) pay
 FROM with_test1
 WHERE pay > 0
 AND rownum = 1
),
b as (
 /* �ּҰ� */
 SELECT /*+ INDEX(with_test1 idx_withtest1_pay) */ MIN(pay) pay
 FROM with_test1
 WHERE pay > 0
 AND rownum = 1
)
SELECT a.pay - b.pay
FROM a,b
;





