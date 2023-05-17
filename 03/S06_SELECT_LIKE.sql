--절대로 %,_를 가장 먼저 사용하면 안된다.
--INDEX있어도 인덱스를 사용하지 않게됨.
SELECT empno,
        ename,
        hiredate
FROM emp
WHERE hiredate LIKE '%20'
;