SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2
  FROM t1
 WHERE (e>c OR e<d)
    OR (e>a AND e<b)
 ORDER BY 1,2;
