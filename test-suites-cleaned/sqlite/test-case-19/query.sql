SELECT a,
       a+b*2+c*3+d*4+e*5,
       c-d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b-c,
       a+b*2
  FROM t1
 ORDER BY 6,2,4,5,3,1;
