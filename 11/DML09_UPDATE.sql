-- professor 테이블에서 'Sharon Stone' 교수의 직급과 동일한 
-- 직급을 가진 교수들 중현재 급여가 
-- 250만 원이 안 되는 교수들의 급여를 15% 인상하세요

SELECT position,name,pay
FROM professor
WHERE position = (SELECT position
                  FROM professor
                  WHERE name = 'Sharon Stone'
                  )
AND pay < 250
;
--POSITION                       NAME                        PAY
-------------------------------- -------------------- ----------
--instructor                     Andie Macdowell             220

UPDATE professor
   SET pay = pay*1.15
WHERE  position = (SELECT position
                    FROM professor
                    WHERE name = 'Sharon Stone'
                    )
AND pay < 250
;
