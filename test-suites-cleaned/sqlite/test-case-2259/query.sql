SELECT a,
       abs(b-c),
       a-b,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b-c
  FROM t1
 WHERE a>b
    OR (e>a AND e<b)
 ORDER BY 2,4,5,3;
