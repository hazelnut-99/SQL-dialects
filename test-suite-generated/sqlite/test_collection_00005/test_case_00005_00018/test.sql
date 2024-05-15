SELECT a+b*2+c*3,
       a+b*2+c*3+d*4+e*5,
       e,
       a-b,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE c>d;
