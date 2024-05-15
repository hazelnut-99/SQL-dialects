SELECT e,
       a-b,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b,
       abs(a)
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 2,5,4,1,3;
