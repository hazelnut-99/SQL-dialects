SELECT a2 FROM t2
   WHERE b2 in (628,170,357,527,784,279,932,811,820)
      OR (e2=554 AND 925=c2 AND a2=564 AND d2=152 AND 139=b2)
INTERSECT
  SELECT b8 FROM t8
   WHERE NOT ((327=a8 OR d8=608))
UNION ALL
  SELECT b4 FROM t4
   WHERE (d4=983 AND 447=a4)
UNION ALL
  SELECT a9 FROM t9
   WHERE b9 in (912,832,855,251,103,900)
EXCEPT
  SELECT e3 FROM t3
   WHERE NOT (e3 in (254,833,550,876,975,155,235,108,272,602,83,821,651,466)
           OR (b3=434 OR c3=792 OR 899=a3))
EXCEPT
  SELECT d7 FROM t7
   WHERE NOT (c7 in (145,672,12,954,375))
UNION
  SELECT c6 FROM t6
   WHERE c6 in (122,146,452,677)
EXCEPT
  SELECT b5 FROM t5
   WHERE NOT ((343=d5 AND 897=b5 AND 589=e5)
           OR (e5=150 AND c5=941 AND 326=b5 AND a5=615))
UNION
  SELECT e1 FROM t1
   WHERE d1 in (643,294,432,35,38,799,701,416,666,990)
      OR (c1=979 OR 943=e1 OR 328=e1);
