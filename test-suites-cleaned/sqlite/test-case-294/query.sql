SELECT c-d,
       a-b,
       b,
       b-c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c,
       a+b*2
  FROM t1
 ORDER BY 1,5,4,3,2,6,7;
