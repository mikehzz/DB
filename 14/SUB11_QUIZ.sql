--Student 테이블을 조회하여 각 학년별로 최대 몸무게를 가진
--학생들의 학년, 이름, 몸무게를 출력하세요.
SELECT  t1.grade,
        t1.name,
        t1.weight
FROM student t1
WHERE (grade,weight) IN(
                    SELECT  grade,
                            MAX(weight)
                    FROM student
                    GROUP BY grade
)
ORDER BY 1
;
     GRADE NAME                               WEIGHT
---------- ------------------------------ ----------
         1 Charlie Sheen                          81
         2 Wesley Snipes                          82
         3 Bill Murray                            58
         4 Demi Moore                             83