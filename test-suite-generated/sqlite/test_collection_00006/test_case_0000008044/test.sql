SELECT b,
       e
  FROM t1
 WHERE d>e
    OR (a>b-2 AND a<b+2)
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 2,1;
