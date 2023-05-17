--XMLELEMENT : xml화 시키는 함수            -> 10 <X>, CLARK</X><X>,KING</X><X>
--EXTRACT    : text()를 추출               -> 10, CLARK, KING, MILLER
--SUBSTR(문자열,2): 문자열을 2번째 부터 끝까지 -> 10 CLARK, KING, MILLER
SELECT  deptno,
        SUBSTR(XMLAGG (XMLELEMENT(X, ',',ename) ORDER BY ENAME )
                .EXTRACT ('//text()').getStringVal()
        ,2) AS "X_XML_TAG" 
FROM emp
GROUP BY deptno
;

--    DEPTNO X_XML_TAG                                                                       
------------ --------------------------------------------------------------------------------
--        10 <X>,CLARK</X><X>,KING</X><X>,MILLER</X>                                         
--        20 <X>,FORD</X><X>,JONES</X><X>,SCOTT</X><X>,SMITH</X>                             
--        30 <X>,ALLEN</X><X>,BLAKE</X><X>,JAMES</X><X>,MARTIN</X><X>,TURNER</X><X>,WARD</X> 