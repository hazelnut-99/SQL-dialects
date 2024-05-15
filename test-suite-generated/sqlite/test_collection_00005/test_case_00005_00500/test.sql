SELECT e,
       a+b*2+c*3,
       a+b*2,
       a,
       abs(b-c),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b
  FROM t1
 WHERE b>c;
