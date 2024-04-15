SELECT b,
       a-b
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND a>b
   AND d>e;
