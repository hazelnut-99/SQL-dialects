SELECT b,
       d,
       b-c
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 3,1,2;
