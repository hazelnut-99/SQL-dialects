SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c,
       a+b*2,
       a+b*2+c*3
  FROM t1
 WHERE (e>c OR e<d);
