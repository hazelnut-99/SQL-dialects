SELECT abs(b-c),
       b-c,
       a+b*2+c*3,
       a-b,
       e,
       a+b*2,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR (e>c OR e<d);
