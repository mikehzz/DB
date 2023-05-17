--student 테이블에서 1전공이 201번인 학과 학생들의 id를
--총 10자리로 출력하되 왼쪽 빈자리는 '*'기호로 채우세요.

SELECT  
        name,
        id,
        LPAD(id, 10,'*') "lpad"
        
FROM student
WHERE deptno1 = 201
;