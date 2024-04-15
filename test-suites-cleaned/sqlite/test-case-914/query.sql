SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c-d,
       e
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 2,3,1;
