SELECT b,
       abs(b-c),
       d
  FROM t1
 WHERE (e>a AND e<b)
   AND d NOT BETWEEN 110 AND 150;
