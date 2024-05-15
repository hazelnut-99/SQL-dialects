SELECT a-b,
       c-d,
       b
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 3,1,2;
