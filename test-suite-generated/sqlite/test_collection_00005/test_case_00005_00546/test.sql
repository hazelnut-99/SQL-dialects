SELECT a+b*2,
       a-b
  FROM t1
 WHERE a>b
   AND d>e
   AND (a>b-2 AND a<b+2);
