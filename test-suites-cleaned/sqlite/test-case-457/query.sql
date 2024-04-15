SELECT a+b*2+c*3+d*4+e*5,
       c
  FROM t1
 WHERE d>e
    OR (e>c OR e<d)
 ORDER BY 2,1;
