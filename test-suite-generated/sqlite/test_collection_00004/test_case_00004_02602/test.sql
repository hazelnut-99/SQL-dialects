SELECT a-b
  FROM t1
 WHERE (e>c OR e<d)
   AND a>b
   AND d NOT BETWEEN 110 AND 150;
