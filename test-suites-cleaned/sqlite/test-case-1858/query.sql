SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND (e>c OR e<d);
