SELECT abs(b-c),
       (a+b+c+d+e)/5,
       d
  FROM t1
 WHERE (e>a AND e<b)
   AND a IS NULL;
