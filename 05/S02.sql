SELECT  sal,
        TO_CHAR(sal, '$999,999') "sal_$",   
        TO_CHAR(sal, 'L999,999') "sal_L",
        TO_CHAR(sal, '00999,999') "sal_00",
        TO_CHAR(sal, '0999,999.00') "sal_0"

FROM emp 
;
--800	     $800	            ��800	 00000,800	 0000,800.00
--1600	   $1,600	          ��1,600	 00001,600	 0001,600.00
--1250	   $1,250	          ��1,250	 00001,250	 0001,250.00
--2975	   $2,975	          ��2,975	 00002,975	 0002,975.00
--1250	   $1,250	          ��1,250	 00001,250	 0001,250.00
--2850	   $2,850	          ��2,850	 00002,850	 0002,850.00
--2450	   $2,450	          ��2,450	 00002,450	 0002,450.00
--3000	   $3,000	          ��3,000	 00003,000	 0003,000.00
--5000	   $5,000	          ��5,000	 00005,000	 0005,000.00
--1500	   $1,500	          ��1,500	 00001,500	 0001,500.00
--950	     $950	            ��950	 00000,950	 0000,950.00
--3000	   $3,000	          ��3,000	 00003,000	 0003,000.00
--1300	   $1,300	          ��1,300	 00001,300	 0001,300.00