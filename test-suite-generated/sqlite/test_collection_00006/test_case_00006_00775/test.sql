SELECT a-b,
       c,
       a+b*2+c*3,
       b,
       d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c-d
  FROM t1
 ORDER BY 4,3,5,6,2,1,7;
