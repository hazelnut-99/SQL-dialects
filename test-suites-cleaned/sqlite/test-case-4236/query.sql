SELECT d,
       b-c,
       (a+b+c+d+e)/5
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND (e>c OR e<d)
   AND d>e;
