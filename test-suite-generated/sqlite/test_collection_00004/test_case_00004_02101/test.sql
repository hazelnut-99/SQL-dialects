SELECT a-b
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR (a>b-2 AND a<b+2)
    OR (e>c OR e<d)
 ORDER BY 1;
