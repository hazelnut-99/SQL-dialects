SELECT a-b
  FROM t1
 WHERE (e>c OR e<d)
   AND d NOT BETWEEN 110 AND 150
   AND a>b;
