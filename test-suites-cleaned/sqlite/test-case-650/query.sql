SELECT a+b*2,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3,
       a+b*2+c*3+d*4
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 2,4,3,1;
