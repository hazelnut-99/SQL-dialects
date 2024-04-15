SELECT d,
       (a+b+c+d+e)/5,
       a+b*2+c*3,
       a+b*2+c*3+d*4+e*5,
       d-e,
       c
  FROM t1
 WHERE d>e
    OR (e>a AND e<b)
    OR (e>c OR e<d)
 ORDER BY 2,3,1,4,5,6;
