SELECT d,
       b-c,
       (a+b+c+d+e)/5
  FROM t1
 WHERE d>e
   AND (e>c OR e<d)
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 2,3,1;
