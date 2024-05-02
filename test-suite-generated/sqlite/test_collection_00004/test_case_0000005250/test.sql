SELECT a+b*2+c*3
  FROM t1
 WHERE (e>c OR e<d)
    OR b>c
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 1;
