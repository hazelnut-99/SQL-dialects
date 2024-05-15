SELECT abs(b-c),
       b,
       e
  FROM t1
 WHERE a>b
 ORDER BY 1,3,2;
