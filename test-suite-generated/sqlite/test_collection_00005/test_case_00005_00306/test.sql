SELECT a,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       abs(b-c),
       c-d
  FROM t1
 WHERE a>b;
