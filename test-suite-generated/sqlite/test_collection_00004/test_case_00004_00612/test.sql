SELECT b,
       b-c,
       e,
       c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE c>d;
