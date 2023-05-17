SELECT  deptno,
        AVG(NVL(sal,0))
FROM emp
WHERE AVG(NVL(sal,0)) > 2000
;
--ORA-00934: 그룹 함수는 허가되지 않습니다
--00934. 00000 -  "group function is not allowed here"
--*Cause:    
--*Action:
--4행, 7열에서 오류 발생