SELECT a+b*2+c*3+d*4+e*5,
       c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c-d,
       a+b*2+c*3+d*4
  FROM t1
 WHERE a IS NULL
   AND c>d
   AND (e>a AND e<b);
