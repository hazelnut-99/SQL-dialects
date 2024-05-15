SELECT a+b*2+c*3+d*4,
       e,
       abs(b-c),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c-d
  FROM t1
 WHERE c>d;
