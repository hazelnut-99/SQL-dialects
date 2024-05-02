SELECT a+b*2
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND b IS NOT NULL
   AND a>b;
