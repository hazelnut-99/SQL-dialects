SELECT abs(b-c),
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       d,
       b-c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND (e>a AND e<b)
 ORDER BY 2,1;
