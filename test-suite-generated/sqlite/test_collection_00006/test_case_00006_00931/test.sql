SELECT a+b*2+c*3,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       d-e,
       c,
       abs(a)
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 4,1,3,5,2;
