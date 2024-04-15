SELECT e,
       b,
       (a+b+c+d+e)/5
  FROM t1
 WHERE (e>a AND e<b)
    OR b>c;
