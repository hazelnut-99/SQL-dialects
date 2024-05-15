SELECT d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b,
       c,
       e
  FROM t1
 WHERE b>c
 ORDER BY 1,2,4,3,5;
