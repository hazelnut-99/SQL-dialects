SELECT e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       (a+b+c+d+e)/5,
       d,
       d-e
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR d NOT BETWEEN 110 AND 150
    OR (e>c OR e<d)
 ORDER BY 5,4,2,3,1;
