SELECT d-e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2,
       d,
       a
  FROM t1
 ORDER BY 5,1;
