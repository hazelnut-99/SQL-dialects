SELECT a-b,
       b-c,
       d,
       abs(b-c),
       e
  FROM t1
 WHERE (e>a AND e<b);
