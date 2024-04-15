SELECT a+b*2+c*3+d*4,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       abs(b-c),
       e,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE (e>c OR e<d);
