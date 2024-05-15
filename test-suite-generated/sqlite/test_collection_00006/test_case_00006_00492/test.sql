SELECT a+b*2+c*3
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR e+d BETWEEN a+b-10 AND c+130
    OR (e>c OR e<d)
 ORDER BY 1;
