SELECT c
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND (e>a AND e<b)
   AND (a>b-2 AND a<b+2);
