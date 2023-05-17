--student 테이블을 조회하여 전체 학생 중에서 체중이 2학년 학생들의
--체중에서 가장 적게 나가는 학생보다 몸무게가 적은 학생의 이름과
--학년과 몸무게를 출력하세요.

SELECT  name,
        grade,
        weight
FROM student
WHERE weight <ALL (SELECT weight
FROM student
WHERE grade = 2
);

