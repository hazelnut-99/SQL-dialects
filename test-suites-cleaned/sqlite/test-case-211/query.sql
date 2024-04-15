SELECT a-b,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b
  FROM t1
 ORDER BY 1,3,2;
