SELECT a+b*2
  FROM t1
 WHERE c>d
    OR e+d BETWEEN a+b-10 AND c+130
    OR (c<=d-2 OR c>=d+2)
 ORDER BY 1;
