SELECT c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3+d*4,
       c-d
  FROM t1
 WHERE (e>c OR e<d)
    OR (e>a AND e<b)
    OR d NOT BETWEEN 110 AND 150;
