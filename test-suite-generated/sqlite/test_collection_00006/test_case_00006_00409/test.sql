SELECT c-d,
       abs(b-c),
       a+b*2
  FROM t1
 WHERE d>e
   AND a>b
 ORDER BY 1,2,3;
