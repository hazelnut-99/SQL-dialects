SELECT b,
       abs(b-c),
       d
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND (e>a AND e<b);
