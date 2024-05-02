SELECT a+b*2,
       (a+b+c+d+e)/5
  FROM t1
 WHERE b IS NOT NULL
   AND c>d
   AND c BETWEEN b-2 AND d+2;
