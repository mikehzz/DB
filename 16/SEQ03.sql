--103 - 110
/*
BEGIN
    FOR i IN 1..8 LOOP
        INSERT INTO s_order VALUES (pcwk_seq.NEXTVAL, 'ALLEN','BANANA',5);
    END LOOP;
    COMMIT;
END;
/
*/

SELECT * FROM s_order;
    ORD_NO ORD_NAME   P_NAME                    P_QTY
---------- ---------- -------------------- ----------
       100 JAMES      apple                         5
       101 FORD       berry                         3
       102 ALLEN      BANANA                        5
       103 ALLEN      BANANA                        5
       104 ALLEN      BANANA                        5
       105 ALLEN      BANANA                        5
       106 ALLEN      BANANA                        5
       107 ALLEN      BANANA                        5
       108 ALLEN      BANANA                        5
       109 ALLEN      BANANA                        5
       
INSERT INTO s_order VALUES (pcwk_seq.NEXTVAL, 'ALLEN', 'BANANA',5);       
