SELECT  deptno,
        AVG(NVL(sal,0))
FROM emp
WHERE AVG(NVL(sal,0)) > 2000
;
--ORA-00934: �׷� �Լ��� �㰡���� �ʽ��ϴ�
--00934. 00000 -  "group function is not allowed here"
--*Cause:    
--*Action:
--4��, 7������ ���� �߻�