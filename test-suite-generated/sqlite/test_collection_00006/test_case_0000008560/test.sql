SELECT a+b*2+c*3,
       d-e,
       a-b
  FROM t1
 WHERE (e>a AND e<b)
    OR d>e
    OR (e>c OR e<d)
 ORDER BY 2,3,1;
