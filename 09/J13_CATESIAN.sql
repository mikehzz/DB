--oracle
SELECT t1.gname, 
       TO_CHAR(t1.point, '999,999') POINT,
       t2.gname GIFT_NAME
FROM customer t1, gift t2
WHERE t1.point BETWEEN t2.g_start AND t2.g_end
;
--ansi
SELECT t1.gname, 
       TO_CHAR(t1.point, '999,999') POINT,
       t2.gname GIFT_NAME
FROM customer t1 JOIN gift t2
ON t1.point >= t2.g_start 
    AND t1.point <= t2.g_end
;

GNAME                          POINT    GIFT_NAME                     
------------------------------ -------- ------------------------------
Bill Pullman                     65,000 Tuna Set                      
Mel Gibson                       73,000 Tuna Set                      
Michael Douglas                  99,000 Tuna Set                      
Brad Pitt                       110,000 Shampoo Set                   
Samuel Jackson                  153,000 Shampoo Set                   
Liam Neeson                     180,000 Shampoo Set                   
Arnold Scharz                   265,000 Car wash Set                  
Ahnjihye                        273,000 Car wash Set                  
Tom Hanks                       298,000 Car wash Set                  
Jim Carrey                      315,000 Kitchen Supplies Set          
Bruce Willis                    320,000 Kitchen Supplies Set          
Angela Bassett                  420,000 Mountain bike                 
Robin Williams                  470,000 Mountain bike                 
Morgan Freeman                  542,000 LCD Monitor                   
Jessica Lange                   598,000 LCD Monitor                   
Winona Ryder                    625,000 Notebook                      
Michelle Pfeiffer               670,000 Notebook                      
James Seo                       980,000 Refrigerator