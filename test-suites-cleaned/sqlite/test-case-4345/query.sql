SELECT abs(b-c),
       d,
       d-e,
       c-d,
       e
  FROM t1
 WHERE a>b
 ORDER BY 4,1,5,2;
