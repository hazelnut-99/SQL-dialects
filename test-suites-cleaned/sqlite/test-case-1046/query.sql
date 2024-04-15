SELECT a+b*2,
       d,
       abs(b-c),
       e
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND d>e;
