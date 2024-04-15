SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       abs(a)
  FROM t1
 WHERE c>d
   AND b>c
 ORDER BY 2,1;
