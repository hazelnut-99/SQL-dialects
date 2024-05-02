SELECT a,
       c
  FROM t1
 WHERE d>e
    OR b>c
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 1,2;
