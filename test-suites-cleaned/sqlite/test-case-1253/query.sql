SELECT a,
       a+b*2+c*3,
       d-e
  FROM t1
 WHERE d>e
   AND b IS NOT NULL;
