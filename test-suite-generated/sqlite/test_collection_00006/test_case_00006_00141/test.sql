SELECT a+b*2+c*3+d*4+e*5,
       b-c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE a>b
 ORDER BY 3,1,2;
