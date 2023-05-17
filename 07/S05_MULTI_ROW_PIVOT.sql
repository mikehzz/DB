SELECT * FROM (SELECT h_year, h_month FROM tb_pivot)
PIVOT(
    MIN(h_month) FOR h_month IN ( 1 AS M1
                                 ,2 AS M2
                                 ,3 AS M3
                                 ,4 AS M4
                                 ,5 AS M5
                                 ,6 AS M6
                                 ,7 AS M7
                                 ,8 AS M8
                                 ,9 AS M9
                                 ,10 AS M10
                                 ,11 AS M11
                                 ,12 AS M12
                                )

);
H_YE         M1         M2         M3         M4         M5         M6         M7         M8         M9        M10        M11        M12
---- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
2023          1          2          3          4          5          6          7          8          9         10         11         12