SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       abs(b-c),
       abs(a)
  FROM t1
 WHERE (e>c OR e<d)
   AND d>e
   AND c BETWEEN b-2 AND d+2
 ORDER BY 3,1,2;
