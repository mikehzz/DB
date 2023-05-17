-- student 테이블의 birthday 컬럼을 사용하여 생일이 1월인
-- 학생의 이름과 birthday를 아래 화면과 같이 출력하세요.

SELECT  studno,
        name,
        TO_CHAR(birthday,'YY/MM/DD') AS birthday
FROM student
WHERE TO_CHAR(birthday,'MM') = '01'
;
