SELECT abs(b-c),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b,
       a
  FROM t1
 WHERE b>c
   AND d>e
 ORDER BY 4,1,3,2;
